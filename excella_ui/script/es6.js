const show=() => "Hello"

console.log(show())

const total=(a,b)=> a+b
const value=[100,2]

console.log('total:='+total(...value))


let list1=[100,200,300]
let list2=[1,2,3]

const combine=(list1,list2) =>{
    let combine=[...list1,...list2]
    return combine
}
console.log(combine(list1,list2))

let employee ={id:101,empName:"Loki",salary:23000}

const destruct=(obj) =>{
   let {id,salary} = obj;
console.log(id+","+salary)
}
destruct(employee)