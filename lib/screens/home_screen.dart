import 'package:flutter/material.dart';
import 'package:minto_clone/screens/city_home_screen.dart';
import 'package:minto_clone/screens/search_screen.dart';
import 'package:minto_clone/widgets/custom_searchbar.dart';

import '../widgets/home_page_widgets/heading1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//second list
  List items = [
    'Ahmedabad',
    'Surat',
    'Pune',
    'Jaipur',
    'Lucknow',
    'Kanpur',
    'Nagpur',
    'Indore',
    'Thane',
    'Bhopal',
    'Visakhapatnam',
    'Chinchwad',
    'Patna',
    'Vadodara',
    'Ranchi',
    'Ghaziabad',
    'Ludhiana',
    'Ghaziabad',
    'Agra',
  ];

  //creating static data in list
  List cityName = [
    'Mumbai',
    'Chennai',
    'Hyderabad',
    'Delhi',
    'Kolkata',
    'Bengaluru',
  ];

  List<Image> cityImagePaths = [
    Image.asset('assets/homepage_icon/mumbai.png'),
    Image.asset('assets/homepage_icon/chennai.png'),
    Image.asset('assets/homepage_icon/hyderabad.png'),
    Image.asset('assets/homepage_icon/delhi.png'),
    Image.asset('assets/homepage_icon/kolkata.png'),
    Image.asset('assets/homepage_icon/bengaluru.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          'Pick your location',
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 20),
              CustomSearchBar2(
                text: 'Search your city',
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 18),
              const Padding(
                padding: EdgeInsets.only(left: 26),
                child: Heading1(
                  text: 'Popular Cities',
                  textColor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 15, right: 15, bottom: 20),
                child: Column(
                  children: [
                    GridView.builder(
                      itemCount: cityName.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: 0.8),
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0.0, 7),
                                    color: Colors.grey.withOpacity(.1),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: const Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/homepage_icon/mumbai.png'),
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              cityName[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Heading1(
                  text: 'Other Cities',
                  textColor: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 7),
                        color: Colors.grey.withOpacity(.1),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CityHomePage(),
                            ),
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Text(
                                '${items[index]}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            const Divider(
                              height: 1,
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
