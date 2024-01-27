import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.dark(
          background: Colors.black,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: PhotoGrid(),
    );
  }
}

class PhotoGrid extends StatelessWidget {
  final List<String> photoUrls = [
    'https://cdn-icons-png.flaticon.com/512/4893/4893176.png',
    'https://cdn-icons-png.flaticon.com/512/4508/4508000.png',
    'https://cdn-icons-png.flaticon.com/512/2424/2424869.png',
    'https://cdn-icons-png.flaticon.com/512/6448/6448414.png',
    'https://cdn-icons-png.flaticon.com/512/2503/2503529.png',
    'https://cdn-icons-png.flaticon.com/512/1357/1357574.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: photoUrls.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaintingsPage(),
                  ),
                );
              } 
              
              
              else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyPhotosPage(
                      photoText: 'Description for Photo $index',
                    ),
                  ),
                );
              }
            },
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3.0),
              ),
              child: Image.network(
                photoUrls[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class PaintingsPage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://collectionapi.metmuseum.org/api/collection/v1/iiif/250946/535359/main-image',
    'https://collectionapi.metmuseum.org/api/collection/v1/iiif/436947/2170247/main-image',
    'https://collectionapi.metmuseum.org/api/collection/v1/iiif/247009/530926/main-image',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Paintings'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
        ),
        itemCount: photoUrls.length,
        itemBuilder: (context, index) {
          return Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
            ),
            child: Image.network(
              photoUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class MyPhotosPage extends StatelessWidget {
  final String photoText;

  MyPhotosPage({required this.photoText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Detail'),
      ),
      body: Center(
        child: Text(photoText, style: TextStyle(fontSize: 20.0)),
      ),
    );
  }
}