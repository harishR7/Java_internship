import React from 'react'

export const Review = (props) => {
  return (
    <div>
        <p>Cars are been since 1990</p>
        <p><button onClick={props.handleClick} className= 'btn btn-info'>+</button></p>
        <p>Likes :{props.count}</p>
        <p><button onClick={props.handleClick1} className= 'btn btn-info'>-</button></p>
      </div>
  )
}
