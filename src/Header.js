import React from 'react'
import { Image } from './Image'

import { NavBar } from './NavBar'
import logo from './images/car1.jpg';

const links=[
         {"link":"/home",'text':'Home-2'},
         {"link":"/about",'text':'About Us'},
         {"link":"/client",'text':'Client'}
]
export const Header = ({heading}) => {
  return (
    <header>
    <div className='col-md-6'>
        <h1 >
            {heading}
            
        </h1>
       <Image imgRef = {logo} altText = {'company logo'}></Image>
       
       <div className='col-md-6'>
        <NavBar data={links}></NavBar>
    </div>
    </div>
    </header>
  )
}
