import 'package:assignment3/components/neu_box.dart';
import 'package:flutter/material.dart';
// import 'package:assignment3/components/neu_box.dart';
import 'package:provider/provider.dart';
import 'package:assignment3/models/playlist_provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //app bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //back button
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),

                    //title
                    const Text('P L A Y L I S T'),

                    //menu button
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                //album artwork
                NeuBox(
                  child: Column(
                    children: [
                      //image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset('assets/images/Kanye.webp'),
                      ),

                      //song and artist name and icon
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //song and artist name
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "You cant tell me nothing",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text("Kanye West"),
                              ],
                            ),
                            //heart icon

                            Icon(Icons.favorite, color: Colors.red),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),
                //songduration
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //start time
                          Text('0:00'),
                          //shuffle icon
                          Icon(Icons.shuffle),
                          //repeat icon
                          Icon(Icons.repeat),
                          //end time
                          Text("3:51")
                        ],
                      ),
                      Slider(
                        min: 0,
                        max: 100,
                        value: 23,
                        activeColor: Colors.green,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                //playback controls
                Row(
                  children: [
                    Expanded(
                      child:
                          //skip previous
                          GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.skip_previous),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child:
                          //play pause
                          GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.play_arrow),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child:
                          //skip next
                          GestureDetector(
                        onTap: () {},
                        child: NeuBox(
                          child: Icon(Icons.skip_next),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
