game = require("../js/game").Game()

addRoll = (num, pins) ->
    game.roll(pins) for x in [0..num-1]

describe "Game", ->
    it "should calculate a score of 0 for a game of all zeros", ->
        addRoll 20, 0
        expect( game.getScore() ).toBe(0)
    it "should calculate correctly for an average game", ->
        addRoll(20, 1)
        expect( game.getScore() ).toBe(20)

