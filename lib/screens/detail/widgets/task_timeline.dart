import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeline extends StatelessWidget {
  final Map<String, dynamic> detail;
  TaskTimeline(this.detail);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          _buildTimeline(
            detail['tlcolor'] ?? Colors.grey, // ✅ Null safety added
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail['time'] ?? 'No Time', // ✅ Added null safety
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                detail['title'] != null && detail['title'].isNotEmpty
                    ? _buildCard(
                      detail['bgcolor'] ?? Colors.red[400],
                      detail['title'] ?? '',
                      detail['slot'] ?? '',
                    )
                    : _buildCard(
                      Colors.grey,
                      '',
                      '',
                    ), // ✅ Fixed ternary operator
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color bgcolor, String title, String slot) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(slot, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
        ],
      ),
    );
  }
}

Widget _buildTimeline(Color color) {
  return Container(
    width: 20,
    height: 80,
    child: TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2, // ✅ Adjusted to a valid value
      isFirst: true,
      indicatorStyle: IndicatorStyle(
        indicatorXY: 0,
        width: 15,
        indicator: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
            shape: BoxShape.circle,
            border: Border.all(width: 5, color: color),
          ),
        ),
      ),
      afterLineStyle: LineStyle(thickness: 2, color: color),
    ),
  );
}
