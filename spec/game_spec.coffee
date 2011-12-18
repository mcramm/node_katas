game = require("../js/game").Game()

addRoll = (num, pins) ->
    game.roll(pins) for x in [0..num]

describe "Game", ->
    it "should calculate a score of 0 for a game of all zeros", ->
        addRoll 20, 0
        expect( game.score() ).toBe(0)
