import 'package:flutter/material.dart';

class CountPanel extends StatelessWidget {
  final int count;
  final VoidCallback onTapSwitchAudio;
  final VoidCallback onTapSwitchImage;

  const CountPanel({
    Key? key,
    required this.count,
    required this.onTapSwitchAudio,
    required this.onTapSwitchImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        minimumSize: const Size(36, 36),
        padding: EdgeInsets.zero,
        backgroundColor: Colors.green,
        elevation: 0);
    return Stack(
      children: [
        Center(
            child: Text(
          '功德数：$count',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        )),
        Positioned(
            right: 10,
            top: 10,
            child: Wrap(
              spacing: 8,
              children: [
                ElevatedButton(
                  onPressed: onTapSwitchAudio,
                  style: style,
                  child: const Icon(Icons.music_note_outlined),
                ),
                ElevatedButton(
                  onPressed: onTapSwitchImage,
                  style: style,
                  child: const Icon(Icons.image),
                ),
              ],
            ))
      ],
    );
  }
}
