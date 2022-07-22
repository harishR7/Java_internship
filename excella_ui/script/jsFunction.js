function simple(){
    console.log("hellow from simple function")
}
function simpleWithArg(name){
    console.log(name.length);
}

function simpleWithReturn(name){
    return (name +' is a Playboy');
}
function invoke(name){
    console.log(simpleWithReturn(name));
}

function simpleWithFunctionAsArg(funRef){
    console.log(funRef);


    var result=funRef()

    console.log(result);
}


callFunc = function(){
    simpleWithFunctionAsArg(simpleWithReturn('sachin'));
}


global_a =100
function sum(){
    local_c=300;
    var local_b =200
}

function display(){
    sum();
    console.log(global_a);
    //console.log(local_b);
    console.log(local_c);
}