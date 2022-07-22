
import React,{useState,useEffect} from 'react'
import axios from 'axios'


export const AddDriver = () => {
  const [driver,setDriver]=useState({})

  const handleSubmit=(event) =>{
    event.preventDefault();
    axios.post("http://localhost:6067/api/v1/drivers",driver)
    .then( response=> console.log(response.status))        

  }
  const handleChanege=(event)=>{
  let name=event.target.name;
  let value=event.target.value;
  setDriver(obj =>({...obj,[name]:value}))
  
  }
  return (
    <div>
        <form onSubmit={handleSubmit}>
           
                <div className='form-group'>
                  <label htmlFor="">Driver Id</label><input type="text" name="driverId" onChange={handleChanege} className='form-control'/>
                  </div>
                <div className='form-group'>
                  <label htmlFor="">Driver Name</label><input type="text" name="driverName" onChange={handleChanege} className='form-control'/>
                </div>
                <div className='form-group'>
                  <label htmlFor="">Mobile Number</label><input type="Number" name="mobileNumber" onChange={handleChanege} className='form-control'/>
                </div>
                <div className='form-group'>
                  <label htmlFor="">Date Of Birth</label><input type="Date"name="dateOfBirth"  onChange={handleChanege} className='form-control'/>
                </div>
                <div className='form-group'>
                  <label htmlFor="">Location</label><input type="text" name="location" onChange={handleChanege} className='form-control'/>
                </div>
                <div className='form-group'>
                  <label htmlFor="">Rating</label><input type="Number"name="rating"  onChange={handleChanege} className='form-control'/>
                </div>
                <input type='submit' value="Add" className='btn btn-info'></input>
            
        </form>
    </div>
  )
}
