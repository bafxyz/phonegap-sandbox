module.exports =
  options:
    map: true
    processors: [
      require('lost')
      require('postcss-clearfix')
      require('postcss-position')
      require('pixrem')()
      require('autoprefixer-core')(browsers: 'last 2 versions')
      require('cssnano')()
    ]
  dist:
    src: 'www/css/*.css'
