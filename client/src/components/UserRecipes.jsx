import React from 'react';
import { Link } from 'react-router-dom';
import { getAllUserRecipes } from '../services/api-helper';

export default class UserRecipes extends React.Component {
  state = {
    currentUserRecipes: []
  }

  allUserRecipes = async (id) => {
    const userRecipes = await getAllUserRecipes(id)
    this.setState({
      currentUserRecipes: userRecipes
    })
  }

  componentDidMount = async () => {
    this.allUserRecipes(this.props.id);
  }

  render() {
    return (
      <div>
        {
          this.state.currentUserRecipes.map(recipe => (
            <div className="user-recipes" key={recipe.id}>
              <div className="user-recipe-image-container">
                <img src={recipe.image_url} alt="recipe-post" />
              </div>
              <div className="user-recipe-content-container">
                <h2>Chef: {recipe.user.username}</h2>
                <p>{recipe.description}</p>
                <Link to={`/full_recipe/${recipe.id}`}>
                  <button>...read more!</button>
                </Link>
              </div>
            </div>
          ))
        }
      </div>
    )
  }
}