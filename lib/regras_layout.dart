import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  _RegrasLayoutState createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var largura = constraint.maxWidth;
            print("Largura: $largura");

            if (largura < 600) {
              // Celualr
              return const Text("Celulares");
            } else if (largura < 960) {
              // Celular mariores e tabletes
              return const Text("Celulares e tabletes");
            } else {
              // Navegador Web
              return const Text("Telas maiores");
            }

            /*return Container(
              child: const Text('Jamilton Marmo'),
            );*/
          },
        ),
      ),
    );
  }
}
