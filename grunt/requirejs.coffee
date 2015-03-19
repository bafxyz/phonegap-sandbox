module.exports =
  browser:
    options:
      name: 'config'
      optimize: 'none'
      baseUrl: 'www/js'
      mainConfigFile: 'www/js/config.js'
      out: 'www/js/main.min.js'
      generateSourceMaps: true
      preserveLicenseComments: false
      useStrict: true
      findNestedDependencies: true
