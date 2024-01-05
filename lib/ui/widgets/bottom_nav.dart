import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

// class BottomNav extends StatelessWidget {
//   PageController controller;
//   BottomNav({super.key, required this.controller});
//
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return BottomAppBar(
//       shape: const CircularNotchedRectangle(),
//       notchMargin: 8,
//       color: Colors.transparent,
//       child: SizedBox(
//         height: 63,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               width: size.width / 2 - 40,
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         controller.animateToPage(0,
//                             duration: const Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       },
//                       icon: const Icon(FluentIcons.home_24_filled)),
//                   IconButton(
//                       onPressed: () {
//                         controller.animateToPage(1,
//                             duration: const Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       },
//                       icon: const Icon(FluentIcons.shopping_bag_24_filled)),
//                 ],
//               ),
//             ),
//             SizedBox(
//               width: size.width / 2 - 40,
//               height: 50,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         controller.animateToPage(3,
//                             duration: const Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       },
//                       icon: const Icon(FluentIcons.bookmark_24_filled)),
//                   IconButton(
//                       onPressed: () {
//                         controller.animateToPage(2,
//                             duration: const Duration(milliseconds: 300),
//                             curve: Curves.easeInOut);
//                       },
//                       icon: const Icon(FluentIcons.person_24_filled)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
