import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome Back!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make it bold
              fontSize: 35.0, // Increase font size
            ),
          ),
          SizedBox(height: 8), // Add space between titles
          Text(
            'Log In', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold, // Make it bold
              fontSize: 30.0, // Increase font size
            ),
          ),
        ],
      ),
      centerTitle: true, // Center align the titles
      toolbarHeight: 120.0, // Adjust the height of the AppBar
      backgroundColor: Colors.blue, // Set background color of the toolbar
    ),
    backgroundColor: Colors.black, // Change the background color of the body
    body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white), // Set label text color
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white), // Set label text color
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Replace this with your authentication logic
                String username = _usernameController.text;
                String password = _passwordController.text;

                // For simplicity, just print the credentials for now
                print('Username: $username');
                print('Password: $password');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Set background color of the button
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white), // Set text color of the button
              ),
            ),
          ],
        ),
      ),
    );
  }
}


