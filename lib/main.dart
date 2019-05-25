import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basics 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Basics 4 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        children: boxCards,
      ),
    );
  }
}

List<BoxCard> boxCards = [
  BoxCard('Flights', Icons.flight, 'assets/flight.jpg'),
  BoxCard('Hotels', Icons.hotel, 'assets/hotel.jpg'),
  BoxCard('Video Call', Icons.video_call, 'assets/videocamera.jpg'),
  BoxCard('Photo', Icons.photo_camera, 'assets/photocamera.jpg'),
  BoxCard('Flights', Icons.flight, 'assets/flight.jpg'),
  BoxCard('Hotels', Icons.hotel, 'assets/hotel.jpg'),
  BoxCard('Video Call', Icons.video_call, 'assets/videocamera.jpg'),
  BoxCard('Photo', Icons.photo_camera, 'assets/photocamera.jpg'),
  BoxCard('Flights', Icons.flight, 'assets/flight.jpg'),
  BoxCard('Hotels', Icons.hotel, 'assets/hotel.jpg'),
  BoxCard('Video Call', Icons.video_call, 'assets/videocamera.jpg'),
  BoxCard('Photo', Icons.photo_camera, 'assets/photocamera.jpg'),
];

class BoxCard extends StatelessWidget {
  final String cardText, imagePath;
  final IconData cardIcon;

  BoxCard(this.cardText, this.cardIcon, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(cardText);
      },
      child: Card(
        elevation: 2.0,
        color: Colors.amberAccent,
        child: Container(
          height: 180,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 130,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          cardIcon,
                          color: Colors.blueGrey,
                        ),
                        Text(cardText),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
