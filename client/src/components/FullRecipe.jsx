import React from 'react';
import { Link } from 'react-router-dom';
import { getAllComments, postComment, deleteComment, getOneRecipe } from '../services/api-helper';
import CommentList from './CommentList';
import CreateComments from './CreateComments';


export default class FullRecipe extends React.Component {
  state = {
    comments: [],
    oneRecipe: null
  }

  async componentDidMount() {
    const oneRecipe = await getOneRecipe(this.props.id);
    const comments = await getAllComments(this.props.id);
    this.setState({
      comments: comments,
      oneRecipe: oneRecipe
    })
  }

  createComment = async (recipe_id, commentData) => {
    const newComment = await postComment(recipe_id, commentData);
    this.setState(prevState => ({
      comments: [...prevState.comments, newComment]
    }))
  }

  destroyComment = async (comment_id) => {
    await deleteComment(comment_id);
    this.setState(prevState => ({
      comments: prevState.comments.filter(comment => {
        return comment.id !== comment_id
      })
    }))
  }

  render() {
    return (
      <>
        {
          this.state.oneRecipe &&
          <div id={this.state.oneRecipe.id} className='full-recipe-page'>
            <h2 className="recipe-title">{this.state.oneRecipe.title}</h2>
            <div className='full-recipe-img'>
              <img src={this.state.oneRecipe.image_url} alt="recipe final product" />
            </div>
            <h3>Chef: <Link to={`/user_recipes/${this.state.oneRecipe.user.id}`}>{this.state.oneRecipe.user.username}</Link></h3>
            <h3>Description</h3>
            <p>{this.state.oneRecipe.description}</p>
            <h3>Ingredients</h3>
            <p>{this.state.oneRecipe.ingredients}</p>
            <h3>Preparation</h3>
            <p>{this.state.oneRecipe.prep}</p>
            <div className="full-recipe-user-buttons">
              {this.state.oneRecipe.user.id === this.props.currentUser.id ? <button id={this.state.oneRecipe.id} onClick={this.props.handleDelete}>Delete Recipe</button> : null}
              {this.state.oneRecipe.user.id === this.props.currentUser.id ? <Link to={`/edit/${this.state.oneRecipe.id}`}><button id={this.state.oneRecipe.id}>Edit Recipe</button></Link> : null}
            </div>
            <CreateComments createComment={this.createComment} recipe_id={this.state.oneRecipe.id} />
            <CommentList destroyComment={this.destroyComment} comments={this.state.comments} recipe_id={this.state.oneRecipe.id} />
          </div>
        }
      </>
    )
  }
}