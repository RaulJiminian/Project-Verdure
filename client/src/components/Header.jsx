import React from 'react';
import { Link } from 'react-router-dom';

export default function Header() {
  return (
    <header>
      <img src="https://i.imgur.com/wMDUuCm.png" alt="verdure logo" />
      <Link to='/recipes'>
        <p>Recipes</p>
      </Link>
      <p>Blogs</p>
      <p>Exercises</p>
      <p>Meetups</p>
      <p>Products</p>
    </header>
  )
}