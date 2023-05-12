import 'package:flutter/material.dart';
import 'package:itask/chat.dart';
import 'package:itask/profile.dart';

void main() => runApp(InstaPage());

class InstaPage extends StatefulWidget{
  @override
  _InstaPageState createState() => _InstaPageState();
}

class _InstaPageState extends State<InstaPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Page',
      home: Builder(builder: (BuildContext context){
        return Scaffold(
          backgroundColor: Color(0xFFFFFFFFF),
          appBar: AppBar(
            backgroundColor: Color(0xFFFFFFFFF),
            actions: <Widget>[
              Image.asset(
                "lib/icons/ht.png"
              ),
              Spacer(),
              IconButton(
                icon: Image.asset('lib/icons/plus.png'),
                onPressed: (){},
                color: Colors.white,
              ),
              IconButton(
                icon: Image.asset('lib/icons/bheart.png'),
                onPressed: (){},
                color: Colors.white,
              ),
              IconButton(
                icon: Image.asset('lib/icons/plane.png'),
                onPressed: (){},
                color: Colors.white,
              ),
            ]
          ),
          body: Column(children:[
            const SizedBox(
              width: 13.86,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical:14.41),
              height: 99.25,
              child: Row( children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10, right:10),
                  child: Column( children: <Widget>[
                    InkWell(
                      child:CircleAvatar(
                        radius: 41.585,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('lib/icons/profile.png'),
                      ),
                      onTap: (){ },
                    ),
                    Text("Your story", style: TextStyle(color: Colors.black,),
                    ),
                  ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return StoryWidget();
                      }
                  )
                ),
              ]
              )
            ),
            const Divider(color: Colors.grey),
            Container(
              height: 66.53,
              child: Row( children: <Widget>[
                Container(
                  child: Row( children:<Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 5.26, bottom: 13.86,),
                      child: Row( children:<Widget>[
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xff4f5bd5), Color(0xff962fbf), Color(0xffd62976), Color(0xfffa7e1e), Color(0xfffeda75),
                              ],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                          ),
                          child: CircleAvatar(
                            radius: 19.585,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 16.585,
                              backgroundImage: AssetImage('lib/icons/cross.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width:5),
                        Text(" User \n Place", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16,),),
                      ])
                    ),
                  ]),
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ])
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff4f5bd5), Color(0xff962fbf), Color(0xffd62976), Color(0xfffa7e1e), Color(0xfffeda75),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
            Container(
              child: Row( children: <Widget>[
                Container(
                  child: Row( children: <Widget>[
                    Image.asset(
                      'lib/icons/bheart.png',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'lib/icons/chat.png',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'lib/icons/plane.png',
                    ),
                  ]),
                ),
                Spacer(),
                Image.asset('lib/icons/bookmark.png',),
              ]
              )
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "291003 Views", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "Liked by user \n Caption xyz", style: TextStyle(color: Colors.black, fontSize: 18,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "View all 66 comments", style: TextStyle(color: Colors.grey, fontSize: 18,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  "See translation", style: TextStyle(color: Colors.black, fontSize: 18,),
                ),
              ),
            ),
          ]
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image.asset('lib/icons/bhome.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Image.asset('lib/icons/mg.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Image.asset('lib/icons/vid.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Image.asset('lib/icons/bag.png'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Image.asset('lib/icons/pp.png'),
                label: '',
              ),
            ],
          ),
        );
      }),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:10),
      child: Column( children: <Widget>[
        InkWell(
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xff4f5bd5), Color(0xff962fbf), Color(0xffd62976), Color(0xfffa7e1e), Color(0xfffeda75),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: CircleAvatar(
              radius: 37.585,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 32.585,
                backgroundImage: AssetImage('lib/icons/cross.png'),
              ),
            ),
          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfilePage()));
          },
        ),
        Text("User", style: TextStyle(color: Colors.black),
        ),
      ],
      ),
    );
  }
}