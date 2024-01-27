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

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      // Optionally add onTap, currentIndex, etc. here
      // For example:
      // currentIndex: _selectedIndex,
      // onTap: _onItemTapped,
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
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: PhotoGrid(),
      bottomNavigationBar: BottomNav(), // Add bottomNav here
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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 0, // Horizontal space between tiles
        mainAxisSpacing: 0, // Vertical space between tiles
      ),
      itemCount: photoUrls.length,
      itemBuilder: (context, index) {
        String photoText;
        // Define photoText based on the index
        switch (index) {
          case 0:
            photoText = 'Paintings!';
            break;
          case 1:
            photoText = 'Drawings!';
            break;
          case 2:
            photoText = 'Music!';
            break;
          case 3:
            photoText = 'Photography!';
            break;
          case 4:
            photoText = 'Film!';
            break;
          case 5:
            photoText = 'Dance!';
            break;
          default:
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3.0),
            ),
            child: Image.network(
              photoUrls[index],
              fit: BoxFit.cover, // Image scaling
            ),
          ),
        );
      },
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
