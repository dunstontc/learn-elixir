import { Socket } from 'phoenix'

let socket = new Socket('/socket', { params: { token: window.userToken } })
socket.connect()

const createSocket = (topicId) => {
  let channel = socket.channel(`comments:${topicId}`, {})
  channel.join()
    .receive('ok', (resp) => {
      console.log('Joined successfully', resp)
      renderComments(resp.comments);
    })
    .receive('error', (resp) => {
      console.log(`Unable to join:\n ${resp}`)
    });

  channel.on(`topic:${topicId}:new`, renderComment);

  document.querySelector('button').addEventListener('click', () => {
    const content = document.querySelector('textarea').value;
    channel.push('comment:add', { content: content });
  });
}

/** Render many comments to our page. */
function renderComments(comments) {
  let renderedComments = comments.map(comment => {
    return commentTemplate(comment);
  });
  document.querySelector('.list-group').innerHTML = renderedComments.join('');
};

/** Append a single comment to our page. */
function renderComment (event) {
  const renderedComment = commentTemplate(event.comment)
  document.querySelector('.list-group').innerHTML += renderedComment;
}

/** Wrap a comment in some HTML. */
const commentTemplate = (comment) => {
  let email = 'Anonymous';
  if (comment.user) { email = comment.user.email}

  return `
    <li class="list-group-item">
      ${comment.content}
      <br> - ${email}
    </li>
  `;
};

window.createSocket = createSocket;
