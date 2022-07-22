

var myobj={}


myobj.itsMe =function (){
    console.log("Madesh");
}

myobj.author='lokesh';


var ourObj={

    designer : 'sathish',
    showDesigner : function() {
        console.log(this.designer)
    }
}

var Employee = function(employeeId,employeeName){

    this.employeeId= employeeId;
    this.employeeName=employeeName;
}

var ram = new Employee(101,'ram')

function setAuthor(){
    var ele=document.getElementById("author");
    ele.innerHTML=myobj.author
}
