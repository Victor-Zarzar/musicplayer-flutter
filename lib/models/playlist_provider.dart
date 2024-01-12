import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "Children of The Sea",
        artistName: "Black Sabbath",
        albumArtImagePath: "assets/images/heavenandhell.jpg",
        audioPath: "audio/ Children Of The Sea.mp3"),
    Song(
        songName: "Eagle Fly Free",
        artistName: "Helloween",
        albumArtImagePath: "assets/images/helloween.jpg",
        audioPath: "audio/Eagle Fly Free.mp3"),
    Song(
        songName: "Fear Of The Dark",
        artistName: "Iron Maiden",
        albumArtImagePath: "assets/images/fearofthedark.jpg",
        audioPath: "audio/Fear of the Dark.mp3"),
    Song(
        songName: "Alive",
        artistName: "Pearl Jam",
        albumArtImagePath: "assets/images/ten.jpg",
        audioPath: "audio/Alive.mp3"),
  ];

  int? _currentSongIndex;

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  set currentSong(int? newIndex) {
    _currentSongIndex = newIndex;

    notifyListeners();
  }
}
