import 'package:flutter/material.dart';
import 'package:minto_clone/utils/constants/color.dart';

class Ads2Screen extends StatefulWidget {
  const Ads2Screen({super.key});

  @override
  State<Ads2Screen> createState() => _Ads2ScreenState();
}

class _Ads2ScreenState extends State<Ads2Screen> {
  bool isAddMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.2,
        title: const Text('Add Pictures'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
          vertical: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            const Text(
              'Only add pictures of the device, box and accessories. *',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const Text(
              'Add minimum of 2 pictures',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CameraGalleryButton(
                  text: 'Open Camera',
                  icon: Icons.camera_alt_outlined,
                  ontap: () {},
                ),
                CameraGalleryButton(
                  text: 'Open Gallery',
                  icon: Icons.image,
                  ontap: () {},
                ),
              ],
            ),
            const SizedBox(height: 26),
            SizedBox(
              height: isAddMore ? 230 : 110,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  itemCount: isAddMore ? 6 : 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.add_outlined,
                          size: 56,
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => setState(() => isAddMore = !isAddMore),
              child: Text(
                isAddMore ? 'Add Less images' : 'Add More images',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Caution:',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
                '-Please hide/mask any Sensitive/personal information (MEI, Number, Address, etc.)'),
            const SizedBox(height: 4),
            const Text(
                '-Picture with text or any other editing will be rejected.'),
            const SizedBox(height: 100),
            Container(
              margin: const EdgeInsets.only(left: 8),
              height: 56,
              width: MediaQuery.of(context).size.width / 1.15,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                  child: InkWell(
                onTap: () {},
                child: const Text(
                  'Publish Ads',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

//camera and gallery button in add picture screen

class CameraGalleryButton extends StatelessWidget {
  const CameraGalleryButton({
    super.key,
    required this.text,
    required this.ontap,
    required this.icon,
  });
  final String text;
  final VoidCallback ontap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 167,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: kPrimaryColor,
        ),
        child: Row(
          children: [
            const SizedBox(width: 22),
            Icon(icon),
            const SizedBox(width: 8),
            Text(text),
          ],
        ),
      ),
    );
  }
}
