import 'package:flutter/material.dart';
import 'package:assignment3/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    Song(
      songName: 'SongExample1',
      artistName: 'Kanye West',
      albumArtImagePath: 'assets/images/Kanye.webp',
    ),
    Song(
      songName: 'SongExample2',
      artistName: 'Travis Scott',
      albumArtImagePath: 'assets/images/travis.png',
    )

    //current song playing
  ];
  int? _currentSongIndex;

  //getters
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  //setters
  set currentSongIndex(int? newIndex) {
    //update current song Index
    _currentSongIndex = newIndex;

    //update UI
    notifyListeners();
  }
}
