(function() {
  var Roman;
  Roman = (function() {
    function Roman() {}
    Roman.prototype.convert = function(num) {
      var string;
      string = "";
      while (num >= 1) {
        string += "I";
        num -= 1;
      }
      return string;
    };
    return Roman;
  })();
  exports.Roman = function() {
    return new Roman;
  };
}).call(this);
