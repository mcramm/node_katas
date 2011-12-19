(function() {
  var Roman;
  Roman = (function() {
    function Roman() {
      this.ariabic_roman = [[5, "V"], [4, "IV"], [1, "I"]];
    }
    Roman.prototype.convert = function(num) {
      var ariabic, numerals, roman, string, _i, _len, _ref;
      string = "";
      _ref = this.ariabic_roman;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        numerals = _ref[_i];
        ariabic = numerals[0];
        roman = numerals[1];
        while (num >= ariabic) {
          string += roman;
          num -= ariabic;
        }
      }
      return string;
    };
    return Roman;
  })();
  exports.Roman = function() {
    return new Roman;
  };
}).call(this);
