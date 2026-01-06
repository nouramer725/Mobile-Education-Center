// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:islami_app/home/tabs/hadeth/hadeth_screen.dart';
// import 'package:islami_app/home/tabs/quran/quran_screen.dart';
// import 'package:islami_app/home/tabs/radio/radio_screen.dart';
// import 'package:islami_app/home/tabs/sebha/sebha_screen.dart';
// import 'package:islami_app/home/tabs/time/time_screen.dart';
// import 'package:islami_app/utils/app_assets.dart';
// import 'package:islami_app/utils/app_colors.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   int selectedIndex = 0;
//
//   List<Widget> screens = [
//     QuranScreen(),
//     HadethScreen(),
//     SebhaScreen(),
//     RadioScreen(),
//     TimeScreen(),
//   ];
//
//   List<String> bgImages = [
//     AppAssets.quranBg,
//     AppAssets.hadethBg,
//     AppAssets.sebhaBg,
//     AppAssets.radioBg,
//     AppAssets.timeBg,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//
//     return Stack(
//       children: [
//         Image.asset(
//           bgImages[selectedIndex],
//           fit: BoxFit.fill,
//           width: double.infinity,
//           height: double.infinity,
//         ),
//         SafeArea(
//           child: Scaffold(
//             bottomNavigationBar: Theme(
//               data: Theme.of(
//                 context,
//               ).copyWith(canvasColor: AppColors.goldColor),
//               child: BottomNavigationBar(
//                 currentIndex: selectedIndex,
//                 onTap: (index) {
//                   setState(() {
//                     selectedIndex = index;
//                   });
//                 },
//                 items: [
//                   buildBottomNavigationBarItem(
//                     icon: AppAssets.quranIcon,
//                     label: 'Quran',
//                     index: 0,
//                   ),
//                   buildBottomNavigationBarItem(
//                     icon: AppAssets.hadethIcon,
//                     label: "Hadeth",
//                     index: 1,
//                   ),
//                   buildBottomNavigationBarItem(
//                     icon: AppAssets.sebhaIcon,
//                     label: "Sebha",
//                     index: 2,
//                   ),
//                   buildBottomNavigationBarItem(
//                     icon: AppAssets.radioIcon,
//                     label: "Radio",
//                     index: 3,
//                   ),
//                   buildBottomNavigationBarItem(
//                     icon: AppAssets.timeIcon,
//                     label: "Time",
//                     index: 4,
//                   ),
//                 ],
//               ),
//             ),
//             body: Column(
//               spacing: height * 0.01,
//               children: [
//                 Image.asset(AppAssets.titleImageOnBoarding),
//                 Expanded(child: screens[selectedIndex]),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
//
//   BottomNavigationBarItem buildBottomNavigationBarItem({
//     required String icon,
//     required String label,
//     required int index,
//   }) {
//     return BottomNavigationBarItem(
//       label: label,
//       icon: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color:
//               selectedIndex == index
//                   ? AppColors.blackWithOpacityColor
//                   : AppColors.transparentColor,
//         ),
//         child: SvgPicture.asset(
//           icon,
//           colorFilter: ColorFilter.mode(
//             selectedIndex == index
//                 ? AppColors.whiteColor
//                 : AppColors.appColor,
//             BlendMode.srcIn,
//           ),
//         ),
//       ),
//     );
//   }
// }
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
          child: Column(
            spacing: h(20),
            children: [
              Row(
                spacing: w(25),
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      AppAssets.titleImageOnBoarding,
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
    );
  }
}
