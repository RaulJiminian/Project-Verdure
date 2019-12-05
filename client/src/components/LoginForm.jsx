import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class LoginForm extends Component {
  state = {
    username: '',
    password: ''
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    return (
      <form className="login-form" onSubmit={(event) => {
        event.preventDefault();
        this.props.handleLogin(this.state);
      }}>
        <img src="https://i.imgur.com/gPRbcbL.png" alt="verdure logo" />
        <h2>Login</h2>
        <label htmlFor="username">Username</label>
        <input
          placeholder="username"
          name="username"
          id="username"
          type="text"
          value={this.state.username}
          onChange={this.handleChange}
        />
        <label htmlFor="password">Password</label>
        <input
          placeholder="password"
          name="password"
          id="password"
          type="password"
          value={this.state.password}
          onChange={this.handleChange}
        />
        <button id="submit">Login</button>
        <Link to='/register'>
          <button id="register-link">Register</button>
        </Link>
      </form>
    )
  }
}