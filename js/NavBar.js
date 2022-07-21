import React from 'react'

export const NavBar = (props) => {
 
  return (
    <div>
       
{
props.data.map(
  (element,idx) =>{
    return < a key={idx}href={element.link} style={{margin :"15px"} }>{element.text}</a>
  }
)
}
  

    </div>
  )
}
