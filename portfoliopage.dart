import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black ,
        appBar: AppBar(
          elevation: 0.0,
          title: Text("My Portfolio"),
          backgroundColor: Colors.black ,
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0.0),
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text("Rishabh Singh"),
                accountEmail: Text("rishabh131199@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.person, color: Colors.black,),
                  ),
                ),
                decoration: new BoxDecoration(
                    color: Colors.black
                ),
              ),

              //body

              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Portfolio()));},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(
                      Icons.home,
                      color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              profile(),

            socialmedias(),
            ],
          ),
        ),
      ),
    );
  }
}


class Buttons extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const Buttons(
      {Key key,
        @required this.text,
        @required this.onPressed,
        this.color = Colors.orange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}


class profile extends StatelessWidget {
  profileImage(context) => Container(
    decoration: BoxDecoration(

//            borderRadius: BorderRadius.circular(40),
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage('images/i.jpg'),
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    ),

  );
  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text(
    "Hi there! My name is",
    textScaleFactor: 2,
    style: TextStyle(color: Colors.orange),
  ),
      Text(
  "Rishabh\nSingh",
  textScaleFactor: 5,
  style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  ),
  ),
  SizedBox(
  height: 10,
  ),
  Text(
  "I am a programmer, an aspiring engineer, technology geek and an individual with ideas.\n"
  "My interests include android development\n"
  "using flutter and machine learning.",
  softWrap: true,
  textScaleFactor: 1.5,
  style: TextStyle(color: Colors.white70),
  ),
  SizedBox(
  height: 20,
  ),
],
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        profileImage(context),
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.1,
        ),
        profileData,
      ],
    );
  }
  }

  class socialmedias extends StatelessWidget {
    List<Widget> socialbuttons() {
      return [
        Buttons(
          text: "Github",
          onPressed: () {},
          color: Colors.blue,
        ),
        Buttons(
          text: "Twitter",
          onPressed: () {},
          color: Colors.blue,
        ),
        Buttons(
          text: "Facebook",
          onPressed: () {},
          color: Colors.blue,
        ),
        Buttons(
          text: "Instagram",
          onPressed: () {},
          color: Colors.blue,
        ),
      ];
    }


    @override
    Widget build(BuildContext context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          ...socialbuttons(),

      ],
      );
    }
  }





