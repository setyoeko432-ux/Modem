package com.mifiservice.config;

public class MifiConfiguration {
    public String loginPassword;

    /** Test hook: host harnesses set this; unit tests leave it null. */
    public static MifiConfiguration instance;

    public static MifiConfiguration getInstance() {
        return instance;
    }
}
