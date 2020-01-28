<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<title>CodePen - Interactive splat like button</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
body{background: #333;}
.like-container{filter: url('#filter');}
.like-cnt{   
  position: absolute; 
  cursor: pointer;
  left: 50%; 
  top: 150%; 
  transform: translate(-50%, -50%);     background: rgba(255,255,255,0.3);     width: 60px; 
  height: 60px;  
  border-radius: 50%;
  text-align: center;
  line-height: 75px;
  z-index: 10;
}
.like-btn{
  color: #fff;
}

.gp-header{font-family: georgia; font-size: 40px; color: #ddca7e; font-style: italic; text-align: center; margin-top: 31px;}
.gp-footer{position: fixed; color: #fff; bottom: 10px; left: 50%; font-family: georgia; font-style: italic; transform: translateX(-50%);}
.gp-footer .soc_icons{display: inline-block; color: #ddca7e; margin: 0px 0px;}


::-moz-selection { background: transparent;}
::selection {background: transparent;}
</style>
</head>
<body translate="no">
<div class="like-container">
<div class="like-cnt unchecked" id="like-cnt" style="transform: matrix(1, 0, 0, 1, -30, -30); background: rgb(221, 202, 126);">
<i class="like-btn material-icons" style="transform: matrix(1, 0, 0, 1, 0, 0);">thumb_up</i>
</div>
<div data-name="mojs-shape" class="" style="position: absolute; width: 0px; height: 0px; margin-left: 0px; margin-top: 0px; opacity: 1; left: 50%; top: 50%; transform: translate(0px, 0px) rotate(30deg) scale(1, 1); transform-origin: 50% 50%;"><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(1e-06px, -60px) rotate(90deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(24.4042px, -54.8127px) rotate(114deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(44.5887px, -40.1478px) rotate(138deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(57.0634px, -18.541px) rotate(162deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(59.6713px, 6.27171px) rotate(186deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(51.9615px, 30px) rotate(210deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(35.2671px, 48.541px) rotate(234deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(12.4747px, 58.6889px) rotate(258deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-12.4747px, 58.6889px) rotate(282deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-35.2671px, 48.541px) rotate(306deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-51.9615px, 30px) rotate(330deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-59.6713px, 6.27171px) rotate(354deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-57.0634px, -18.541px) rotate(378deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-44.5887px, -40.1478px) rotate(402deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div><div data-name="mojs-shape" class="" style="position: absolute; width: 22px; height: 22px; margin-left: -11px; margin-top: -11px; opacity: 1; left: 50%; top: 50%; transform: translate(-24.4042px, -54.8127px) rotate(426deg) scale(0, 0); transform-origin: 50% 50%;"><svg style="display: block; width: 100%; height: 100%; left: 0px; top: 0px;"><ellipse rx="0" ry="0" cx="11" cy="11" fill-opacity="1" stroke-linecap="" stroke-dashoffset="" fill="#ddca7e" stroke-dasharray="" stroke-opacity="1" stroke-width="2" stroke="transparent"></ellipse></svg></div></div></div>
<div class="gp-footer">
Follow me on :
<a href="facebook.com/gowriprasanthvm" class="soc_icons">facebook</a> /
<a href="https://twitter.com/gowriprasanthvm" class="soc_icons">twitter</a>
</div>


<script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-9bf952ccbbd13c245169a0a1190323a27ce073a3d304b8c0fdf421ab22794a58.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/mojs/latest/mo.min.js"></script><div></div>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/DrawSVGPlugin.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
<script id="rendered-js">
var check_status = false;
var like_cnt = $("#like-cnt");
var like_parent = $(".like-container");

var burst = new mojs.Burst({
  parent: like_parent,
  radius: { 20: 60 },
  count: 15,
  angle: { 0: 30 },
  children: {
    delay: 250,
    duration: 700,
    radius: { 10: 0 },
    fill: ['#ddca7e'],
    easing: mojs.easing.bezier(.08, .69, .39, .97) } });



$("#like-cnt").click(function () {
  var t1 = new TimelineLite();
  var t2 = new TimelineLite();
  if (!check_status) {
    t1.set(like_cnt, { scale: 0 });
    t1.set('.like-btn', { scale: 0 });
    t1.to(like_cnt, 0.6, { scale: 1, background: '#ddca7e', ease: Expo.easeOut });
    t2.to('.like-btn', 0.65, { scale: 1, ease: Elastic.easeOut.config(1, 0.3) }, '+=0.2');
    //    t1.timeScale(5);
    check_status = true;
    //circleShape.replay();
    burst.replay();
  } else
  {
    t1.to(like_cnt, 1, { scale: 1 }).
    to(like_cnt, 1, { scale: 1, background: 'rgba(255,255,255,0.3)', ease: Power4.easeOut });
    t1.timeScale(7);
    check_status = false;
  }

});
//# sourceURL=pen.js
    </script>


</body>
</html>