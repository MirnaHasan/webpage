import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';






void main(){
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 181, 218),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 191, 182, 193),
          title: const Row(
            children: [
              Icon(Icons.queue_music , size: 35,color: Color.fromARGB(255, 156, 105, 166),), 
              const Text("   Naghamati", style: TextStyle(
                fontFamily: "EduAUVICWANTHand",
                fontSize: 32, 
                fontWeight: FontWeight.bold, 
                color: Color.fromRGBO(103, 7, 85, 0.565),
              ),) , 
           
              Text(" App", style: TextStyle(
                 fontFamily: "EduAUVICWANTHand",
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color: Color.fromARGB(144, 119, 21, 83),
              ),) , 
            ],
          )
        ),
        body: Column(
          children: [
            MaterialButton( color: Colors.white,
              onPressed: (){
           
              

            }, 
            child: Text("my music "),)
          ],
        )
      ),
    );
  }
}
