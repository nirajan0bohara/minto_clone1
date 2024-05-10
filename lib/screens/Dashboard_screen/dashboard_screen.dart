import 'package:flutter/material.dart';
import 'package:minto_clone/screens/Dashboard_screen/bottom_modal_sheet.dart';
import 'package:minto_clone/screens/chat_screens/chat_nav_page.dart';
import 'package:minto_clone/screens/chat_screens/login_chat_screen.dart';
import 'package:minto_clone/utils/constants/color.dart';


class DashboardScreen1 extends StatefulWidget {
  const DashboardScreen1({super.key});

  @override
  State<DashboardScreen1> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: FittedBox(
                  child: CircleAvatar(
                    radius: 60,
                    child: Image.asset(
                      'assets/indiaflag.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: const Text('Nirajan Bohara'),
                subtitle: const Text('9775630978'),
                trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return const DashModalBottomSheet();
                        });
                  },
                  icon: const Icon(Icons.more_vert, size: 36),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: kPrimaryColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.5,
            tabs: const [
              Tab(
                text: 'My Ads',
              ),
              Tab(
                text: 'Archived',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            ChatScreen1(),
          ],
        ),
      ),
    );
  }
}

class AdsArchivedButton extends StatelessWidget {
  const AdsArchivedButton({
    super.key,
    required this.text,
    required this.onpressed,
  });
  final String text;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: TextButton(
            onPressed: onpressed,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
