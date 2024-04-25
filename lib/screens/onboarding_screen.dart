import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:minto_clone/data/onboarding_data.dart';
import 'package:minto_clone/main.dart';
import 'package:minto_clone/model/onboarding_screen/size_config.dart';
import 'package:minto_clone/screens/home_screen.dart';
import 'package:minto_clone/utils/app_style/app_style.dart';
import 'package:minto_clone/utils/constants/color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/get_started_button.dart';
import '../widgets/onboardingnavbtn.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //this will set seenOnboard to true when running onBoard page for the first time
    seenOnboard = await prefs.setBool('seenOnboard', true);
  }

  @override
  void initState() {
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size Config
    SizeConfig().init(context);
    double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 158, 158),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: onBoardingData.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    SizedBox(height: sizeV * 7),
                    Padding(
                      padding: const EdgeInsets.all(48.0),
                      child: Container(
                        height: sizeV * 40,
                        child: SvgPicture.asset(
                          onBoardingData[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(height: sizeV * 0.3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Text(
                            onBoardingData[index].title,
                            style: kTitle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: sizeV * 1),
                          Text(
                            onBoardingData[index].description,
                            style: kBodyText1,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  //dot indicator
                  const SizedBox(height: 20),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: kPrimaryColor,
                      dotColor: Colors.black,
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 10,
                    ),
                  ),
                  const SizedBox(height: 36),
                  currentPage == onBoardingData.length - 1
                      ? GetStartButton(
                          buttonName: 'Get Started',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          },
                        )
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OnBoardingNavBtn(
                                name: 'Skip',
                                onPressed: () {
                                  _pageController.jumpToPage(2);
                                },
                              ),
                              FloatingActionButton(
                                backgroundColor: kPrimaryColor,
                                shape:
                                    const CircleBorder(side: BorderSide.none),
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: const Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}













// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:minto_clone/buttons/bottom_sheet_buttons.dart';
// import 'package:minto_clone/buttons/start_button.dart';
// import 'package:minto_clone/data/onboarding_data.dart';
// import '../widgets/build_page_indicator.dart';

// int currentPage = 0;
// PageController _pageController = PageController(initialPage: 0);

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Expanded(
//           child: PageView.builder(
//             controller: _pageController,
//             onPageChanged: (value) {
//               currentPage = value;
//             },
//             itemCount: 3,
//             itemBuilder: (context, index) {
//               return Center(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     // borderRadius: BorderRadius.circular(35),
//                     color: Colors.grey.shade200,
//                     gradient: const LinearGradient(
//                       colors: [Colors.black, Colors.white],
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomCenter,
//                     ),
//                   ),

//                   // child: CustomPaint(
//                   //   painter: ArcPainter(),
//                   //   child: SizedBox(
//                   //     width: ScreenSize.width,
//                   //     height: ScreenSize.height,
//                   //   ),
//                   // ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(bottom: 0.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         //image of onboarding screen

//                         Padding(
//                           padding: const EdgeInsets.only(
//                             left: 30,
//                             right: 40,
//                           ),
//                           child: SvgPicture.asset(
//                             onBoardingData[index].image,
//                             height: 400,
//                           ),
//                         ),

//                         //title of onboarding screen

//                         Text(
//                           onBoardingData[index].title,
//                           style: TextStyle(
//                             fontSize: 28.0,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.green.shade700,
//                           ),
//                         ),

//                         const SizedBox(height: 18),

//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 38),
//                           child: Text(
//                             onBoardingData[index].description,
//                             style: const TextStyle(
//                               fontSize: 24.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black87,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         const SizedBox(height: 18),
//                         //page indicator
//                         buildPageIndicator(),
//                         const SizedBox(height: 18),

//                         //bottom sheet and get start button
//                         const SizedBox(height: 85),

//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 28.0),
//                           child: currentPage == 2
//                               ? const StartButton()
//                               : const BottomSheetButtons(),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
// Stack(
//         children: [
//           CustomPaint(
//             painter: ArcPainter(),
//             child: SizedBox(
//               width: ScreenSize.width,
//               height: ScreenSize.height / 1.4,
//             ),
//           ),
//           Positioned(
//             top: 135,
//             right: 8,
//             left: 8,
//             child: Image.asset(
//               'assets/undraw_shopping_re_hdd9.svg',
//               alignment: Alignment.topCenter,
//               width: 600,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: SizedBox(
//               height: 270,
//               child: Column(
//                 children: [
//                   Flexible(
//                     child: PageView.builder(
//                       controller: _pageController,
//                       itemCount: 3,
//                       itemBuilder: (context, index) {
//                         return Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Buy from various sellers',
//                               style: TextStyle(
//                                 fontSize: 27.0,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.green.shade400,
//                               ),
//                             ),
//                             const SizedBox(height: 30),
//                             const Text(
//                               'You can search for the devices you want and buy from second - hand sellers',
//                               style: TextStyle(
//                                 fontSize: 17.0,
//                                 color: Colors.black87,
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                       onPageChanged: (value) {
//                         _currentIndex = value;
//                         setState(() {});
//                       },
//                     ),
//                   ),
//                   const Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [],
//                   ),
//                   const SizedBox(height: 75)
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),


//for custompainter


// class ArcPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Path greyArc = Path()
//       ..moveTo(0, 0)
//       ..lineTo(0, size.height - 410)
//       ..quadraticBezierTo(
//           size.width / 2, size.height - 240, size.width, size.height - 670)
//       ..lineTo(size.width, size.height)
//       ..lineTo(size.width, 0)
//       ..close();

//     canvas.drawPath(greyArc, Paint()..color = Colors.grey.shade300);

//     Path blackArc = Path()
//       ..moveTo(0.0, 0.0)
//       ..lineTo(0.0, size.height - 435)
//       ..quadraticBezierTo(
//           size.width / 2, size.height - 265, size.width, size.height - 625)
//       ..lineTo(size.width, 0)
//       ..close();

//     canvas.drawPath(blackArc, Paint()..color = Colors.black);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
