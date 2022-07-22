import React ,{useState,useEffect}from 'react'
import axios from 'axios'
import { ShowData } from './ShowData';


export const FetchDate = () => {

    const[driverList,setDriverList]=useState([]);
    useEffect(()=>{
        axios.get("http://localhost:6067/api/v1/drivers/").then(result=> setDriverList(result.data))
    },[])
  return (
    <div>
        <ShowData data={driverList}></ShowData>
    </div>
  )
}
