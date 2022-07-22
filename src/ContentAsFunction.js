
import React,{useState}from 'react'

export const ContentAsFunction = () => {

    const [count,setCount]=useState(1);

    const[message,setValue]=useState("");

    const handleClick =() =>{
        console.log("handle click count")
        setCount(count => count+1);
    }

    const handleChange = (event) => { 
        console.log(event.target.value)
        setValue(message => [...event.target.value])
    }
  return (
    <div>

        <p>Count {count}
        </p>
        <p><button onClick={handleClick} className= 'btn btn-info'>+</button></p>

        <p>
            <input type='text' name='mgs' onChange={handleChange}/>
        </p>
        <p>Message:{message}</p>
    </div>
  )
}
