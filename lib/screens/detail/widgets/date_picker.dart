import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final List<String> weekList = [
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ];
  final List<String> dayList = ['24', '25', '26', '27', '28', '29', '30'];
  int selected = 4; // Maintains selection state

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, // Adjust height as needed
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white, // ✅ Background color for better visibility
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: 60, // Adjust height as needed
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: weekList.length,
          separatorBuilder: (_, index) => SizedBox(width: 5),
          itemBuilder:
              (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selected == index
                            ? Colors.blue.withOpacity(0.3)
                            : Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, // Prevents unnecessary space
                    children: [
                      Text(
                        weekList[index], // Display day name (Sun, Mon, etc.)
                        style: TextStyle(
                          color: selected == index ? Colors.blue : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5), // ✅ Space between day and date
                      Text(
                        dayList[index], // Display corresponding date (24, 25, etc.)
                        style: TextStyle(
                          color: selected == index ? Colors.blue : Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
