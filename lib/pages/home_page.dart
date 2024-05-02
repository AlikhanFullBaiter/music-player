import 'package:assignment3/models/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:assignment3/components/my_drawer.dart';
import 'package:provider/provider.dart';
import 'package:assignment3/models/song.dart';
import 'package:assignment3/pages/song_page.dart';
// import 'package:assignment3/models/song.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //get the playlist provider
  late final dynamic playlistProvider;

  @override
  void initState() {
    super.initState();

    //get playlist provider
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  //go to song

  void goToSong(int songIndex) {
    //update current song index
    playlistProvider.currentSongIndex = songIndex;

    //navigate to song page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SongPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(title: Text('P L A Y L I S T')),
        drawer: const MyDrawer(),
        body: Consumer<PlaylistProvider>(
          builder: (context, value, child) {
            final List<Song> playlist = value.playlist;

            //return list view UI
            return ListView.builder(
                itemCount: playlist.length,
                itemBuilder: (context, index) {
                  final Song song = playlist[index];
                  return ListTile(
                    title: Text(song.songName),
                    subtitle: Text(song.artistName),
                    leading: Image.asset(song.albumArtImagePath),
                    onTap: () => goToSong(index),
                  );
                });
          },
        ));
  }
}
