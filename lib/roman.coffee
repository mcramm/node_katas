class Roman
    constructor: ->
        @ariabic_roman = [
            [5, "V"],
            [4, "IV"],
            [1, "I"]
        ]

    convert: (num) ->
        string = ""
        for numerals in @ariabic_roman
            ariabic = numerals[0]
            roman = numerals[1]
            while num >= ariabic
                string += roman
                num -= ariabic

        return string

exports.Roman = ->
    new Roman
