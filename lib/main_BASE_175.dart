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
        colorScheme: ColorScheme.dark( // Use dark color scheme for a black background
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
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0, // Adjust the horizontal spacing
          mainAxisSpacing: 0, // Adjust the vertical spacing
        ),
        itemCount: photoUrls.length,
        itemBuilder: (context, index) {
        String photoText;

          if (index == 0) {
            photoText = 'Paintings!';
          } else if (index == 1) {
            photoText = 'Drawings!';
          } 
          else if (index == 2) {
            photoText = 'Music!';
          } 
          else if (index == 3) {
            photoText = 'Photography!';
          } 
          else if (index == 4) {
            photoText = 'Film!';
          } 
          else if (index == 5) {
            photoText = 'Dance!';
          } 
          else {
            photoText = 'Description for Photo $index';
          }


          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoDetailPage(
                    
                    photoText: photoText,
                  ),
                ),
              );
            },
            child: Container(
              width: 120.0, // Set the desired width
              height: 120.0, // Set the desired height
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3.0),
              ),
              child: Image.network(
                photoUrls[index],
                fit: BoxFit.cover, // Use BoxFit to control the image's scaling behavior
              ),
            ),
          );
        },
      ),
    );
  }
}

class PhotoDetailPage extends StatelessWidget {
  final String photoText;

  PhotoDetailPage({required this.photoText});

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