module.exports =
  files:
    expand: true
    flatten: false
    sourceMap: true
    cwd: 'app/coffee'
    src: ['**/*.coffee']
    dest: 'www/js'
    ext: '.js'
