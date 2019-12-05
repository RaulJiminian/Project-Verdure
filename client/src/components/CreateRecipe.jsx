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
        <h2 id="create-form-title">Create Recipe</h2>
        <form id='create-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.createRecipe(this.props.currentUser.id, this.state.recipeData)
        }}>
          <label className='create-label' htmlFor="image_url">Image URL</label>
          <input className='create-field'
            type="text"
            name="image_url"
            id="image_url"
            placeholder="Image URL"
            value={this.state.image_url}
            onChange={this.handleChange}
          />
          <label className='create-label' htmlFor="title">Title</label>
          <input className='create-field'
            type="text"
            name="title"
            id="title"
            placeholder="Title"
            value={this.state.title}
            onChange={this.handleChange}
          />
          <label className='create-label' htmlFor="description">Description</label>
          <input className='create-field'
            type="text"
            name="description"
            id="description"
            placeholder="Description"
            value={this.state.description}
            onChange={this.handleChange}
          />
          <label className='create-label' htmlFor="ingredients">Ingredients</label>
          <textarea
            name="ingredients"
            id="ingredients"
            placeholder="Ingredients"
            row="12"
            resize="true"
            value={this.state.ingredients}
            onChange={this.handleChange}
          />
          <label className='create-label' htmlFor="prep">Preparation</label>
          <textarea
            name="prep"
            id="prep"
            placeholder="Preparation"
            row="12"
            resize="true"
            value={this.state.prep}
            onChange={this.handleChange}
          />
          <br />
          <button id='create-recipe-button'>Submit Recipe</button>
        </form>
      </div>
    )
  }
}