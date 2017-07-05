part of server;

class ServerWebSocket extends DrawWebSocket {
  final HttpRequest _req;

  WebSocket _webSocket;

<<<<<<< HEAD
  ServerWebSocket._internal(this._req);
=======
  Future done;
>>>>>>> 498dcfb951e9f6562814253bb1fcebda64401eca

  ServerWebSocket.ugradeRequest(this._req);

  @override
  start() async {
    _webSocket = await WebSocketTransformer.upgrade(_req)
      ..listen(onMessageToDispatch);

    done = _webSocket.done;
  }

  @override
  send(MessageType type, [var val]) {
    if (val == null) {
      _webSocket.add(type.index.toString());
    } else {
      _webSocket.add(JSON.encode([type.index, val]));
    }
  }
}
