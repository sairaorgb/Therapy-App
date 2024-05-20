import 'package:flutter/material.dart';

class Reading extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/images/reading.jpg',
    'assets/images/reading.jpg'
  ];

  final List<String> labels = [
    'Read and Choose the Image',
    'Match Capital and Small letters',
  ];

  final List<String> pageroutes = [
    '/Readingpicture',
    '/Readingmatch',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
          ),
        ],
        title: Text(
          'Reading-Therapy',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Color(0xFFBDFCC9), // Seafoam Green
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFBDFCC9), // Seafoam Green
              ),
              child: Text(
                'Quick Access',
                style: TextStyle(
                  color: Colors.green[800],
                  fontSize: 34,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.hearing),
              title: Text(
                'Listening',
                style: TextStyle(fontSize: 21),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Listening');
              },
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Writing', style: TextStyle(fontSize: 21)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Writing');
              },
            ),
            ListTile(
              leading: Icon(Icons.mic),
              title: Text('Speaking', style: TextStyle(fontSize: 21)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Speaking');
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Reading', style: TextStyle(fontSize: 21)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/Reading');
              },
            ),
          ],
        ),
      ),
      body: PageView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, pageroutes[index]);
            },
            child: Container(
              color: Color(0xFFF2F2F2), // Light Gray background
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      imagePaths[index],
                      width: 400, // Adjust size as needed
                      height: 400,
                    ),
                    SizedBox(height: 20),
                    Text(
                      labels[index],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF001F3F), // Dark Navy
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}