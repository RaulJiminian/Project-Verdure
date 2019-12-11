import React from 'react';

export default class CreateRecipe extends React.Component {
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
      <div className='create-recipe'>
        <form id='create-recipe-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.createRecipe(this.props.currentUser.id, this.state.recipeData)
        }}>
          <div className="sign-in-main">
            <div className="sign-in-header">
              <h2 id="create-form-title">Create Recipe</h2>
            </div>
            <div className="sign-in-grid">
              <div className="sign-in-input-div">
                <label className='create-label' htmlFor="image_url">Image URL</label>
                <input className="sign-in-input"
                  type="text"
                  name="image_url"
                  id="image_url"
                  placeholder="Image URL"
                  value={this.state.image_url}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='create-label' htmlFor="title">Title</label>
                <input className="sign-in-input"
                  type="text"
                  name="title"
                  id="title"
                  placeholder="Title"
                  value={this.state.title}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='create-label' htmlFor="description">Description</label>
                <input className="sign-in-input"
                  type="text"
                  name="description"
                  id="description"
                  placeholder="Description"
                  value={this.state.description}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='create-label' htmlFor="ingredients">Ingredients</label>
                <textarea
                  className="sign-in-input"
                  name="ingredients"
                  id="ingredients"
                  placeholder="Ingredients"
                  row="12"
                  resize="true"
                  value={this.state.ingredients}
                  onChange={this.handleChange}
                />
              </div>
              <div className="sign-in-input-div">
                <label className='create-label' htmlFor="prep">Preparation</label>
                <textarea
                  className="sign-in-input"
                  name="prep"
                  id="prep"
                  placeholder="Preparation"
                  row="12"
                  resize="true"
                  value={this.state.prep}
                  onChange={this.handleChange}
                />
              </div>
              <div>
                <button id='create-recipe-button'>Submit Recipe</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    )
  }
}