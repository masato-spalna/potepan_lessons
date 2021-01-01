var display = document.getElementById("display");

myTotal = 0;
myInput = "";
myCalc = "+"
myFlg = 1; //　１つ前に打ったものが0:数字、1:演算子

function number(nums) {
  if(myInput =="" && nums.value ==0){ //最初に0は押せない
    display.value =0;
  }else{
    myFlg = 0;
    myInput += nums.value; 
    display.value = myInput;
  }
};

function set(calc){
  if(myFlg == 0){
  myFlg = 1;
  myWork = myTotal + myCalc + myInput;
  myTotal = eval(myWork);
  myInput = "";
  display.value = myTotal;
  }
  
  myCalc = calc.value;
  
};

function reset() {
  myTotal = 0;
  myInput = "";
  myCalc = "+"
  display.value = myTotal;
};

function result() {
  if(myFlg ==0){
  myWork = myTotal + myCalc + myInput ;
  myResult = eval(myWork);
  display.value = myResult;
  myTotal = 0;
  myInput = "";
  myCalc = "+" 
  }
};