import React from 'react'
import { NavBar } from './NavBar'


const links=[
         {"link":"/home",'text':'Home-2'},
         {"link":"/about",'text':'About Us'},
         {"link":"/client",'text':'Client'}
]
export const Header = ({heading}) => {
  return (
    <div>
        <h1>
            {heading}
            
        </h1>
        <NavBar data={links}></NavBar>
    </div>
  )
}
