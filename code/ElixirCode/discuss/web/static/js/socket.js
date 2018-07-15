import { Socket } from 'phoenix'

let socket = new Socket('/socket', {params: {token: window.userToken}})
socket.connect()

const createSocket = (topicID) => {
  let channel = socket.channel(`comments:${topicID}`, {})
  channel
    .join()
    .receive('ok', (resp) => {
       console.log('Joined successfully', resp)
       renderComments(resp.comments);
    })
    .receive('error', (resp) => {
       console.log(`Unable to join:\n ${resp}`)
    });

  document.querySelector('button').addEventListener('click', () => {
    const content = document.querySelector('textarea').value;
    channel.push('comment:add', { content: content });
  });
}

const renderComments = (comments) => {
  let renderedComments = comments.map(comment => {
    return `
    <li class="list-group-item">
      ${comment.content}
    </li>
    `;
  });

  document.querySelector('.list-group').innerHTML = renderedComments.join('');
}

window.createSocket = createSocket;
