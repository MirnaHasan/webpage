
import 'package:flutter/material.dart';

import 'package:naghamati/musiclist.dart';

class Musicpage extends StatefulWidget {
  const Musicpage({super.key});

  @override
  State<Musicpage> createState() => _MusicpageState();
}

class _MusicpageState extends State<Musicpage> {
  @override
  Widget build(BuildContext context) {
    return InkWell( 
      borderRadius: BorderRadius.circular(22),
   
    focusColor: Color.fromARGB(255, 152, 38, 93),
     

        child: Center(
          child: const Text("GO TO MUSIC LIST", style: TextStyle(
        
            fontSize: 35, 
            color: Colors.black, 
            fontWeight: FontWeight.bold
          ),),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MusicList()));
        },
      
    );
  }
}