import 'package:flutter/material.dart';
import 'package:minto_clone/widgets/modalbottomsheet.dart';

class DashboardScreen1 extends StatefulWidget {
  const DashboardScreen1({super.key});

  @override
  State<DashboardScreen1> createState() => _DashboardScreen1State();
}

class _DashboardScreen1State extends State<DashboardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return const ModalBottomSheet();
                  });
            },
            icon: const Icon(Icons.more_vert, size: 32),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
