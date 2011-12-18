(function() {
  var Game;
  Game = (function() {
    function Game() {
      this.score = 0;
    }
    Game.prototype.roll = function(pins) {
      return this.score += pins;
    };
    Game.prototype.getScore = function() {
      return this.score;
    };
    return Game;
  })();
  exports.Game = function() {
    return new Game();
  };
}).call(this);
