import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/components/neu_box.dart';
import 'package:musicplayer_flutter/models/playlist_provider.dart';
import 'package:provider/provider.dart';

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text("P L A Y L I S T"),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.menu),
                  ),
                ],
              ),
              NeuBox(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset("assets/images/heavenandhell.jpg"),
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
                                  fontWeight: FontWeight.bold, fontSize: 25),
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
              )),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text("0:00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("0:00"),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
