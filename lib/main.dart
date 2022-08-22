import 'package:flutter/material.dart';

import 'painters/car.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Builder(builder: (context) {
            var size = MediaQuery.of(context).size;
            return Container(
              width: size.width,
              height: size.height,
              color: Colors.orange,
              child: CustomPaint(
                painter: Car(),
              ),
            );
          }),
        ),
      ),
    );
  }
}


//! loading image form assets
// Future<void> getImageFromAssets(String key) async {
//   ByteData data = await rootBundle.load(key);
//   Uint8List list = data.buffer.asUint8List();
//   ui.Image img = await decodeImageFromList(list);
//   setState(() {
//     image = img;
//   });
// }
