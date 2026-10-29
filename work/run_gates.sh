#!/usr/bin/env bash
# Host gate: compile, unit tests, both E2E suites. Exits non-zero at the first failure.
# usage: work/run_gates.sh [scratchDir]   (needs javac, java, python3 + playwright with chromium)
set -euo pipefail
cd "$(dirname "$0")"
OUT="$(mktemp -d "${1:-/tmp}/gate.XXXXXX")"
SERVER_PID=""
cleanup() { [ -n "$SERVER_PID" ] && kill "$SERVER_PID" 2>/dev/null || true; rm -rf "$OUT"; }
trap cleanup EXIT

javac -nowarn -d "$OUT" $(find security-src security-stubs security-test-stubs security-tests -name '*.java')
for t in SecurityTests GuardFlowTests AuthFlowTests UsageTests; do java -cp "$OUT" "$t"; done

run_e2e() { # script port password
  java -cp "$OUT" HostServer decoded_hardened/assets/jetty2 "$2" "$3" >"$OUT/host.log" 2>&1 &
  SERVER_PID=$!
  for _ in $(seq 1 30); do grep -q READY "$OUT/host.log" 2>/dev/null && break; sleep 0.3; done
  python3 -I "$1" "http://127.0.0.1:$2"
  kill "$SERVER_PID"; wait "$SERVER_PID" 2>/dev/null || true; SERVER_PID=""
}
run_e2e security-tests/e2e_login.py 18110 admin
run_e2e security-tests/e2e_phase2.py 18111 Start-Password-12
echo "ALL GATES PASSED"
