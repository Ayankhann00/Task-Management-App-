import 'package:flutter/material.dart';
import 'package:task_app/screens/home/widgets/go_prem_wid.dart';
import 'package:task_app/screens/home/widgets/tasks.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(), // Calling the separate method
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPrem(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Tasks:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Tasks()),
        ],
      ),
      bottomNavigationBar: _buildbottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add, size: 35, color: Colors.white),
      ),
    );
  }

  Widget _buildbottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_rounded, size: 30),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(Icons.person_2_rounded, size: 30),
            ),
          ],
        ),
      ),
    );
  }

  // Separate method for the AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 40, width: 40),
          SizedBox(width: 10),
          Text(
            'Hi, Ayan!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8), // Space between text and box
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2), // ✅ Fixed missing comma
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert, color: Colors.black, size: 30),
          onPressed: () {
            print("More options tapped");
          },
        ),
      ],
    );
  }
}
