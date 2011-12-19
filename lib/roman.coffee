class Roman
    convert: (num) ->
        string = ""
        while num >= 1
            string += "I"
            num -= 1

        return string

exports.Roman = ->
    new Roman
