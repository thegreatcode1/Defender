// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:phish_defender/api_end_points/data.dart';
// import 'package:phish_defender/core/colors.dart';
// import 'package:phish_defender/core/constants.dart';
// import 'package:phish_defender/presentation/Result_screen/result.dart';

// class Loadingscreen extends StatelessWidget {
//   static const routename = "loading-screen";

//   const Loadingscreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     try {
//       if (Datadb.instance.letternotifier.value.isEmpty) {
//         return Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [Color(0xff1b485d), Color(0xff022f46)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               stops: [0.2, 0.6],
//               tileMode: TileMode.repeated,
//             ),
//           ),
//           child: Scaffold(
//             backgroundColor: ktransparent,
//             body: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Lottie.asset(
//                     lottieLoadingAnimation,
//                     height: 150,
//                     width: 150,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       } else {
//         // Data is available, navigate to ResultScreen
//         Future.delayed(Duration.zero, () {
//           Navigator.of(context).pushReplacementNamed(ResultScreen.routename);
//         });
//         // Return a placeholder widget while navigation happens
//         return Container(
//           color: Colors.white, // You can customize this placeholder
//           child: const Center(
//             child: CircularProgressIndicator(), // Or any loading indicator
//           ),
//         );
//       }
//     } catch (e) {
//       // Handle any exceptions
//       log(e.toString());
//       return Center(child: Text("Error: $e"));
//     }
//   }
// }
