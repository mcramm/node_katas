roman = require("../js/roman").Roman()

describe "Roman Converter", ->
    it "should convert 1 to I", ->
        expect( roman.convert(1) ).toBe("I")
    it "should convert 2 to II", ->
        expect( roman.convert(2) ).toBe("II")
    it "should convert 3 to III", ->
        expect( roman.convert(3) ).toBe("III")
    it "should convert 4 to IV", ->
        expect( roman.convert(4) ).toBe("IV")
    it "should convert 5 to V", ->
        expect( roman.convert(5) ).toBe("V")
    it "should convert 6 to VI", ->
        expect( roman.convert(6) ).toBe("VI")
