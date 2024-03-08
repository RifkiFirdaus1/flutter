import 'package:flutter/material.dart';
import 'package:wireframe/pages/about.dart';
import 'package:wireframe/pages/explore.dart';
import 'package:wireframe/pages/login.dart';

class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      backgroundColor: Colors.teal.shade200,
        title: Text('NutriGlow',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900
            ),
          ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage())
            );
            },
          ),
        ],
      ),
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome to the Home Page!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                        Navigator.push(
                          context,
                            MaterialPageRoute(builder: (context) => ExplorePage()),
                          );
                        },
                      child: Text('EXPLORE'),
                      ),
                    ],
                  )
                  // Add your home page content here
                  // Example: Image.asset('assets/home_image.png', height: 200),
                  //          Text('Hello, User!'),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutMePage())
            );
        },
        child: Icon(Icons.arrow_right_alt),
      ),
    );
  }
}