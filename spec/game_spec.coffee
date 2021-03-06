game = {}
addRolls = (num, pins) ->
    game.roll(pins) for x in [0..num-1]

describe "Game", ->
    beforeEach =>
        game = require("../js/game").Game()

    it "should calculate a score of 0 for a game of all zeros", ->
        addRolls 20, 0
        expect( game.getScore() ).toBe(0)

    it "should calculate correctly for an average game", ->
        addRolls 20, 1
        expect( game.getScore() ).toBe(20)

    it "should calculate correctly with one spare", ->
        game.roll 5
        game.roll 5
        game.roll 3

        addRolls 17, 0

        expect( game.getScore() ).toBe(16)

    it "should calculate correctly with one strike", ->
        game.roll 10
        game.roll 3
        game.roll 4

        addRolls 17, 0

        expect( game.getScore() ).toBe(24)

    it "should calculate a perfect game", ->
        addRolls 12, 10

        expect( game.getScore() ).toBe(300)

