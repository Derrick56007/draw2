part of server;

class ServerWebSocket extends DrawWebSocket {
  final HttpRequest _req;

  WebSocket _webSocket;

  ServerWebSocket._internal(this._req);

  Future done;

  ServerWebSocket.upgradeRequest(this._req);

  @override
  Future start() async {
    _webSocket = await WebSocketTransformer.upgrade(_req)
      ..listen(onMessageToDispatch);

    done = _webSocket.done;
  }

  @override
  void send(MessageType type, [var val]) {
    if (val == null) {
      _webSocket.add(type.index.toString());
    } else {
      _webSocket.add(jsonEncode([type.index, val]));
    }
  }
}
