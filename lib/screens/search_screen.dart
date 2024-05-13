import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Map<String, dynamic>> _cities = [
    {"city_name": "Mumbai", "state": "Maharashtra"},
    {"city_name": "Delhi", "state": "Delhi"},
    {"city_name": "Bangalore", "state": "Karnataka"},
    {"city_name": "Kolkata", "state": "West Bengal"},
    {"city_name": "Chennai", "state": "Tamil Nadu"},
    {"city_name": "Hyderabad", "state": "Telangana"},
    {"city_name": "Ahmedabad", "state": "Gujarat"},
    {"city_name": "Pune", "state": "Maharashtra"},
    {"city_name": "Surat", "state": "Gujarat"},
    {"city_name": "Jaipur", "state": "Rajasthan"},
    {"city_name": "Lucknow", "state": "Uttar Pradesh"},
    {"city_name": "Kanpur", "state": "Uttar Pradesh"},
    {"city_name": "Nagpur", "state": "Maharashtra"},
    {"city_name": "Indore", "state": "Madhya Pradesh"},
    {"city_name": "Thane", "state": "Maharashtra"},
    {"city_name": "Bhopal", "state": "Madhya Pradesh"},
    {"city_name": "Visakhapatnam", "state": "Andhra Pradesh"},
    {"city_name": "Pimpri-Chinchwad", "state": "Maharashtra"},
    {"city_name": "Patna", "state": "Bihar"},
    {"city_name": "Vadodara", "state": "Gujarat"},
    {"city_name": "Ghaziabad", "state": "Uttar Pradesh"},
    {"city_name": "Ludhiana", "state": "Punjab"},
    {"city_name": "Agra", "state": "Uttar Pradesh"},
    {"city_name": "Nashik", "state": "Maharashtra"},
    {"city_name": "Faridabad", "state": "Haryana"},
    {"city_name": "Meerut", "state": "Uttar Pradesh"},
    {"city_name": "Rajkot", "state": "Gujarat"},
    {"city_name": "Kalyan-Dombivli", "state": "Maharashtra"},
    {"city_name": "Vasai-Virar", "state": "Maharashtra"},
    {"city_name": "Varanasi", "state": "Uttar Pradesh"},
    {"city_name": "Srinagar", "state": "Jammu and Kashmir"},
    {"city_name": "Aurangabad", "state": "Maharashtra"},
    {"city_name": "Dhanbad", "state": "Jharkhand"},
    {"city_name": "Amritsar", "state": "Punjab"},
    {"city_name": "Navi Mumbai", "state": "Maharashtra"},
    {"city_name": "Allahabad", "state": "Uttar Pradesh"},
    {"city_name": "Howrah", "state": "West Bengal"},
    {"city_name": "Ranchi", "state": "Jharkhand"},
    {"city_name": "Gwalior", "state": "Madhya Pradesh"},
    {"city_name": "Jabalpur", "state": "Madhya Pradesh"},
    {"city_name": "Coimbatore", "state": "Tamil Nadu"},
    {"city_name": "Vijayawada", "state": "Andhra Pradesh"},
    {"city_name": "Jodhpur", "state": "Rajasthan"},
    {"city_name": "Madurai", "state": "Tamil Nadu"},
    {"city_name": "Raipur", "state": "Chhattisgarh"},
    {"city_name": "Kota", "state": "Rajasthan"},
    {"city_name": "Guwahati", "state": "Assam"},
  ];

  List<Map<String, dynamic>> _foundcities = [];
  @override
  void initState() {
    _foundcities = _cities;
    super.initState();
  }

//function for search filter
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      //if search field is empty or only contains whitespace we will display all value
      results = _cities;
    } else {
      results = _cities
          .where((city) => city["city_name"].contains(enteredKeyword))
          .toList();
      //used lowercase method to make it case-insensitive
    }
    setState(() {
      _foundcities = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 60.0, top: 12),
            child: SizedBox(
              width: 278,
              height: 20,
              child: TextFormField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                  hintText: 'Search your city',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: _foundcities.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SplashScreen(),
              //   ),
              // );
            },
            child: Column(
              children: <Widget>[
                ListTile(
                  trailing: Icon(
                    Icons.arrow_outward_outlined,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  title: Text(
                    '${_foundcities[index]['city_name']}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  subtitle: Text(
                    '${_foundcities[index]['state']}',
                    style: const TextStyle(
                      fontSize: 15,
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
    );
  }
}
