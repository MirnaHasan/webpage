import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Music());
}

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  late AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    super.initState();

    player = AudioPlayer();

    player.setReleaseMode(ReleaseMode.stop);
  }

  @override
  void dispose() {
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void playmusic(int musicNumber ) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        await player.setSource(
          AssetSource('songs/song$musicNumber.mp3'),
        );
        await player.resume();
      });
    }

    void pause() async {
      await player.pause();
    }

    void stop() async {
      await player.stop();
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 216, 181, 218),
          appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 191, 182, 193),
              title: const Row(
                children: [
                  Icon(
                    Icons.queue_music,
                    size: 35,
                    color: Color.fromARGB(255, 156, 105, 166),
                  ),
                  Text(
                    "   Naghamati",
                    style: TextStyle(
                      fontFamily: "EduAUVICWANTHand",
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(103, 7, 85, 0.565),
                    ),
                  ),
                  Text(
                    " App",
                    style: TextStyle(
                      fontFamily: "EduAUVICWANTHand",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(144, 119, 21, 83),
                    ),
                  ),
                ],
              )),
          body: Center(
            child: ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(1);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(2);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(3);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(4);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(5);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(6);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(7);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(8);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(9);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(10);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(11);
                      },
                      child: const Text("my music "),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause "),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop "),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
