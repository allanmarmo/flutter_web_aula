import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatelessWidget {
  const ResponsividadeWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double altura = 100;
    double largura = 100;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.start,
          runSpacing: 10,
          spacing: 10,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.green,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
