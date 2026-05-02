import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String assetName;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? boxFit;

  const CustomSvgIcon({
    super.key,
    required this.assetName,
    this.width,
    this.height,
    this.color,
    this.boxFit,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      fit: boxFit ?? BoxFit.none,
      assetName,
      width: width,
      height: height,
      // colorFilter: color != null
      //     ? ColorFilter.mode(color!, BlendMode.srcIn)
      //     : null,
    );
  }
}




// Scaffold(
//
//
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//
//             ])
//           ),
//           child: Stack(
//             clipBehavior: Clip.none,
//             children: [
//               Positioned(
//                 right: 14,
//                 top: 10,
//                 child: CustomeContainer(
//                   imagePath: CustomSvgIcon(
//                     assetName: ImagePath.settingIcon,
//                     height: getHeight(AppDimensions.icon24),
//                     width: getWidth(AppDimensions.icon24),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 20,
//                 left: 0,
//                 right: 0,
//                 child: CustomSvgIcon(
//                   assetName: ImagePath.groupDidi,
//                   height: getHeight(64),
//                 ),
//               ),
//               Positioned(
//                 top: 100,
//                 left: 20,
//                 right: 0,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: getWidth(AppDimensions.padding70),
//                     right: getWidth(AppDimensions.padding70),
//                   ),
//                   child: CloudShape(),
//                 ),
//               ),
//               Positioned(
//                 top: 80,
//                 left: 0,
//                 right: 0,
//                 child: Image.asset(ImagePath.homeImage, height: 170, width: 170),
//               ),
//               Positioned(
//                 top: 195,
//                 left: 0,
//                 right: 0,
//                 child: CustomSvgIcon(
//                   assetName: ImagePath.askDidi,
//                   height: 56,
//                   width: 172,
//                 ),
//               ),
//               Positioned(
//                 top: 250,
//                 left: 0,
//                 right: 0,
//                 child: SizedBox(
//                   height: 650,
//                   width: double.infinity,
//                   child: GridView.builder(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 5.0,
//                     ),
//                     itemCount: controller.cardItem.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         height: 175,
//                         width: 175,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage(ImagePath.checkImage),
//                           ),
//                         ),
//                         child: Column(
//                           children: [
//                             CustomSvgIcon(
//                               assetName: controller.cardItem[index]['itemPath'],
//                               height: 90,
//                               width: 90,
//                             ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );


// SizedBox(
//       height: 50,
//       width: 50,
//       child: CircularProgressIndicator(
//         value: currentMinutes / totalMinutes, // ০.০ থেকে ১.০ এর মধ্যে ভ্যালু
//         backgroundColor: Colors.pink.shade50, // পেছনের হালকা কালার
//         valueColor: AlwaysStoppedAnimation<Color>(
//           Colors.pink,
//         ), // প্রোগ্রেস কালার
//         strokeWidth: 4, // বৃত্তের পুরুত্ব
//       ),
//     );
