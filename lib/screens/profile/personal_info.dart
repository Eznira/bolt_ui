import 'package:flutter/material.dart';

import '../../constants/app_color.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12),
            child: BackButton(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: Text(
              "Personal Info",
              style: AppTextStyle.title1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.person_2_outlined,
                        size: 20,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "Arinze Ihim",
                      style: AppTextStyle.body1,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // TODO: route to edit
                  },
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 4,
              child: Divider(
                height: 4,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.phone_android,
                        size: 20,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "+23408078140648",
                      style: AppTextStyle.body1,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // TODO: route to edit
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 4,
              child: Divider(
                height: 4,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Icon(
                        Icons.email_outlined,
                        size: 20,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "ihimarinze@gmail.com",
                      style: AppTextStyle.body1,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // TODO: route to edit
                  },
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
