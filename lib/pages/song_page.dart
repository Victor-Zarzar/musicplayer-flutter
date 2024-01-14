import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/components/neu_box.dart';
import 'package:musicplayer_flutter/models/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(builder: (context, value, child) {
      final playlist = value.playlist;

      final currentSong = playlist[value.currentSongIndex ?? 0];

      return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Text("P L A Y L I S T"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                NeuBox(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(currentSong.albumArtImagePath),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Children Of The Sea",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  "Black Sabbath",
                                  style: TextStyle(fontSize: 15),
                                )
                              ],
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0:00"),
                              Icon(Icons.shuffle),
                              Icon(Icons.repeat),
                              Text("0:00"),
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                                thumbShape: const RoundSliderThumbShape(
                                    enabledThumbRadius: 0)),
                            child: Slider(
                              min: 0,
                              max: 100,
                              value: 50,
                              activeColor: Colors.red,
                              onChanged: (value) {},
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.skip_previous),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.play_arrow),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: const NeuBox(
                              child: Icon(Icons.skip_next),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
