import 'package:flutter/material.dart';
import 'package:mobile_education_center/home/widget_container.dart';
import 'package:mobile_education_center/utils/app_assets.dart';
import 'package:mobile_education_center/utils/app_colors.dart';
import 'package:mobile_education_center/utils/app_text.dart';
import '../utils/app_routes.dart';
import '../utils/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w(12), vertical: h(16)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: h(20),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        spacing: w(25),
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            width: w(65),
                            height: h(65),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              AppAssets.person,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("احمد محمد", style: AppText.black24Bold),
                              Text("اولي ثانوي", style: AppText.grey16Regular),
                              Text("1001", style: AppText.grey16Regular),
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (context) {
                            return Dialog(
                              backgroundColor: AppColors.whiteColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(w(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: h(10),
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "الاسم :  احمد محمد",
                                      style: AppText.black24Bold,
                                    ),
                                    Text(
                                      "المرحلة التعليمية :  الثانوية",
                                      style: AppText.black24Bold,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(w(20)),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        border: Border.all(
                                          color: AppColors.container1Color,
                                          width: 3,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            AppAssets.barcodeImage,
                                            fit: BoxFit.contain,
                                          ),
                                          Text(
                                            "1001",
                                            style: AppText.black18Bold,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        AppAssets.barcodeImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                WidgetContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.container1Press);
                  },
                  verticalPadding: h(36),
                  text: "الاداء الدراسي",
                  containerColor: AppColors.container1Color,
                ),
                WidgetContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.container2Press);
                  },
                  verticalPadding: h(36),
                  text: "المواعيد",
                  containerColor: AppColors.container2Color,
                ),
                WidgetContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.container3Press);
                  },
                  verticalPadding: h(36),
                  text: "المذكرات",
                  containerColor: AppColors.container3Color,
                ),
                WidgetContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.container4Press);
                  },
                  verticalPadding: h(36),
                  text: "المدفوعات",
                  containerColor: AppColors.container4Color,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
