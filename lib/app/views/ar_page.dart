import 'package:flutter/material.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';

class ARPage extends StatefulWidget {
  @override
  _ARPageState createState() => _ARPageState();
}

class _ARPageState extends State<ARPage> {
  late ARController arController;

  @override
  void dispose() {
    arController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AR Page'),
      ),
      body: ARView(
        onARViewCreated: _onARViewCreated(arController),
      ),
    );
  }

  void _onARViewCreated(ARController controller) {
    arController = controller;
  }
}

class ARController {
  void dispose() {}
}
