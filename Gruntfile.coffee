module.exports = (grunt) ->
    require('jit-grunt')(grunt)

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json')

        coffee: {
            default: {
                files: {
                    'router.js': [
                        'src/router.coffee'
                    ]
                }
            }
        }

        uglify: {
            dev: {
                options: {
                    mangle: false
                    beautify: true
                    compress: false
                    preserveComments: 'some'
                    banner: '/* AUTOGENERATED DEVELOPMENT CODE */\n'
                }

                files: {
                    'router.js': [
                        'router.js'
                    ]
                }
            }

            dist: {
                options: {
                    mangle: true
                    beautify: false
                    compress: true
                    preserveComments: 'some'
                    banner: '/* AUTOGENERATED PRODUCTION CODE */\n'
                }

                files: {
                    'router.min.js': [
                        'router.js'
                    ]
                }
            }
        }
    })

    grunt.registerTask('default', [
        'coffee'
        'uglify'
    ])
