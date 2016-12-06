function Year(year) {
  this.year = year;
};

Year.prototype.isLeap = function () {
  var year = this.year;
  if (this.year % 4 == 0) {
    if (this.year % 100 == 0 && this.year % 400 != 0) {
      return false;
    } else {
      return true;
    }
  }
  return false;
};

module.exports = Year;
