class Game
    constructor: ->
        @score = 0

    roll: (pins) ->
        @score += pins

    getScore: ->
        @score

exports.Game = ->
    new Game()
