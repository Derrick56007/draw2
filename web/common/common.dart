library common;

import 'dart:convert';

import 'package:serializer/serializer.dart';

part 'brush.dart';
part 'create_lobby_info.dart';
part 'existing_player.dart';
part 'guess.dart';
part 'lobby_info.dart';
part 'login_info.dart';
part 'point.dart';

class Message {
  static const toast                  = '0';
  static const login                  = '1';
  static const loginSuccesful         = '2';
  static const createLobby            = '3';
  static const createLobbySuccessful  = '4';
  static const enterLobby             = '5';
  static const enterLobbySuccessful   = '6';
  static const enterLobbyFailure      = '7';
  static const requestLobbyList       = '8';
  static const lobbyOpened            = '9';
  static const lobbyClosed            = 'a';
  static const guess                  = 'b';
  static const existingPlayer         = 'c';
  static const newPlayer              = 'd';
  static const removePlayer           = 'e';
  static const setAsArtist            = 'f';
  static const setArtist              = 'g';
  static const win                    = 'h';
  static const lose                   = 'i';
  static const timerUpdate            = 'j';
  static const drawPoint              = 'k';
  static const drawLine               = 'l';
  static const clearDrawing           = 'm';
  static const changeColor            = 'n';
  static const changeSize             = 'o';
}