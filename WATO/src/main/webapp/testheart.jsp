<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
<style type="text/css">
.icon {
  position: absolute;
  top: calc(50% - 64px);
  left: calc(50% - 64px);
  width: 128px;
  height: 128px;
  cursor: pointer;
  color: rgba(76, 76, 76, .9);
  transform: scale(1.1);
  transition: all .1s ease-out, color .3s;
  z-index: 5;
  vertical-align: middle;
  text-align: center;
}

.icon:hover {
  color: rgba(76, 76, 76, 1);
  transition: all .1s ease-out;
}

.icon:active {
  transform: scale(0.9);
  transition: all .1s ease-out;
}

.icon i {
  margin-top: 32px;
  font-size: 64px;
  pointer-events: none;
}

.unselectable {
    -webkit-touch-callout: none;
    -webkit-user-select: none;
    -khtml-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    outline: 0;
}
</style>
</head>
<body>
<div class="icon" onclick="iconclickfun(this)" style="left: 0px;"><i class="material-icons unselectable">thumb_up</i></div>
<div class="icon" onclick="iconclickfun(this)"><i class="material-icons unselectable">thumb_up</i></div>
<div class="icon" onclick="iconclickfun(this)" style="position:absolute; right:0px;"><i class="material-icons unselectable">thumb_up</i></div>

<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-9bf952ccbbd13c245169a0a1190323a27ce073a3d304b8c0fdf421ab22794a58.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/mo-js/0.288.2/mo.js'></script>
<script id="rendered-js">
var active = false;   
var interv = null;
$(".icon").click(function () {

  if (active)
  {
    active = false; 
    $('.icon').css("transform", "scale(1.1)").css("color", "rgba(76, 76, 76, .9)");
    $('.icon:hover').css("color", "rgba(76, 76, 76, 1)");
  } else {
    active = true;
    clearTimeout(interv);
    interv = setTimeout(function () {
      if (active == true)
      {
        active = false;
        $('.icon').css("transform", "scale(1.1)").css("color", "rgba(76, 76, 76, .9)");
        $('.icon:hover').css("color", "rgba(76, 76, 76, 1)");
      }
    }, 5000);
    $('.icon:hover').css("color", "#1E88E5");
    $('.icon').css("color", "#1E88E5");
    const RADIUS = 64;
    const circle = new mojs.Shape({
      stroke: { 'transparent': "#1E88E5" },
      strokeWidth: { [1.005 * RADIUS]: 0 },
      fill: 'none',
      scale: { 0: 1, easing: 'quad.out' },
      radius: RADIUS,
      duration: 350 }).
    generate().play();
    const burst = new mojs.Burst({
      className: ".icon",
      count: 10,
      degree: 360,
      radius: { 32: 128 },
      speed: 6,
      angle: 45,
      children: {
        shape: 'line',
        stroke: { '#1E88E5': '#42A5F5' },
        strokeDasharray: '100%',
        strokeDashoffset: { '-100%': '100%' },
        easing: 'quad.out',
        fill: 'null',
        radius: 3,
        scale: { 2: 1 },
        angle: 0,
        speed: 2,
        duration: 650 } }).

    generate().play();
    $('.icon').css("transform", "scale(1.3)");
    audioElement.play();
  }
});

var audioElement = document.createElement('audio');
audioElement.setAttribute('src', 'http://soundbible.com/grab.php?id=2067&type=mp3');
//# sourceURL=pen.js
    </script>
</body>
</html>