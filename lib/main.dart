import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile_fourgreen/componens/Rounded_Text.dart';

void main() {
  runApp(new MaterialApp(
    title: "FourGreen Company",
    home: new Profile(),
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(

        children: <Widget>[
          Container(
            height: 230,
            color: Color(0xFF04855e),
          ),

          new Row(
            children: <Widget>[
              RoundedText(tx: "Toko Saya",),
              new Container(
                margin: EdgeInsets.only(left: 70, top: 10),
                child: IconButton(icon: new Icon(Icons.settings, size: 40,), onPressed: null),
              ),
              new IconButton(icon: new Icon(Icons.shopping_cart, size: 40,), onPressed: null),
              new IconButton(icon: new Icon(Icons.mark_chat_unread_outlined, size: 40,), onPressed: null)
            ],
          ),
          new Container(
            height: 100,
            width: 70,
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('img/yatia.jpg'), fit: BoxFit.cover,)
            ),
          ),
          new Column(
            children: <Widget>[
            new Container(
              margin: EdgeInsets.only(right: 125,top: 70),
              child: Text("YatiaNurdani", style: TextStyle(fontSize: 15, color: Colors.white),),
              ),
              RoundedText2(),
              new Container(
                margin: EdgeInsets.only(bottom: 20, right: 80),
                child: Text("PENGIKUT 100 | MENGIKUTI 20", style: TextStyle(color: Colors.white, fontSize: 10),),
              ),
              new Row(
                children: <Widget>[
                  RoundedImg(),
                  RoundedImg2(),
                  RoundedImg3()
                ],
              ),
              new Column(
                children: <Widget>[
                  RoundedText3(),
                  RoundedText4(),
                  RoundedTextLogout()
                ],
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // onTap: onTabTapped,
        // currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        iconSize: 20,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_outlined),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.group_outlined),
            label: 'COMUNNITY',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.now_widgets_outlined),
            label: 'NEWSUPDATE',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'NOTIFIKASI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'PROFILE',
          )
        ],
      ),
    );
  }
}
