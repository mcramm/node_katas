CoffeeScript = require 'coffee-script'

{print} = require 'util'
exec = require('child_process').exec
fs = require 'fs'

# ANSI Terminal Colors
green = '\033[0;32m'
reset = '\033[0m'
red = '\033[0;31m'

log = (message, color, explanation) ->
    console.log color + message + reset + ' ' + (explanation or '')

compile = (callback) ->
    coffee = exec "coffee -o js -c lib", (error, stdout, stderr) ->
        if error is null
            log 'compiled!', green
            callback?()
        else
            log error, red

test = ->
    command = 'jasmine-node --coffee spec'

    mocha = exec command, (error, stdout, stderr) ->
        if error is null
            log stdout, green
        else
            log stdout, red

task 'build', 'Compile the coffeescript into javascript', ->
    compile()

task 'test', 'Run the tests', ->
    test()

task 'watch', 'Watch for file changes and compile into javascript', ->
    fs.watch 'spec', (event, filename) ->
        test()
    fs.watch 'lib', (event, filename) ->
        compile test
    compile test
