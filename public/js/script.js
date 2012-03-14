/* Author:

*/
var TIMOCO = {
  PROGRESS: {
    meter: function() {
      return $('.meter');
    }
  , caption: function() {
      return this.meter().children('p').children('span');
    }
  , draw: function() {
      this.meter().children('p').before('<span></span>');
      var completed = this.caption().html();
      this.update(completed);
    }
  , update: function(width) {
      this.meter().children('span').animate(
        {
          width: width
        }
      , {
        duration: 3000
      , easing: 'swing'
      , step: function (now, fx) {
        var progress = parseInt(now) + "%";
        TIMOCO.PROGRESS.caption().html(progress);
       }
      });
    }
  }

, init: function() {
    this.PROGRESS.draw();
  }
};

$(function() {
  TIMOCO.init();
  TIMOCO.PROGRESS.update('60%');
  $('.video').fitVids();
});






















