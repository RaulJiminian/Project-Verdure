import React from 'react';

export default function CommentList(props) {
  return (
    <div className="comment-parent">
      {props.comments &&
        props.comments.map(comment => (
          comment.recipeId === props.recipe_id && (
            <div className="comment-wrapper">
              <p>{comment.description}</p>
              <button className="comment-delete" onClick={() => props.destroyComment(comment.id)}>Delete Comment</button>
            </div>
          )))
      }
    </div>
  )
}