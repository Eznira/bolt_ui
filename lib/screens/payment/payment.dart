import 'package:bolt_ui/widgets/my_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_color.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: BackButton(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "Payment",
                          style: AppTextStyle.title1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: AppColors.grey,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Bolt Balance",
                                style: AppTextStyle.body3,
                              ),
                              Text(
                                "#0",
                                style: AppTextStyle.title4,
                              ),
                              SizedBox(
                                height: 20,
                                child: Divider(
                                  color: Colors.grey.shade600,
                                  height: 20,
                                ),
                              ),
                              Text(
                                "Bolt balance is not available with this"
                                "payment method",
                                style: AppTextStyle.body4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Icon(
                              Icons.contact_support_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "What is Bolt balance?",
                            style: AppTextStyle.body4,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 20,
                            ),
                            child: Icon(
                              Icons.query_builder_outlined,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "See Bolt balance transaction?",
                            style: AppTextStyle.body4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 16,
                        ),
                        child: Text(
                          "Payment methods",
                          style: AppTextStyle.title1,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 13,
                        ),
                        child: MyToggleSwitch(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Icon(
                                    Icons.money,
                                    color: AppColors.grey2,
                                    size: 28.r,
                                  ),
                                ),
                                Text(
                                  "Cash",
                                  style: AppTextStyle.body3,
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.radio_button_on,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Divider(
                          color: Colors.grey.shade600,
                          height: 8,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColors.grey2,
                              size: 30.r,
                            ),
                          ),
                          Text(
                            "Add debit/credit card",
                            style: AppTextStyle.body1,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: AppColors.grey2,
                          size: 24.r,
                        ),
                      ),
                      Text(
                        "Manage work profile",
                        style: AppTextStyle.body1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
