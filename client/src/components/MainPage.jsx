import React from 'react';
import { Link } from 'react-router-dom';
import MainPageUser from './MainPageUser';

export default class MainPage extends React.Component {
 
  render() {
    const mainDivOne = {
      gridTemplateColumns: '100%',
      gridTemplateAreas: "main"
    }

    const mainDivTwo = {
      gridTemplateColumns: '70% 30%',
      gridTemplateAreas: "main side"
    }

    return (
      <div id="main-div" style={this.props.toggle ? mainDivTwo : mainDivOne}>
        <div id="recipe-list">
          <h1>Take a look at our most recent recipes!</h1>
          <div className="main-container-card-grid">
            {
              // [TBU] - After Edit; page needs refresh to show
              this.props.recipes &&
              this.props.recipes.map(recipe => (
                <div className="main-container" key={recipe.id}>
                  <div className="main-container-sub">
                    <div className="container">
                      <div className="card">
                        <div className="face face1">
                          <div className="content">
                            <div>
                              <h2>Chef: {recipe.user.username}</h2>
                              <p>{recipe.description}</p>
                            </div>
                          </div>
                          <Link to={`/full_recipe/${recipe.id}`}>
                            <button id={recipe.id} className="main-page-button">Cook</button>
                          </Link>
                        </div>
                        <div className="face face2" style={{ background: 'url(' + recipe.image_url + ')' }}>
                          <h2 className="title-outline">{recipe.title}</h2>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              ))
            }
          </div>
        </div>
        {
          this.props.currentUser && this.props.toggle &&
          < MainPageUser handleLogout={this.props.handleLogout} currentUser={this.props.currentUser} currentUserRecipes={this.props.currentUserRecipes} />
        }
      </div>
    )
  }
}