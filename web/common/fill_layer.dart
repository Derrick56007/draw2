import 'canvas_layer.dart';
import 'dart:convert';
import 'tool_type.dart';

class FillLayer extends CanvasLayer {
  final num x;
  final num y;
  final String color;

  FillLayer(this.x, this.y, this.color) : super(ToolType.FILL);

  factory FillLayer.fromJson(var json) {
    var list;

    if (json is List) {
      list = json;
    } else {
      list = jsonDecode(json) as List;
    }

    return FillLayer(list[xIndex], list[yIndex], list[colorIndex]);
  }

  static const xIndex = 1;
  static const yIndex = 2;
  static const colorIndex = 3;

  String toJson() => jsonEncode([toolType.index, x, y, color]);
}
