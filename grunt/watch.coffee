module.exports =
  gruntfile:
    files: ['Gruntfile.coffee']

  coffee:
    files: [
      'app/coffee/*.coffee'
    ]
    tasks: [
      'coffee'
      'requirejs'
    ]
    options:
      livereload: true
  sass:
    files: [
      'app/sass/**/*.scss'
    ]
    tasks: [
      'sass'
      # 'uncss'
      'postcss'
    ]
    options:
      livereload: true
  index:
    files: [
      'app/index.html'
    ]
    tasks: [
      'copy:index'
    ]
    options:
      livereload: true
