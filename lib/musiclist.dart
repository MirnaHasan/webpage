import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class MusicList extends StatefulWidget {
  const MusicList({super.key});

  @override
  State<MusicList> createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
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
   Card mybutton(int musicNumber){
      return Card(
                  child: ListTile(
                    leading: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        playmusic(musicNumber);
                      },
                      child: const Text("my music " , style: TextStyle(fontSize: 17 , 
                       color: Colors.black , fontWeight: FontWeight.bold )),
                    ),
                    title: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        pause();
                      },
                      child: const Text("Pause " ,  style: TextStyle(fontSize: 17 ,  color: Colors.black , fontWeight: FontWeight.bold)),
                    ),
                    trailing: MaterialButton(
                      color: Colors.white,
                      onPressed: () async {
                        stop();
                      },
                      child: const Text("Stop " ,  style: TextStyle(fontSize: 17 ,   color: Colors.black , fontWeight: FontWeight.bold)),
                    ),
                  ),
                );
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "   Music",
                    style: TextStyle(
                      fontFamily: "EduAUVICWANTHand",
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(103, 7, 85, 0.565),
                    ),
                  ),
                  Text(
                    " List",
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
                  height: 30,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Life is beautiful with music", style: TextStyle(
                      fontFamily: "EduAUVICWANTHand",
                      fontSize: 24,
                      fontWeight: FontWeight.bold, 
                      color: Colors.black,
                    ),),
                    SizedBox(height: 10,), 
                     Text("Enjoy Your Free Time", style: TextStyle(
                      fontFamily: "EduAUVICWANTHand",
                      fontSize: 24,
                      fontWeight: FontWeight.bold, 
                      color: Colors.black,
                    ),),
                  ],
                ),
                const SizedBox(height: 20,),
               mybutton(1),
                const SizedBox(
                  height: 30,
                ),
                mybutton(2),
                const SizedBox(
                  height: 30,
                ),
               mybutton(3),
                
                const SizedBox(
                  height: 30,
                ),
                mybutton(4), 
                 const SizedBox(
                  height: 30,
                ),
               mybutton(5),
                const SizedBox(
                  height: 30,
                ),
               mybutton(6),
                const SizedBox(
                  height: 30,
                ),
                mybutton(7), 
                const SizedBox(
                  height: 30,
                ),
                mybutton(8),
                const SizedBox(
                  height: 30,
                ),
                mybutton(9),
                const SizedBox(
                  height: 30,
                ),
               mybutton(10),
                const SizedBox(
                  height: 30,
                ),
                mybutton(11),
                const SizedBox(height: 30,)  , 
                Center(
                  child: InkWell( 
                    borderRadius: BorderRadius.circular(10),
                  
                    onTap: (){
                    
                  },
                  child: Text("The End" , style: TextStyle(
                    fontSize: 35,
                      color: Colors.black , fontWeight: FontWeight.bold
                  ),),),
                ) , 
                SizedBox(height: 70,)
              ],
            ),
          ),
        );
  }
}