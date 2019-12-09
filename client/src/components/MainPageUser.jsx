import React from 'react';
import { Link } from 'react-router-dom';
import { getAllUserRecipes } from '../services/api-helper';

export default class MainPageUser extends React.Component {

  state = {
    currentUserRecipes: []
  }


  allUserRecipes = async (id) => {
    const userRecipes = await getAllUserRecipes(id)
    this.setState({
      currentUserRecipes: userRecipes
    })
  }

  componentDidMount = () => {
    this.allUserRecipes(this.props.currentUser.id)
  }

  render() {
    return (
      <div className="main-side">
        <div className="main-side-top">
          <div className="main-side-top-buttons">
            <h1>{this.props.currentUser.username}</h1>
            <div id="user-image">
              {this.props.currentUser.image_url === null ? <img src='https://i.imgur.com/HZPz2tu.png' alt="default user profile" /> : <img src={this.props.currentUser.image_url} alt="current user profile" />}
            </div>
            <h3>Representing {this.props.currentUser.location}</h3>
            <Link to={`/update_profile/${this.props.currentUser.id}`}>
              <button className="small-button">Edit Profile</button>
            </Link>
            <button onClick={this.props.handleLogout} className="small-button">Logout</button>
            <button>Following</button>
            <button>Favorites</button>
          </div>
          <div className="sticky">
            <Link to="/recipes/new">
              <button>Create</button>
            </Link>
          </div>
          <h1 className="black">Recent Recipes</h1>
          <div className="side-segment-grid">
            {
              // [TBU] - After Edit; page needs refresh to show
              this.state.currentUserRecipes &&
              this.state.currentUserRecipes.map(recipe => (
                <div className="main-container-segment" key={recipe.id}>
                  <div className="main-container-sub-segment">
                    <div className="container-segment">
                      <div className="card-segment">
                        <div className="face-segment face1-segment">
                          <div className="content-segment">
                            <div>
                              <h3>{recipe.title}</h3>
                              <h4>Chef: {recipe.user.username}</h4>
                            </div>
                          </div>
                          <Link to={`/full_recipe/${recipe.id}`}>
                            <button id={recipe.id} className="main-page-button-segment-info">Go to</button>
                          </Link>
                        </div>
                        <div className="face-segment face2-segment" style={{ background: 'url(' + recipe.image_url + ')' }}>
                          <h2>{recipe.title}</h2>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              ))
            }
          </div>
        </div>
      </div>
    )
  }
}

// DELETE
/* {
           this.state.currentUserRecipes &&
           this.state.currentUserRecipes.map(recipe => (
             <div className="main-user-recipes" key={recipe.id}>
               <Link to={`/full_recipe/${recipe.id}`} >
                 <img src={recipe.image_url} alt="recipe post" id={recipe.id} />
               </Link>
               <div className="main-user-recipe-heading">
                 <h2>{recipe.title}</h2>
               </div>
             </ div>
           ))
         } */