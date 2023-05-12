import 'package:flutter/material.dart';
import 'package:itask/main.dart';
import 'package:itask/chat.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
        home: Builder( builder: (BuildContext context){
          return Scaffold(
            backgroundColor: Color(0xFFFFFFFFF),
            appBar: AppBar(
              backgroundColor: Color(0xFFFFFFFFF),
                actions: <Widget>[
                  IconButton(
                    onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> InstaPage()));},
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.black,
                  ),
                  Spacer(),
                  Text("\n User", style: TextStyle(color: Colors.black, fontSize: 20)),
                  Spacer(),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_horiz),
                    color: Colors.black,
                  ),
                ],
            ),
            body: Column( children:[
              const SizedBox(
                width: 13.86,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical:14.41),
                height: 69.25,
                child: Row( children: <Widget>[
                  const SizedBox(width: 10),
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
                    onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChatPage()));},
                  ),
                  Spacer(),
                  Text(" 200 \n Posts", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
                  Spacer(),
                  Text(" 140K \n Followers", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
                  Spacer(),
                  Text(" 2300 \n Following", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,)),
                  const SizedBox(width: 10),
                ]
                ),
              ),
              Container(
                height: 30,
                child: Row( children: <Widget>[
                  const SizedBox(width: 25),
                  Text(" User \n Status", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),)
                ]
                )
              ),
              Container(
                height:40,
                child: Row(children:<Widget>[
                  const SizedBox(width: 10),
                  Container(
                    height:25,
                    width: 90,
                    color: Colors.blue,
                    child: Text(
                      "Follow", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height:25,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300, //color of border
                        width: 2, //width of border
                      ),
                    ),
                    child: Text(
                      "Message", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Container(
                    height:25,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300, //color of border
                        width: 2, //width of border
                      ),
                    ),
                    child: Text(
                      "Contact", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(),
                  Expanded(child:FittedBox(
                      child: Image.asset('lib/icons/addc.png'),
                      fit: BoxFit.fill)),
                  const SizedBox(width: 10),
                ]
                )
              ),
              Container(
                height: 110,
                child: Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return FriendWidget();
                      }),
                ),
              ),
              Container(
                height: 30,
                child: Row( children:[
                  const SizedBox(width:10),
                  IconButton(
                    icon: Image.asset('lib/icons/grid.png'),
                    onPressed: (){},
                    color: Colors.black,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Image.asset('lib/icons/vid.png'),
                    onPressed: (){},
                    color: Colors.black,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Image.asset('lib/icons/play.png'),
                    onPressed: (){},
                    color: Colors.black,
                  ),
                  Spacer(),
                  IconButton(
                    icon: Image.asset('lib/icons/ptop.png'),
                    onPressed: (){},
                    color: Colors.black,
                  ),
                  const SizedBox(width:10),
                ])
              ),
              Expanded(
                  child: GridView.builder( itemBuilder: (BuildContext context, int index){
                    return PostWidget();
                  }, itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 100,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
              ),
                  ),
              ),
          ]),
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
    })
    );
  }
}

class FriendWidget extends StatelessWidget {
  const FriendWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:10),
      child: Column( children: <Widget>[
        InkWell(
          child: CircleAvatar(
        radius: 37.585,
        backgroundImage: AssetImage('lib/icons/cross.png'),
        ),
          onTap: (){},
        ),
        Text("User", style: TextStyle(color: Colors.black),
        ),
      ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white, //color of border
          width: 5, //width of border
        ),
        gradient: LinearGradient(
          colors: [Color(0xff4f5bd5), Color(0xff962fbf), Color(0xffd62976), Color(0xfffa7e1e), Color(0xfffeda75),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}