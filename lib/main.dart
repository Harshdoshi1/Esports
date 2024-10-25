import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Gamer..Videos',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          buildGamerTile('Harsh', '20.2 K', 'assets/images/tomb_raider.png'),
          buildGamerTile('Malhar', '15.4 K', 'assets/images/tomb_raider.png'),
          // Add more tiles if needed
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget buildGamerTile(String username, String views, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Image.asset(imageUrl), // Use NetworkImage if loading online
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Text(username),
                  Spacer(),
                  Text('views $views'),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person_add, size: 16),
                    label: Text('Follow'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, 
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
