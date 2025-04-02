import 'package:flutter/material.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? desc;
  bool isLast;

  Task({
    this.iconData,
    this.title,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.desc,
    this.isLast = false, // Default to false
  });

  static List<Task> generatedTasks() {
    return [
      Task(
        iconData: Icons.person_2_rounded,
        title: 'Personal',
        bgColor: Colors.yellowAccent[100],
        iconColor: Colors.yellow[500],
        btnColor: Colors.yellowAccent[200],
        left: 3,
        done: 1,
        desc: [
          {
            'time': '9:00 am',
            'title': 'Take your Dog for a walk',
            'slot': '9:00-10:00 am',
            'tlcolor': Colors.redAccent[500],
            'bgcolor': Colors.redAccent[500],
          },
          {
            'time': '10:00 am',
            'title': 'Play Video Games',
            'slot': '10:00-12:00 am',
            'tlcolor': Colors.blueAccent[500],
            'bgcolor': Colors.lightBlue[300],
          },
          {
            'time': '11:00 am',
            'title': '',
            'slot': '',
            'tlcolor': Colors.grey[200],
          },
          {
            'time': '12:00 am',
            'title': '',
            'slot': '',
            'tlcolor': Colors.blueGrey[500],
          },
          {
            'time': '1:00 pm',
            'title': 'Go to Gym',
            'slot': '1:00-2:00 pm',
            'tlcolor': Colors.yellowAccent[500],
            'bgcolor': Colors.yellowAccent[200],
          },
          {
            'time': '2:00 pm',
            'title': '',
            'slot': '',
            'tlcolor': Colors.grey[500],
          },
          {
            'time': '3:00 pm',
            'title': '',
            'slot': '',
            'tlcolor': Colors.grey[500],
          },
        ],
      ),
      Task(
        iconData: Icons.cases_rounded,
        title: 'Work',
        bgColor: Colors.blueAccent[100],
        iconColor: Colors.blue[500],
        btnColor: Colors.blueAccent[200],
        left: 5,
        done: 1,
        desc: [
          {
            'time': '9:00 am',
            'title': 'Check Emails & Messages',
            'slot': '9:00-9:30 am',
            'tlcolor': Colors.blueAccent[400],
            'bgcolor': Colors.blueAccent[200],
          },
          {
            'time': '10:00 am',
            'title': '',
            'slot': '',
            'tlcolor': Colors.grey[500],
            'bgcolor': Colors.grey[500],
          },
          {
            'time': '11:00 am',
            'title': 'Project Work / Coding Session',
            'slot': '11:00 am - 1:00 pm',
            'tlcolor': Colors.indigoAccent[400],
            'bgcolor': Colors.indigoAccent[200],
          },
          {
            'time': '1:00 pm',
            'title': 'Lunch Break & Relaxation',
            'slot': '1:00-2:00 pm',
            'tlcolor': Colors.yellowAccent[400],
            'bgcolor': Colors.yellowAccent[200],
          },
          {
            'time': '2:00 pm',
            'title': 'Continue Work on Project',
            'slot': '2:00-4:00 pm',
            'tlcolor': Colors.blueGrey[500],
            'bgcolor': Colors.blueGrey[300],
          },
          {
            'time': '5:00 pm',
            'title': 'Review Daily Progress',
            'slot': '5:00-5:30 pm',
            'tlcolor': Colors.purpleAccent[400],
            'bgcolor': Colors.purpleAccent[200],
          },
        ],
      ),
      Task(
        iconData: Icons.favorite_border_rounded,
        title: 'Health',
        bgColor: Colors.redAccent[100],
        iconColor: Colors.red[500],
        btnColor: Colors.redAccent[300],
        left: 7,
        done: 0,
        desc: [
          {
            'time': '7:00 am',
            'title': 'Morning Workout',
            'slot': '7:00-8:00 am',
            'tlcolor': Colors.greenAccent[400],
            'bgcolor': Colors.greenAccent[200],
          },
          {
            'time': '8:00 am',
            'title': 'Healthy Breakfast',
            'slot': '8:00-8:30 am',
            'tlcolor': Colors.orangeAccent[400],
            'bgcolor': Colors.orangeAccent[200],
          },
          {
            'time': '4:00 pm',
            'title': 'Short Walk & Coffee Break',
            'slot': '4:00-4:30 pm',
            'tlcolor': Colors.tealAccent[400],
            'bgcolor': Colors.tealAccent[200],
          },
          {
            'time': '6:00 pm',
            'title': 'Evening Workout or Yoga',
            'slot': '6:00-7:00 pm',
            'tlcolor': Colors.redAccent[400],
            'bgcolor': Colors.redAccent[200],
          },
          {
            'time': '7:30 pm',
            'title': 'Dinner & Family Time',
            'slot': '7:30-8:30 pm',
            'tlcolor': Colors.amberAccent[400],
            'bgcolor': Colors.amberAccent[200],
          },
          {
            'time': '9:00 pm',
            'title': 'Watch Netflix / Read a Book',
            'slot': '9:00-10:00 pm',
            'tlcolor': Colors.pinkAccent[400],
            'bgcolor': Colors.pinkAccent[200],
          },
          {
            'time': '10:30 pm',
            'title': 'Plan Next Day & Relax',
            'slot': '10:30-11:00 pm',
            'tlcolor': Colors.lightBlueAccent[400],
            'bgcolor': Colors.lightBlueAccent[200],
          },
        ],
      ),

      Task(isLast: true),
    ];
  }
}
