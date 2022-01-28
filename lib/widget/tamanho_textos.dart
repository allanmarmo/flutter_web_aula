import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  _TamanhoTextosState createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tamanhos de textos'),
      ),
      body: Column(
        children: const [
          AutoSizeText(
            "Lorem Ipsum is simply dummy text of the printing and typesettin"
            " industry. Lorem Ipsum has been the industry's standard dummy"
            " text ever since the 1500s, when an unknown printer took a"
            " galley of type and scrambled it to make a type specimen book."
            " It has survived not only five centuries, but also"
            " the leap into electronic typesetting, remaining essentially"
            " unchanged. It was popularised in the 1960s with the release"
            " of Letraset sheets containing Lorem Ipsum passages, and more"
            " recently with desktop publishing software like Aldus"
            " PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 30),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 50,
          ),
          AutoSizeText(
            "Lorem Ipsum is simply dummy text of the printing and typesettin"
            " industry. Lorem Ipsum has been the industry's standard dummy"
            " text ever since the 1500s, when an unknown printer took a"
            " galley of type and scrambled it to make a type specimen book."
            " It has survived not only five centuries, but also"
            " the leap into electronic typesetting, remaining essentially"
            " unchanged. It was popularised in the 1960s with the release"
            " of Letraset sheets containing Lorem Ipsum passages, and more"
            " recently with desktop publishing software like Aldus"
            " PageMaker including versions of Lorem Ipsum.",
            style: TextStyle(fontSize: 30),
            maxLines: 6,
            minFontSize: 10,
            // overflow: TextOverflow.ellipsis,
            // overflowReplacement: Text("Não coube!"),
            // stepGranularity: 10,
            presetFontSizes: [30, 22, 10],
          ),
        ],
      ),
    );
  }
}
