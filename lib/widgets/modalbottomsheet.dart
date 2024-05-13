import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minto_clone/widgets/modal_bottom_sheet_button.dart';
import '../utils/constants/color.dart';

class ModalBottomSheet extends StatefulWidget {
  const ModalBottomSheet({
    super.key,
  });

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 8),
          Container(
            height: 7,
            width: MediaQuery.of(context).size.width / 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            color: Colors.grey,
            height: 605,
            width: double.infinity,
            child: ListView(
              children: [
                CarouselSlider(
                  carouselController: CarouselController(),
                  items: [
                    // Replace with your carousel items
                    Container(
                      color: Colors.red,
                      child: const Center(child: Text('Item 1')),
                    ),
                    Container(
                      color: Colors.blue,
                      child: const Center(child: Text('Item 2')),
                    ),
                    Container(
                      color: Colors.green,
                      child: const Center(child: Text('Item 3')),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 240.0,
                    viewportFraction: 1.5,
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 6),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            //height: 40,
                            width: 270,
                            child: ListTile(
                              title: Text(
                                '27000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Samsung Galaxy A73 5G',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 40),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kPrimaryColor,
                                  shape: const CircleBorder(),
                                ),
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Share',
                                style: TextStyle(color: kPrimaryColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Description',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText(text: 'Brand'),
                                    MyText(text: 'Model'),
                                    MyText(text: 'Storage'),
                                    MyText(text: 'Display'),
                                    MyText(text: 'Processor'),
                                    MyText(text: 'Camera'),
                                    MyText(text: 'Battery'),
                                    MyText(text: 'Operating System'),
                                    MyText(text: 'Other Features'),
                                    MyText(text: 'Color Options'),
                                  ],
                                ),
                                SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    MyText2(text: 'Samsung'),
                                    MyText2(text: 'Galaxy S24 Ultra'),
                                    MyText2(text: '8 GB/256 GB'),
                                    MyText2(text: '6.9 inches'),
                                    MyText2(text: 'Snapdragon 8 Gen 2'),
                                    MyText2(text: '108 MP main sensor'),
                                    MyText2(text: '5000 mAh battery'),
                                    MyText2(text: 'Android 13'),
                                    MyText2(text: '5G connectivity, '),
                                    MyText2(text: 'Black, Bronze, Green'),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(right: 90.0),
                      child: SizedBox(
                        width: 300,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                          title: Text('Nirajan'),
                          subtitle: Text('Delhi'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const ModalBottomSheetButton(),
        ],
      ),
    );
  }
}

class MyText2 extends StatelessWidget {
  const MyText2({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      ":- $text",
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
