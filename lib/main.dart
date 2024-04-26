import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apple',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apple'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Celulares Apple',
              ),
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
            ),
            buildListTile(context, 'iPhoneXR', 'assets/image1.jpg'),
            buildListTile(context, 'iPhone11', 'assets/image2.jpg'),
            buildListTile(context, 'iPhone12', 'assets/image3.jpg'),
            buildListTile(context, 'iPhone13', 'assets/image4.jpg'),
            buildListTile(context, 'iPhone14', 'assets/image5.jpg'),
            buildListTile(context, 'iPhone15', 'assets/image6.jpg'),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(BuildContext context, String title, String imagePath) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ImageScreen(imagePath: imagePath)),
        );
      },
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imagePath;

  const ImageScreen({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Christian Heredia 0367'),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
