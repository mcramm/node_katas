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
    it "should convert 7 to VII", ->
        expect( roman.convert(7) ).toBe("VII")
    it "should convert 8 to VIII", ->
        expect( roman.convert(8) ).toBe("VIII")
    it "should convert 9 to IX", ->
        expect( roman.convert(9) ).toBe("IX")
    it "should convert 10 to X", ->
        expect( roman.convert(10) ).toBe("X")
    it "should convert 11 to XI", ->
        expect( roman.convert(11) ).toBe("XI")
