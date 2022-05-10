import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final player = AudioPlayer();
  // final audioSource = AudioSource.uri(Uri.parse(
  //     "https://www.dropbox.com/s/e9crwcf9b4t1uyw/12%20Say%20It%20Ain%27t%20So.mp3?raw=1"));
  // await player.setAudioSource(audioSource);
  // await player.play();

  await player.setAsset("audio/Say It Ain't So demo.mp3");
  player.play();
  return;
}
