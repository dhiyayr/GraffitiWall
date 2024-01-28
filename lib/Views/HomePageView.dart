import 'package:flutter/material.dart';
import 'package:graffitiwall/main.dart';

/*
class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Gallery'),
      ),
      body: PhotoGrid(),
      bottomNavigationBar: BottomNav(), // Add bottomNav here

    );
  }
}
*/

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PhotoGrid(); // Returns only the PhotoGrid widget
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
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WritingPage(),
                  ),
                );
              }
              if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MusicPage(),
                  ),
                );
              }
              if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhotographyPage(),
                  ),
                );
              }
              if (index == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilmPage(),
                  ),
                );
              }
              if (index == 5) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DancePage(),
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
          return GestureDetector(
            onTap: () {
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class WritingPage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://images.pexels.com/photos/261763/pexels-photo-261763.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1410226/pexels-photo-1410226.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Writing'),
      ),
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
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class MusicPage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://images.pexels.com/photos/1389429/pexels-photo-1389429.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/534283/pexels-photo-534283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
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
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class PhotographyPage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://images.pexels.com/photos/1264210/pexels-photo-1264210.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/752525/pexels-photo-752525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photography'),
      ),
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
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}

class FilmPage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://images.pexels.com/photos/918281/pexels-photo-918281.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/66134/pexels-photo-66134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Film'),
      ),
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
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}


class DancePage extends StatelessWidget {
  final List<String> photoUrls = [
    'https://images.unsplash.com/photo-1537365587684-f490102e1225?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.pexels.com/photos/7194017/pexels-photo-7194017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1701202/pexels-photo-1701202.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dance'),
      ),
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
              _showCommentDialog(context, photoUrls[index]);
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

  void _showCommentDialog(BuildContext context, String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Comment'),
          content: TextField(
            decoration: InputDecoration(
              hintText: 'Type your comment here...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to save the comment
                // You can access the entered comment using the controller of the TextField
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }
}