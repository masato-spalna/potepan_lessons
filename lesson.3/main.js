let display = document.getElementById("display");
let button_1 = document.getElementById("button_1");
let button_2 = document.getElementById("button_2");
let button_3 = document.getElementById("button_3");

let hours = 0;
let minutes =0;
let sedonds = 0;
let milliseconds =0;

function stopWatch(){
  milliseconds++
  if(milliseconds / 10 == 1){
    sedonds++;
    milliseconds = 0;
    if(sedonds / 60 == 1){
      minutes++;
      sedonds = 0;
      if(minutes / 60 == 1){
        hours++;
        minutes = 0;
      }
    }
  }
  
  display.innerHTML = hours + ":" + minutes + ":" + sedonds + ":" + milliseconds
  
}

function start() {
  interval = setInterval(stopWatch, 100); //完成イメージがミリ秒単位のため
  button_1.disabled = true;
  button_2.disabled = false;
}

function stop(){
  clearInterval(interval)
  button_1.disabled = false;
  button_2.disabled = true;
}

function reset() {
  hours = 0;
  minutes =0;
  sedonds =0;
  milliseconds = 0;
  display.innerHTML = "0:0:0:0"
  button_1.disabled = false;
  button_2.disabled = false;
}


