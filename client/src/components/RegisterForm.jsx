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
          <img className="login-logo-image-two" src="https://i.imgur.com/IoEQE0G.png" alt="verdure logo" />
        </Link>
        <div className="sign-in-main">
          <div className="sign-in-header">
            <h2>Register for a new account</h2>
          </div>
          <div className="sign-in-grid">
            <div className="sign-in-input-div">
              <label htmlFor="username">Username</label>
              <input
                className="sign-in-input"
                placeholder="Username"
                name="username"
                id="username"
                type="text"
                value={this.state.username}
                onChange={this.handleChange}
              />
            </div>
            <div className="sign-in-input-div">
              <label htmlFor="email">Email</label>
              <input
                className="sign-in-input"
                placeholder="Email"
                name="email"
                id="email"
                type="email"
                value={this.state.email}
                onChange={this.handleChange}
              />
            </div>
            <div className="sign-in-input-div">
              <label htmlFor="password">Password</label>
              <input
                className="sign-in-input"
                placeholder="Password"
                name="password"
                id="password"
                type="password"
                value={this.state.password}
                onChange={this.handleChange}
              />
            </div>
            <div className="sign-in-input-div">
              <label htmlFor="location">Location</label>
              <input
                className="sign-in-input"
                placeholder="Location"
                name="location"
                id="location"
                type="text"
                value={this.state.location}
                onChange={this.handleChange}
              />
            </div>
            <div className="sign-in-input-div">
              <label htmlFor="description">Description</label>
              <input
                className="sign-in-input"
                placeholder="Description"
                name="description"
                id="description"
                type="text"
                value={this.state.description}
                onChange={this.handleChange}
              />
            </div>
            <div>
              <button id="register" disabled={!isEnabled}>Register</button>
            </div>
          </div>
        </div>
      </form>
    )
  }
}