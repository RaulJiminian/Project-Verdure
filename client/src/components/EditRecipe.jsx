import React from 'react';

export default class EditRecipe extends React.Component {
  state = {
    recipeData: {
      image_url: '',
      title: '',
      description: '',
      ingredients: '',
      prep: ''
    }
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState(prevstate => ({
      recipeData: {
        ...prevstate.recipeData,
        [name]: value
      }
    }))
  }

  render() {
    return (
      <div className='edit-form'>
        <form id='edit-recipe-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.handleEdit(this.props.id, this.state.recipeData)
        }}>
          <div className="sign-in-main">
            <div className="sign-in-header">
              <h2 id='edit-form-title'>Edit Recipe</h2>
            </div>
            <div className="sign-in-grid">
              <div className="sign-in-input-div">
                <label className='edit-label' htmlFor="image_url">Image URL</label>
                <input className="sign-in-input"
                  type="text"
                  name="image_url"
                  id="image_url"
                  placeholder="Image URL"
                  value={this.state.recipeData.image_url}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='edit-label' htmlFor="title">Title</label>
                <input className="sign-in-input"
                  type="text"
                  name="title"
                  id="title"
                  placeholder="Title"
                  value={this.state.recipeData.title}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='edit-label' htmlFor="description">Description</label>
                <input className="sign-in-input"
                  type="text"
                  name="description"
                  id="description"
                  placeholder="Description"
                  value={this.state.recipeData.description}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='edit-label' htmlFor="ingredients">Ingredients</label>
                <textarea
                  className="sign-in-input"
                  name="ingredients"
                  id="edit-ingredients"
                  row='12'
                  resize='true'
                  placeholder='Ingredients'
                  value={this.state.recipeData.ingredients}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='edit-label' htmlFor="prep">Preparation</label>
                <textarea
                  className="sign-in-input"
                  name="prep"
                  id="edit-prep"
                  row='12'
                  resize='true'
                  placeholder='Preparation'
                  value={this.state.recipeData.prep}
                  onChange={this.handleChange}
                />
              </div>
              <div>
                <button id='edit-recipe-button'>Edit Recipe</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    )
  }
}