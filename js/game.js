(function() {
  var Game;
  Game = (function() {
    function Game() {}
    Game.prototype.roll = function(pins) {};
    Game.prototype.score = function() {
      return 0;
    };
    return Game;
  })();
  exports.Game = function() {
    return new Game();
  };
}).call(this);
