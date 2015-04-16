var mixtapePlayer = mixtapePlayer || {};

mixtapePlayer.setup = function(){
  this._currentSound = null;
  $('.play-square').on('click', mixtapePlayer.playSound);
}

mixtapePlayer.playSound = function(){
  event.preventDefault();
  var filename = $(this).data('url');
  var sound = mixtapePlayer.getSound(filename);
  sound.play();
  mixtapePlayer._currentSound = null;
}





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