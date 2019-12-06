import React from 'react';

export default function CommentList(props) {
  return (
    <div className="comment-parent">
      {props.comment &&
        props.comment.map(comment => (
          comment.recipe_id === props.recipe_id && (
            <div className="comment-wrapper" key={comment.id}>
              <p>{comment.comment}</p>
              <button className="comment-delete" onClick={() => props.destroyComment(comment.id)}>Delete Comment</button>
            </div>
          )))
      }
    </div>
  )
}