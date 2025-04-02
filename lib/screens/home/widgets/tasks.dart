import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task_app/screens/detail/detail.dart';

class Tasks extends StatelessWidget {
  final List<Task> genTasks = Task.generatedTasks();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10), // Added padding for better spacing
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: genTasks.length, // Prevents index errors
        itemBuilder: (context, index) {
          return genTasks[index].isLast
              ? _buildAddTask() // Corrected method call
              : _buildTask(
                context,
                genTasks[index],
              ); // Pass context & Task object
        },
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      dashPattern: [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: Center(
        child: Text(
          "+Add",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => DetailPage(task)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: task.bgColor ?? Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              task.iconData,
              size: 40,
              color: task.iconColor,
            ), // Display icon
            SizedBox(height: 10),
            Text(
              task.title ?? 'No Title', // Display task title
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              '${task.left ?? 0} left, ${task.done ?? 0} done', // Display task progress
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
