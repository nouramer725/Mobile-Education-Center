import 'package:flutter/material.dart';
import 'package:mobile_education_center/home/tabs/filter_widget.dart';
import 'package:mobile_education_center/utils/app_assets.dart';
import 'package:mobile_education_center/utils/app_colors.dart';
import 'package:mobile_education_center/utils/app_text.dart';

import '../../utils/responsive.dart';

class Container1Press extends StatefulWidget {
  const Container1Press({super.key});

  @override
  State<Container1Press> createState() => _Container1PressState();
}

class _Container1PressState extends State<Container1Press> {
  String? selectedSubject;
  String? selectedTeacher;
  String? selectedMonth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text("الاداء الدراسي", style: AppText.black24Bold),
        backgroundColor: AppColors.container1Color,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_forward_ios_sharp, size: h(25)),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: w(10), vertical: h(10)),
        child: SingleChildScrollView(
          child: Column(
            spacing: h(10),
            children: [
              FilterWidget(
                items: [
                  DropdownMenuItem(value: "عربي", child: Text("عربي")),
                  DropdownMenuItem(value: "رياضة", child: Text("رياضة")),
                  DropdownMenuItem(value: "انجليزي", child: Text("انجليزي")),
                  DropdownMenuItem(value: "الماني", child: Text("الماني")),
                ],
                selectedItem: selectedSubject,
                text: "المادة",
                onChanged: (value) {
                  setState(() {
                    selectedSubject = value;
                  });
                },
              ),

              FilterWidget(
                items: [
                  DropdownMenuItem(
                    value: "محمد احمد",
                    child: Text("محمد احمد"),
                  ),
                  DropdownMenuItem(
                    value: "احمد بدري",
                    child: Text("احمد بدري"),
                  ),
                  DropdownMenuItem(
                    value: "سالم محمد",
                    child: Text("سالم محمد"),
                  ),
                  DropdownMenuItem(
                    value: "اسامة سعدالله",
                    child: Text("اسامة سعدالله"),
                  ),
                ],
                selectedItem: selectedTeacher,
                text: "المدرس",
                onChanged: (value) {
                  setState(() {
                    selectedTeacher = value;
                  });
                },
              ),
              FilterWidget(
                items: [
                  DropdownMenuItem(value: "الاول", child: Text("الاول")),
                  DropdownMenuItem(value: "الثاني", child: Text("الثاني")),
                  DropdownMenuItem(value: "الثالث", child: Text("الثالث")),
                  DropdownMenuItem(value: "الرابع", child: Text("الرابع")),
                ],
                selectedItem: selectedMonth,
                text: "الشهر",
                onChanged: (value) {
                  setState(() {
                    selectedMonth = value;
                  });
                },
              ),
              Image.asset(
                AppAssets.container1Image,
                fit: BoxFit.fill,
                height: h(350),
                width: w(350),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
