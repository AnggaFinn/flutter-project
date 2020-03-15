import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter App 1.2",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: Icon(
          Icons.home,
          size: 35.0,
        ),
        title: Center(
          child: Text("My Profile"),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 35.0,
          )
        ],
      ),
      body: AvatarWidget(),
    ),
  ));
}

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(90.0),
            child: Image.network(
              'https://scontent.fdps5-1.fna.fbcdn.net/v/t1.0-9/p960x960/31084193_1544032935705302_4396908645418270720_o.jpg?_nc_cat=103&_nc_sid=85a577&_nc_oc=AQnIyE49jBs6qBR21bkvfGpstVv3adwPvEBTYkSIMPMnbFk2FFP649RoTKm0fyJSk6A&_nc_ht=scontent.fdps5-1.fna&_nc_tp=6&oh=b9076e4b9905734bc33b226dca9a59cc&oe=5E916035',
              fit: BoxFit.cover,
              width: 100.0,
              height: 100.0,
            ),
          ),
          Text(
            "Kadek Angga",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              height: 2.0,
              fontFamily: "serif",
            ),
          ),
          Text(
            "1815051061",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontFamily: "serif",
            ),
          ),
          Card(
            margin: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          size: 100,
                          color: Colors.red,
                        ),
                        Text(
                          'kadekangga904@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'serif'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          size: 100,
                          color: Colors.green,
                        ),
                        Text(
                          '087854802591',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: WidgetProfile(),
          ), 
        ],
      ),
    );
  }
}

class WidgetProfile extends StatelessWidget {
  const WidgetProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              children: <Widget>[
                Expanded(
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.headset,
                          size: 100,
                          color: Colors.deepOrangeAccent,
                        ),
                        Text(
                          'Lo-Fi & Hip-Hop',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'serif'),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    color: Colors.lightBlueAccent,
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          size: 100,
                          color: Colors.yellow[300],
                        ),
                        Text(
                          'Games',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
    }
}