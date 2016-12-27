exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: {
        "js/app.js": /^(web\/static\/js)|(node_modules)/,
        "js/ex_admin_common.js": ["web/static/vendor/ex_admin_common.js"],
        "js/admin_lte2.js": ["web/static/vendor/admin_lte2.js"],
        "js/jquery.min.js": ["web/static/vendor/jquery.min.js"],
      },
      order: {
        before: [
          "web/static/js/jquery-2.1.4.min.js",
          "web/static/js/isotope.min.js",
          "web/static/js/ytplayer.min.js",
          "web/static/js/owl.carousel.min.js",
          "web/static/js/lightbox.min.js",
          "web/static/js/smooth-scroll.min.js",
          "web/static/js/scrollreveal.min.js",
          "web/static/js/parallax.js",
          "web/static/js/scripts.js"
        ]
      }
    },

    stylesheets: {
      joinTo: {
        "css/app.css": /^(web\/static\/css)/,
        "css/admin_lte2.css": ["web/static/vendor/admin_lte2.css"],
        "css/active_admin.css.css": ["web/static/vendor/active_admin.css.css"]
      },
      order: {
        before: [
          "web/static/css/bootstrap.css",
          "web/static/css/socicon.css",
          "web/static/css/iconsmind.css",
          "web/static/css/interface-icons.css",
          "web/static/css/lightbox.min.css"
        ],
        after: ["web/static/css/theme.css"]
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/web/static/assets". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: /^(web\/static\/assets)/
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: [
      "web/static",
      "test/static"
    ],

    // Where to compile files to
    public: "priv/static"
  },

  // Configure your plugins
  plugins: {
    babel: {
      // Do not use ES6 compiler in vendor code
      ignore: [/web\/static\/vendor/]
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": ["web/static/js/app"]
    }
  },

  npm: {
    enabled: true
  }
};
