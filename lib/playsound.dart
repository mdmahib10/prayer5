import 'main.dart';
//import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class PlaySound {
   // Use the existing instance from main.dart
  //final audioPlayer = main().playSound.audioPlayer; // Use the existing instance from main.dart
  Timer? _azanTimer;
  void scheduleAzan(DateTime ringTime) {
    final now = DateTime.now();
    final duration = ringTime.difference(now);

    // Cancel any previous timer
    _azanTimer?.cancel();

    if (duration.isNegative) {
      // Time is in the past, do nothing
      return;
    }

    _azanTimer = Timer(duration, () async {
      await audioPlayer.setSource(AssetSource('azan1.mp3'));
      await audioPlayer.setReleaseMode(ReleaseMode.stop);
      await audioPlayer.setVolume(1.0);
      await audioPlayer.setPlaybackRate(1.0);
      await audioPlayer.resume();
    });
  }


  Future<void> stopSound() async {
    await audioPlayer.stop();
  }
}
