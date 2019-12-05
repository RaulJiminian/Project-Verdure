import React from 'react';

export default function Footer() {
  return (
    <div className='footer'>
      <div id='github'>
        <a href="https://github.com/SmokinHawk/Project-Verdure" target="_blank" rel="noopener noreferrer">
          <img src="https://github.githubassets.com/images/modules/logos_page/Octocat.png" alt="GitHub" />
        </a>
      </div>
      <div id="copyright">
        <p>&copy; 2019 &mdash; verdure</p>
      </div>
    </div>
  )
}