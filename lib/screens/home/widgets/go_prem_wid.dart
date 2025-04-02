import 'package:flutter/material.dart';

class GoPrem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.star, color: Colors.white, size: 20),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lets Go Premium',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Unlock exclusive features and more!!\nGet Unlimited Access!',
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 15,
            child: Container(
              padding: EdgeInsets.all(10), // ✅ Fixed incorrect capitalization
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                // ✅ Fixed incorrect use of Icons
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
