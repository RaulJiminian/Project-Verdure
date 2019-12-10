import React from 'react';
import { Link } from 'react-router-dom';

export default function Header(props) {
  return (
    <header>
      <img src="https://i.imgur.com/wMDUuCm.png" alt="verdure logo" />
      <Link to='/recipes'>
        <p>Recipes</p>
      </Link>
      <p>Blogs</p>
      <p>Exercises</p>
      <p>Meetups</p>
      <img className="login-image" onClick={props.handleToggle} src="https://i.imgur.com/LzKYEhKs.png" alt="login button" />
    </header>
  )
}