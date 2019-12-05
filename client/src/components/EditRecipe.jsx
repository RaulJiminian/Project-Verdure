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
      <div className='edit-recipe'>
        <h2 id='edit-form-title'>Edit Recipe</h2>
        <form id='edit-form' onSubmit={(event) => {
          event.preventDefault();
          this.props.handleEdit(this.props.id, this.state.recipeData)
        }}>
          <label className='edit-label' htmlFor="image_url">Image URL</label>
          <input className='edit-field'
            type="text"
            name="image_url"
            id="image_url"
            placeholder="Image URL"
            value={this.state.recipeData.image_url}
            onChange={this.handleChange}
          />
          <label className='edit-label' htmlFor="title">Title</label>
          <input className='edit-field'
            type="text"
            name="title"
            id="title"
            placeholder="Title"
            value={this.state.recipeData.title}
            onChange={this.handleChange}
          />
          <label className='edit-label' htmlFor="description">Description</label>
          <input className='edit-field'
            type="text"
            name="description"
            id="description"
            placeholder="Description"
            value={this.state.recipeData.description}
            onChange={this.handleChange}
          />
          <br />
          <label className='edit-label' htmlFor="ingredients">Ingredients</label>
          <textarea
            name="ingredients"
            id="edit-ingredients"
            row='12'
            resize='true'
            placeholder='Ingredients'
            value={this.state.recipeData.ingredients}
            onChange={this.handleChange}
          />
          <label className='edit-label' htmlFor="prep">Preparation</label>
          <textarea
            name="prep"
            id="edit-prep"
            row='12'
            resize='true'
            placeholder='Preparation'
            value={this.state.recipeData.prep}
            onChange={this.handleChange}
          />
          <br />
          <button id='edit-recipe-button'>Edit Recipe</button>
        </form>
      </div>
    )
  }
}