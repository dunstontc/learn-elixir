import { Socket } from 'phoenix'

let socket = new Socket('/socket', {params: {token: window.userToken}})
socket.connect()

const createSocket = (topicID) => {
  let channel = socket.channel(`comments:${topicID}`, {})
  channel.join()
    .receive('ok', resp => { console.log('Joined successfully', resp) })
    .receive('error', resp => { console.log('Unable to join', resp) });

  document.querySelector('button').addEventListener('click', () => {
    const content = document.querySelector('textarea').value;
    channel.push('comment:add', { content: content });
  });
}

window.createSocket = createSocket;
