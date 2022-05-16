import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final _player = AudioPlayer();

  // Try to load audio from a source and catch any errors.
  try {
    await _player.setAudioSource(AudioSource.uri(
        // Uri.parse("https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3")));
        Uri.parse("asset:///audio/nature.mp3")));

    // await _player.setAsset("audio/nature.mp3");

    _player.play();
  } catch (e) {
    print("Error loading audio source: $e");
  }
}
