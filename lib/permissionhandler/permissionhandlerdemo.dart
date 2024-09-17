import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';



class PermissionHandlerExample extends StatefulWidget {
  @override
  _PermissionHandlerExampleState createState() =>
      _PermissionHandlerExampleState();
}

class _PermissionHandlerExampleState extends State<PermissionHandlerExample> {
  String _status = "Permissions not requested yet";

  Future<void> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.location,
      Permission.bluetooth,
      Permission.microphone,
    ].request();

    setState(() {
      _status = "Permissions Status:\n";
      statuses.forEach((permission, status) {
        _status +=
        "${permission.toString().split('.')[1]}: ${status.isGranted ? 'Granted' : 'Denied'}\n";
      });
    });
  }

  Future<void> checkPermissions() async {
    PermissionStatus cameraStatus = await Permission.camera.status;
    PermissionStatus locationStatus = await Permission.location.status;
    PermissionStatus bluetoothStatus = await Permission.bluetooth.status;
    PermissionStatus microphoneStatus = await Permission.microphone.status;

    setState(() {
      _status = "Current Permission Status:\n";
      _status += "Camera: ${cameraStatus.isGranted ? 'Granted' : 'Denied'}\n";
      _status +=
      "Location: ${locationStatus.isGranted ? 'Granted' : 'Denied'}\n";
      _status +=
      "Bluetooth: ${bluetoothStatus.isGranted ? 'Granted' : 'Denied'}\n";
      _status +=
      "Microphone: ${microphoneStatus.isGranted ? 'Granted' : 'Denied'}\n";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Permission Handler Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_status),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: requestPermissions,
              child: Text('Request Permissions'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: checkPermissions,
              child: Text('Check Permissions'),
            ),
          ],
        ),
      ),
    );
  }
}

