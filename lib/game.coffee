class Game
    constructor: ->
        @rolls = []

    roll: (pins) ->
        @rolls.push pins

    getScore: ->
        score = 0
        current_frame = 0
        for frame in [0..9]
            if this._isStrike(current_frame)
                score += this._strikeBonus(current_frame)
                current_frame += 1

            else if this._isSpare(current_frame)
                score += this._spareBonus(current_frame)
                current_frame += 2

            else
                score += this._regularScore(current_frame)
                current_frame += 2

        score

    _isStrike: (current_frame) ->
        @rolls[current_frame] is 10

    _isSpare: (current_frame) ->
        @rolls[current_frame] + @rolls[current_frame+1] is 10

    _strikeBonus: (current_frame) ->
        10 + @rolls[current_frame+1] + @rolls[current_frame+2]

    _spareBonus: (current_frame) ->
        10 + @rolls[current_frame+2]

    _regularScore: (current_frame) ->
        @rolls[current_frame] + @rolls[current_frame+1]

exports.Game = ->
    new Game()
