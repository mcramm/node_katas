roman = require("../js/roman").Roman()

describe "Roman Converter", ->
    it "should convert 1 to I", ->
        expect( roman.convert(1) ).toBe("I")
    it "should convert 2 to II", ->
        expect( roman.convert(2) ).toBe("II")
    it "should convert 3 to III", ->
        expect( roman.convert(3) ).toBe("III")
