import 'main.dart';
//import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PlaySound {
   // Use the existing instance from main.dart
  //final audioPlayer = main().playSound.audioPlayer; // Use the existing instance from main.dart

  Future<void> playazan(DateTime ringTime) async {
    if (ringTime.isBefore(DateTime.now())) {
      // If the time is in the past, do not play the sound
      return;
    }
    if (DateTime.now().minute == ringTime.minute || DateTime.now().isAfter(ringTime)) {
      // Schedule the sound to play at the specified time
      await audioPlayer.setSource(AssetSource('azan1.mp3'));
      await audioPlayer.setReleaseMode(ReleaseMode.stop);
      await audioPlayer.setVolume(1.0);
      await audioPlayer.setPlaybackRate(1.0);
    }
    await audioPlayer.resume();
  }

  Future<void> stopSound() async {
    await audioPlayer.stop();
  }
}
