import 'dart:convert';

class LobbyInfo {
  final String name;
  final bool hasPassword;
  final bool hasTimer;
  final int maxPlayers;
  final int numberOfPlayers;

  const LobbyInfo(this.name, this.hasPassword, this.hasTimer, this.maxPlayers,
      this.numberOfPlayers);

  factory LobbyInfo.fromJson(var json) {
    var list;

    if (json is List) {
      list = json;
    } else {
      list = jsonDecode(json) as List;
    }

    return  LobbyInfo(list[nameIndex], list[hasPasswordIndex],
        list[hasTimerIndex], list[maxPlayersIndex], list[numberOfPlayersIndex]);
  }

  static const nameIndex = 0;
  static const hasPasswordIndex = 1;
  static const hasTimerIndex = 2;
  static const maxPlayersIndex = 3;
  static const numberOfPlayersIndex = 4;

  String toJson() =>
      jsonEncode([name, hasPassword, hasTimer, maxPlayers, numberOfPlayers]);
}
