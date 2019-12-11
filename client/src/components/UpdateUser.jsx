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
        <form id='update-user-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.handleEditUser(this.props.id, this.state.userData)
        }}>
          <div className="sign-in-main">
            <div className="sign-in-header">
              <h2 id="create-form-title">Update Profile</h2>
            </div>
            <div className="sign-in-grid">
              <div className="sign-in-input-div">
                <label htmlFor="email">Email</label>
                <input
                  className="sign-in-input"
                  type="text"
                  name="email"
                  id="email"
                  placeholder="Email@address.com"
                  value={this.state.email}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label htmlFor="password">Password</label>
                <input
                  className="sign-in-input"
                  type="password"
                  name="password"
                  id="password"
                  placeholder="Password"
                  value={this.state.password}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label htmlFor="image_url">Image</label>
                <input
                  className="sign-in-input"
                  type="text"
                  name="image_url"
                  id="image"
                  placeholder="Insert Image URL"
                  value={this.state.image_url}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label htmlFor="location">Location</label>
                <input
                  className="sign-in-input"
                  type="text"
                  name="location"
                  id="location"
                  placeholder="Enter Location"
                  value={this.state.location}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label htmlFor="description">Description</label>
                <input
                  className="sign-in-input"
                  type="text"
                  name="description"
                  id="description"
                  placeholder="Description"
                  value={this.state.description}
                  onChange={this.handleChange}
                />
              </div>
              <div>
                <button id='update-user-button'>Update</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    )
  }
}