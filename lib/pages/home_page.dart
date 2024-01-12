import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: const Text("PLAYLIST")),
      drawer: const MyDrawer(),
    );
  }
}
