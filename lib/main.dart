import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  /// AudioCache object.
  final player = AudioCache();

  /// Our list of MaterialColors.
  final List<MaterialColor> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  /// Builds our widget.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: this._generateKeys()
          ),
        ),
      )
    );
  }

  /// Play a cached sound.
  void _play(int number) {
//    player.play('note$number.wav');
    print('Playing sound $number');
  }

  /// Builds 7 xylophone keys.
  List<Expanded> _generateKeys() {

    List<Expanded> widgets = [];
    for (int index = 0; index < 7; index++) {
      var widget = this._generateKey(colors[index], index);
      widgets.add(widget);
    }
    return widgets;
  }

  /// Builds a xylophone key widget.
  Expanded _generateKey(MaterialColor color, int sound) => Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          this._play(sound);
        },
        child: Text(''),
      ),
    );
}