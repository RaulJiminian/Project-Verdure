import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class RegisterForm extends Component {
  state = {
    username: '',
    email: '',
    password: '',
    location: '',
    description: ''
  }

  canBeSubmitted = () => {
    const { username, password } = this.state;
    return (
      username.length > 5 &&
      password.length > 5
    );
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({
      [name]: value
    })
  }

  render() {
    const isEnabled = this.canBeSubmitted();

    return (
      <form className="register-form" onSubmit={(event) => {
        event.preventDefault()
        this.props.handleRegister(this.state)
      }}>
        <Link to="/">
          <img src="https://i.imgur.com/gPRbcbL.png" alt="verdure logo" />
        </Link>
        <h2>Register for a new account</h2>
        <label htmlFor="username">Username</label>
        <input
          placeholder="username"
          name="username"
          id="username"
          type="text"
          value={this.state.username}
          onChange={this.handleChange}
        />
        <label htmlFor="email">Email</label>
        <input
          placeholder="email"
          name="email"
          id="email"
          type="email"
          value={this.state.email}
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
        <label htmlFor="location">Location</label>
        <input
          placeholder="location"
          name="location"
          id="location"
          type="text"
          value={this.state.location}
          onChange={this.handleChange}
        />
        <label htmlFor="description">Description</label>
        <input
          placeholder="description"
          name="description"
          id="description"
          type="text"
          value={this.state.description}
          onChange={this.handleChange}
        />
        <button disabled={!isEnabled}>Submit</button>
        <br />
        <p>{this.props.authErrorMessage}</p>
      </form>
    )
  }
}