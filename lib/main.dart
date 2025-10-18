import 'package:flutter/material.dart';

void main() {
  runApp(MyStructuredApp());
}

class MyStructuredApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Structured Flutter Layout',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Structured Layout Example'),
        backgroundColor: Colors.teal,
      ),
      //  Drawer created WITHOUT using ListView
      drawer: AppDrawer(),
      //  Body section organized with separate widgets
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'I am example of Row 1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Text('I am another text of Row 1'),
              ],
            ),
            Row(children: [Text('I am example of Row 2')]),

            /*  NestedRowColumnSection(),
            SizedBox(height: 20),
            IconRowSection(),
            SizedBox(height: 20),
            EmployeeInfoRow(),
            SizedBox(height: 20),
            EmployeeTableSection(),*/
          ],
        ),
      ),
    );
  }
}

//Drawer
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.teal),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                  ),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  'Welcome User',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          ListTile(leading: Icon(Icons.home), title: Text('Home')),
          ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
        ],
      ),
    );
  }
}

//
//  Nested Row & Column Example
//
class NestedRowColumnSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
          width: 100,
          height: 100,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flutter Layout Demo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Using Nested Rows and Columns'),
          ],
        ),
      ],
    );
  }
}

//
//  Row with Icons
//
class IconRowSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.favorite, color: Colors.red, size: 40),
        Icon(Icons.star, color: Colors.amber, size: 40),
        Icon(Icons.thumb_up, color: Colors.blue, size: 40),
      ],
    );
  }
}

//
//  Nested Row for Employee Info
//
class EmployeeInfoRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.person, size: 50, color: Colors.teal),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: Ali Khan",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Role: Flutter Developer"),
          ],
        ),
      ],
    );
  }
}

//
//  Table Example
//
class EmployeeTableSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Employee Data",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Department',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(padding: EdgeInsets.all(8.0), child: Text('Ali')),
                Padding(padding: EdgeInsets.all(8.0), child: Text('IT')),
                Padding(padding: EdgeInsets.all(8.0), child: Text('25')),
              ],
            ),
            TableRow(
              children: [
                Padding(padding: EdgeInsets.all(8.0), child: Text('Sara')),
                Padding(padding: EdgeInsets.all(8.0), child: Text('Design')),
                Padding(padding: EdgeInsets.all(8.0), child: Text('23')),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
