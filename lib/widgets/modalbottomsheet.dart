import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
            height: 630,
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
                    height: 260.0,
                    viewportFraction: 1.5,
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 6),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          const SizedBox(
                            //height: 40,
                            width: 270,
                            child: ListTile(
                              title: Text(
                                '27000',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                'Samsung Galaxy A73 5G',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 50),
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
                    const Column(
                      children: [
                        Text(
                          'Product Description',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Brand              -Vivo'),
                      ],
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
