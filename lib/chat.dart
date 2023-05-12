import 'package:flutter/material.dart';
import 'package:itask/main.dart';
import 'package:itask/profile.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Page',
      home: Builder( builder: (BuildContext context){
        return Scaffold(
          backgroundColor: Color(0xFFFFFFFFF),
          appBar: AppBar(
            backgroundColor: Color(0xFFFFFFFFF),
            actions: <Widget>[
             IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Colors.black,
                onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()));},
             ),
              CircleAvatar(
                backgroundImage: AssetImage('lib/icons/cross.png'),
              ),
              Text(
                "\n User handle", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,),
              ),
              Spacer(),
              IconButton(
                icon: Image.asset('lib/icons/tele.png'),
                onPressed: (){},
                color: Colors.white,
              ),
              IconButton(
                icon: Image.asset('lib/icons/vc.png'),
                onPressed: (){},
                color: Colors.black,
              ),
            ],
          ),
          body: Column(
            children: [
              Spacer(),
              Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: (){},
                      icon: Image.asset('lib/icons/cam.png'),
                    ),
                    hintText: 'Enter a message',
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.send),
                      color: Colors.black,
                    ),
                  ),
                  ),
                ),
            ]
          )
        );
      })
    );
  }
}