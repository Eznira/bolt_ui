import 'package:flutter/material.dart';

class MyToggleSwitch extends StatefulWidget {
  const MyToggleSwitch({super.key});

  @override
  State<MyToggleSwitch> createState() => _MyToggleSwitchState();
}

class _MyToggleSwitchState extends State<MyToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(),
          Container(),
        ],
      ),
    );
  }
}

class DualToggleButton extends StatefulWidget {
  const DualToggleButton({super.key});

  @override
  _DualToggleButtonState createState() => _DualToggleButtonState();
}

class _DualToggleButtonState extends State<DualToggleButton> {
  bool _isLeftSelected = true; // Track which side is selected

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isLeftSelected = true; // Select the left side
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200), // Smooth transition
            width: 100, // Fixed width for each side
            height: 40, // Fixed height
            decoration: BoxDecoration(
              color:
                  _isLeftSelected ? Colors.blue : Colors.white, // Change color
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), // Rounded corners
                bottomLeft: Radius.circular(20),
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Center(
              child: Text(
                'Left',
                style: TextStyle(
                  color: _isLeftSelected
                      ? Colors.white
                      : Colors.black, // Change text color
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isLeftSelected = false; // Select the right side
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: _isLeftSelected ? Colors.white : Colors.blue,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Center(
              child: Text(
                'Right',
                style: TextStyle(
                  color: _isLeftSelected ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: DualToggleButton(), // Use the custom widget
      ),
    ),
  ));
}
