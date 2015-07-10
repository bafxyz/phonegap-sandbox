module.exports =
  postcss:
    options:
      map: true
      processors: [
        require('pixrem')()
        require('autoprefixer-core')(browsers: 'last 2 versions')
        require('cssnano')()
      ]
    phonegap:
      src: 'www/css/*.css'
