import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPlaceScreen extends StatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  State<NewPlaceScreen> createState() => _NewPlaceScreenState();
}

class _NewPlaceScreenState extends State<NewPlaceScreen> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus on the search text field after the frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_searchFocusNode);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // Scaffold body is now a Column
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              bottom: 16.h,
              left: 16.w,
              right: 16.w,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade900,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 24.sp,
                      ),
                      onPressed: () {
                        Navigator.pop(context); // Pop out the screen
                      },
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "New place",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  // Search Input Field
                  controller: _searchController,
                  focusNode: _searchFocusNode,
                  decoration: InputDecoration(
                    hintText: "Search location",
                    hintStyle: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    prefixIcon:
                        Icon(Icons.search, size: 24.sp, color: Colors.grey),
                    suffixIcon: Icon(Icons.my_location,
                        size: 24.sp, color: Colors.green),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.r),
                      borderSide:
                          BorderSide(color: Colors.green.shade700, width: 1.5),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
