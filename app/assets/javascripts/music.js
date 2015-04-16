var mixtapePlayer = mixtapePlayer || {};

mixtapePlayer.setup = function(){
  this._currentSound = null;
  $('.play-square').on('click', mixtapePlayer.playSound);
}

mixtapePlayer.playPause = function(){
  event.preventDefault();
  var filename = $(this).data('url');
  if(playPause) {
    var sound = mixtapePlayer.getSound(filename);
    sound.play();
  }
  else {
    sound.pause();
    $('#playbutton').html('&#9654;').data('state', 'paused');
    mixtapePlayer._currentSound = null;
}
}

// myPlayer.pause = function() {
//   
//   $('#playbutton').html('&#9654;').data('state', 'paused');
// }

mixtapePlayer.getSound = function(filename){
  if (!mixtapePlayer._currentSound) {
    mixtapePlayer._currentSound = soundManager.createSound({ 
      id: filename, 
      url: filename, 
      autoPlay: true 
    });
  }
  return mixtapePlayer._currentSound;
}

$(function(){
  mixtapePlayer.setup();
});