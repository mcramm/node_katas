(function() {
  var Game;
  Game = (function() {
    function Game() {
      this.rolls = [];
    }
    Game.prototype.roll = function(pins) {
      return this.rolls.push(pins);
    };
    Game.prototype.getScore = function() {
      var current_frame, frame, score;
      score = 0;
      current_frame = 0;
      for (frame = 0; frame <= 9; frame++) {
        if (this._isStrike(current_frame)) {
          score += this._strikeBonus(current_frame);
          current_frame += 1;
        } else if (this._isSpare(current_frame)) {
          score += this._spareBonus(current_frame);
          current_frame += 2;
        } else {
          score += this._regularScore(current_frame);
          current_frame += 2;
        }
      }
      return score;
    };
    Game.prototype._isStrike = function(current_frame) {
      return this.rolls[current_frame] === 10;
    };
    Game.prototype._isSpare = function(current_frame) {
      return this.rolls[current_frame] + this.rolls[current_frame + 1] === 10;
    };
    Game.prototype._strikeBonus = function(current_frame) {
      return 10 + this.rolls[current_frame + 1] + this.rolls[current_frame + 2];
    };
    Game.prototype._spareBonus = function(current_frame) {
      return 10 + this.rolls[current_frame + 2];
    };
    Game.prototype._regularScore = function(current_frame) {
      return this.rolls[current_frame] + this.rolls[current_frame + 1];
    };
    return Game;
  })();
  exports.Game = function() {
    return new Game();
  };
}).call(this);
