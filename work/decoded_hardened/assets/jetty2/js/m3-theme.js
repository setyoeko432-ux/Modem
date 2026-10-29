/* ==========================================================================
   Material Design 3 Theme Management Utility
   Handles Light, Dark, and System Theme Switching with persistent local preference
   ========================================================================== */

(function () {
  'use strict';

  var THEME_KEY = 'm3_theme_preference';

  function getStoredTheme() {
    try {
      return localStorage.getItem(THEME_KEY) || 'system';
    } catch (e) {
      return 'system';
    }
  }

  function setStoredTheme(theme) {
    try {
      localStorage.setItem(THEME_KEY, theme);
    } catch (e) {
      // Ignore quota/private browsing errors
    }
  }

  function applyTheme(theme) {
    var root = document.documentElement;
    if (theme === 'dark') {
      root.setAttribute('data-theme', 'dark');
    } else if (theme === 'light') {
      root.setAttribute('data-theme', 'light');
    } else {
      root.removeAttribute('data-theme'); // Use system media preference
    }
  }

  function updateThemeToggleUI(theme) {
    var btn = document.getElementById('m3-theme-toggle-btn');
    if (!btn) return;

    var icon = btn.querySelector('.m3-icon');
    if (!icon) return;

    if (theme === 'dark') {
      // Dark mode icon
      icon.innerHTML = '<path d="M12 3a9 9 0 1 0 9 9c0-.46-.04-.92-.1-1.36a5.389 5.389 0 0 1-4.4 2.26 5.403 5.403 0 0 1-5.4-5.4c0-1.81 .89-3.42 2.26-4.4C12.92 3.04 12.46 3 12 3z"/>';
      btn.setAttribute('title', 'Theme: Dark (Click to change)');
    } else if (theme === 'light') {
      // Light mode icon
      icon.innerHTML = '<path d="M12 7c-2.76 0-5 2.24-5 5s2.24 5 5 5 5-2.24 5-5-2.24-5-5-5zM2 13h2c.55 0 1-.45 1-1s-.45-1-1-1H2c-.55 0-1 .45-1 1s.45 1 1 1zm18 0h2c.55 0 1-.45 1-1s-.45-1-1-1h-2c-.55 0-1 .45-1 1s.45 1 1 1zM11 2v2c0 .55.45 1 1 1s1-.45 1-1V2c0-.55-.45-1-1-1s-1 .45-1 1zm0 18v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1zM5.99 4.58a.996.996 0 0 0-1.41 0 .996.996 0 0 0 0 1.41l1.06 1.06c.39.39 1.03.39 1.41 0s.39-1.02 0-1.41L5.99 4.58zm12.37 12.37a.996.996 0 0 0-1.41 0 .996.996 0 0 0 0 1.41l1.06 1.06c.39.39 1.03.39 1.41 0a.996.996 0 0 0 0-1.41l-1.06-1.06zm1.06-10.96a.996.996 0 0 0 0-1.41.996.996 0 0 0-1.41 0l-1.06 1.06c-.39.39-.39 1.03 0 1.41s1.02.39 1.41 0l1.06-1.06zM7.05 18.36a.996.996 0 0 0 0-1.41.996.996 0 0 0-1.41 0l-1.06 1.06c-.39.39-.39 1.03 0 1.41s1.02.39 1.41 0l1.06-1.06z"/>';
      btn.setAttribute('title', 'Theme: Light (Click to change)');
    } else {
      // System mode icon
      icon.innerHTML = '<path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-14v12c3.31 0 6-2.69 6-6s-2.69-6-6-6z"/>';
      btn.setAttribute('title', 'Theme: System (Click to change)');
    }
  }

  // Initial Execution before DOMReady to prevent flash
  var currentTheme = getStoredTheme();
  applyTheme(currentTheme);

  window.M3Theme = {
    getTheme: getStoredTheme,
    setTheme: function (theme) {
      setStoredTheme(theme);
      applyTheme(theme);
      updateThemeToggleUI(theme);
    },
    cycleTheme: function () {
      var active = getStoredTheme();
      var next = 'light';
      if (active === 'system') next = 'light';
      else if (active === 'light') next = 'dark';
      else if (active === 'dark') next = 'system';

      this.setTheme(next);
    },
    initUI: function () {
      updateThemeToggleUI(getStoredTheme());
      var btn = document.getElementById('m3-theme-toggle-btn');
      if (btn) {
        btn.addEventListener('click', function () {
          window.M3Theme.cycleTheme();
        });
      }
    }
  };

  document.addEventListener('DOMContentLoaded', function () {
    window.M3Theme.initUI();
  });
})();
