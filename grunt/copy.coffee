module.exports =
  index:
    expand: true
    cwd: 'app'
    src: [
      'index.html'
    ],
    dest: 'www'
    filter: 'isFile'
  img:
    expand: true
    cwd: 'app'
    src: [
      'icon.png'
      'img/**'
      'res/**/*'
    ],
    dest: 'www'
    filter: 'isFile'
  requirejs:
    src: ['bower_components/requirejs/require.js']
    dest: 'www/js/require.js'
    filter: 'isFile'
