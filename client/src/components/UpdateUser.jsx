import React from 'react';

export default class UpdateUser extends React.Component {
  state = {
    userData: {
      email: '',
      password: '',
      image_url: '',
      location: '',
      description: ''
    }
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState(prevstate => ({
      userData: {
        ...prevstate.userData,
        [name]: value
      }
    }))
  }

  render() {
    return (
      <div className='update-user'>
        <form className='update-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.handleEditUser(this.props.id, this.state.userData)
        }}>
          <label htmlFor="email">Email</label>
          <input
            type="text"
            name="email"
            id="email"
            placeholder="Email@address.com"
            value={this.state.email}
            onChange={this.handleChange}
          />
          <label htmlFor="password">Password</label>
          <input
            type="text"
            name="password"
            id="password"
            placeholder="Password"
            value={this.state.password}
            onChange={this.handleChange}
          />
          <label htmlFor="image_url">Image</label>
          <input
            type="text"
            name="image_url"
            id="image"
            placeholder="Insert Image URL"
            value={this.state.image_url}
            onChange={this.handleChange}
          />
          <label htmlFor="location">Location</label>
          <input
            type="text"
            name="location"
            id="location"
            placeholder="Enter Location"
            value={this.state.location}
            onChange={this.handleChange}
          />
          <label htmlFor="description">Description</label>
          <input
            type="text"
            name="description"
            id="description"
            placeholder="Description"
            value={this.state.description}
            onChange={this.handleChange}
          />
          <br />
          <button>Update</button>
        </form>
      </div>
    )
  }
}