import React from 'react';

export default class CreateComments extends React.Component {
  state = {
    commentData: {
      comment: ''
    }
  }

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState(prevState => ({
      commentData: {
        ...prevState.commentData,
        [name]: value
      }
    }))
  }

  render() {
    return (
      <div className="comment-box">
        <form className="comment-form" onSubmit={(event) => {
          event.preventDefault()
          this.props.createComment(this.props.recipe_id, this.props.currentUser.id, this.state.commentData)
        }}>
          <label id='comment-label' htmlFor="comment">Comment</label>
          <textarea
            name="comment"
            id="comment"
            placeholder="Comments..."
            value={this.state.commentData.comment}
            onChange={this.handleChange}
          />
          <button id='comment-button'>Submit</button>
        </form>
      </div>
    )
  }
}