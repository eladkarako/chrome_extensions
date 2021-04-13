"use strict";
var screen_lock;

function is_support_passive(){
  var passiveSupported = false; 
  
  try{
  var options = {  get passive(){passiveSupported=true;}  }; //function accessed on newer-browsers with support for 'passive' property.
  self.addEventListener("test", options, options);
  self.removeEventListener("test", options, options);
  }catch(err){passiveSupported=false;}
  
  return passiveSupported;
}

function fullscreen_on(element){
  var f,result;
  element = ("undefined" === typeof element) ? self.document.documentElement : element;
  f = false
      ||element.requestFullscreen
      ||element.msRequestFullscreen
      ||element.mozRequestFullScreen
      ||element.webkitRequestFullscreen;
  if("function" !== typeof f) return;
  result = f.call(element);                 //since the function is disattached we need to supply a 'this' using '.call' :    https://www.reddit.com/r/learnjavascript/comments/6tdsqf/why_does_assigning_any_of_the_requestfullscreen/dljzs9m/

  result.then(function(){     console.log("fullscreen is on, success.");                          })
        .catch(function(err){ console.log("fullscreen is still off due to an error.",err);        })
        ;
}

function fullscreen_off(){
  var f,result;
  var f = false
          ||self.document.exitFullscreen
          ||self.document.msExitFullscreen
          ||self.document.mozCancelFullScreen
          ||self.document.webkitExitFullscreen;
  if("function" !== typeof f) return;
  result = f.call(self.document);        //since the function is disattached we need to supply a 'this' using '.call' :    https://www.reddit.com/r/learnjavascript/comments/6tdsqf/why_does_assigning_any_of_the_requestfullscreen/dljzs9m/

  result.then(function(){     console.log("fullscreen is off, success.");                         })
        .catch(function(err){ console.log("fullscreen is on off due to an error.",err);           })
        ;
}

function is_fullscreen_on(){
  return null !== (false
                  ||document.fullscreenElement
                  ||document.msFullscreenElement
                  ||document.mozFullScreenElement
                  ||document.webkitFullscreenElement
                  ||null);
}

function toggle_fullscreen(){
  if(false === is_fullscreen_on()){
    console.log("is not in fullscreen, turning on.");
    nosleep.enable();
    if("undefined" !== typeof window.navigator.requestWakeLock){ try{ screen_lock = window.navigator.requestWakeLock("screen");}catch(err){} }    //trying to keep screen-ON using: https://developer.mozilla.org/en-US/docs/Archive/B2G_OS/API/Wake_Lock_API
    fullscreen_on(undefined);
  }
  else{
    console.log("is in fullscreen, turning off.");
    nosleep.disable();
    if("undefined" !== typeof window.navigator.requestWakeLock){ try{ screen_lock.unlock(); }catch(err){} }
    fullscreen_off();
  }
}

function fullscreen_change_handler(ev){
  if(false === is_fullscreen_on()){
    document.querySelector("div[button]").innerText="\u21E7\uFE0E";
  }
  else{
    document.querySelector("div[button]").innerText="\u21E9\uFE0E";
  }
}

//-----------------------------------------------------------------------------program start.
var nosleep = new NoSleep();

var button_fullscreen;
var fullscreen_enabled = false
                        ||self.document.fullscreenEnabled
                        ||self.document.msFullscreenEnabled
                        ||self.document.mozFullScreenEnabled
                        ||self.document.webkitFullscreenEnabled
                        ;

if(true === fullscreen_enabled){  //https://developer.mozilla.org/en-US/docs/Web/API/Document/fullscreenEnabled
  button_fullscreen = document.querySelector("div[button]");
  button_fullscreen.onclick = function(ev){
                                toggle_fullscreen();
                              };

  self.document.documentElement.ondblclick  = function(ev){  //double-click on the document.
                                                toggle_fullscreen();
                                              };
  button_fullscreen.removeAttribute("hidden");
}
else{
  console.error("no support for fullscreen-API.");
}

document.onfullscreenchange = fullscreen_change_handler;


//re-calibrate the red-dot borders. CSS-orientation with '@media (orientation:portrait){ / @media (orientation:landscape){' not-always handles it properly after the page has finished loading.
self.addEventListener("orientationchange",function(){          //"resize" is another option for older browsers.         can query the current state using screen.orientation.angle 0=portrait, -90=landscape rotated to the right, 90=landscape rotated to the left.
  self.location.reload(false);
});




//rewrite resources to and explicit-path. it might fix being required internet to hear the audio for some reason...
var API    = chrome || browser
   ,source
   ;

source = document.querySelector('source[src*=".mp3"]');
try{  source.src = API.runtime.getURL("resources/resources/audio.mp3"); }catch(err){}

source = document.querySelector('source[src*=".ogg"]');
try{  source.src = API.runtime.getURL("resources/resources/audio.ogg"); }catch(err){}

source = document.querySelector('embed[src*=".mp3"]');
try{  source.src = API.runtime.getURL("resources/resources/audio.mp3"); }catch(err){}