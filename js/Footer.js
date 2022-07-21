import React from 'react'

export const Footer = ({designer,email}) => {
   const {mail,text}= email;
  return (
    <div>
        <hr/>
        <p> Desingned By {designer}</p>
        <p><a href={'mailTo:'+mail }>{text}</a></p>
    </div>
  )
}

export default Footer