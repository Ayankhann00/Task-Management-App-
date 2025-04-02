import 'package:flutter/material.dart';
import 'package:task_app/models/task.dart';
import 'package:task_app/screens/detail/widgets/date_picker.dart';
import 'package:task_app/screens/detail/widgets/task_title.dart';
import 'package:task_app/screens/detail/widgets/task_timeline.dart'; // Assuming this exists

class DetailPage extends StatelessWidget {
  final Task task;
  DetailPage(this.task);

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc; // Assuming task.desc is a list
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(), TaskTitle()],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'No Tasks Today!',
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                ),
              )
              : SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) =>
                      TaskTimeline(detailList[index]), // ✅ Corrected syntax
                  childCount: detailList.length, // Ensure list has a count
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios, size: 20),
        color: Colors.white,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.more_vert, size: 30, color: Colors.white),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${task.title} tasks',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'You have ${task.left} for today!',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
