import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleWidget(
                  iconData: Icons.copy,
                  color: Colors.blue,
                  onPress: () {
                    Clipboard.setData(
                      const ClipboardData(text: '09123456789'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    Key? key,
    required this.iconData,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  final IconData iconData;
  final Color color;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
      child: IconButton(
        onPressed: onPress,
        icon: Icon(
          iconData,
          color: Colors.white,
        ),
        color: color,
      ),
    );
  }
}
