import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_aula/loja_virtual.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Web",
      debugShowCheckedModeBanner: false,

      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const LojaVirtual(),
      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeRowCol(),
      // home: ResponsividadeWrap(),
      // home: Orientacao(),
      // home: RegrasLayout(),
      // home: TamanhoTextos(),
      // home: TamanhoProporcional(),
      // home: DiferentesTamanhos(),
    );
  }
}

/*void main() {
  runApp(DevicePreview(builder: (context) {
    return const MaterialApp(
      title: "Flutter Web",
      debugShowCheckedModeBanner: false,

      // Device Preview
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      // home: ResponsividadeMediaQuery(),
      // home: ResponsividadeRowCol(),
      // home: ResponsividadeWrap(),
      // home: Orientacao(),
      // home: RegrasLayout(),
      home: LojaVirtual(),
      // home: TamanhoTextos(),
      // home: TamanhoProporcional(),
      // home: DiferentesTamanhos(),
    );
  }));
}*/
