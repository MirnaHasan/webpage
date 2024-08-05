import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

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
    getDataInAssets();
    super.initState();

    player = AudioPlayer();

    player.setReleaseMode(ReleaseMode.stop);
  }

  void playmusic(String music) {
    log('message : onPlay $music');
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(
        AssetSource(music),
      );
      await player.resume();
    });
  }

  List<String> files = [];

  Future<void> getDataInAssets() async {
    final assetManifest = await AssetManifest.loadFromAssetBundle(
      rootBundle,
    );
// This returns a List<String> with all your file
    files = assetManifest
        .listAssets()
        .where((string) => string.startsWith("assets/songs/"))
        .toList();
    setState(() {});
  }

  @override
  void dispose() {
    player.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 216, 181, 218),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 191, 182, 193),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
          // * هنا طريقة الاستخدام 
          child: ListView.builder(
            itemCount: files.length , // ! طول المصفوفة  فوق موجودة 
            itemBuilder: (c, i)//*! c تعني buildcontext و i تعني index             *//
             {
              // ! هنا شغل المصمم لليست فيو 
              return Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width   ,
                child: Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.all(8.0),
                  color: Color.fromARGB(255, 191, 182, 193),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.white, width: 2.0),
                
                  ),
                   
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: Color.fromARGB(255, 156, 105, 166),
                        onPressed: () async {
                          await player.stop();
                          playmusic(files[i].replaceAll("assets/", ""));
                        },
                        child: Text(
                            'Play ${files[i].replaceAll("assets/songs/", "")}',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      MaterialButton(
                        color: Color.fromARGB(255, 156, 105, 166),
                        onPressed: () async {
                          await player.pause();
                        },
                        child: const Text("Pause ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      MaterialButton(
                        color: Color.fromARGB(255, 156, 105, 166),
                        onPressed: () async {
                          await player.stop();
                        },
                        child: const Text("Stop ",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
