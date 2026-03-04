import 'package:flutter/material.dart';

class ListViewDefaultPage extends StatefulWidget {
  const ListViewDefaultPage({super.key});

  @override
  State<ListViewDefaultPage> createState() => _ListViewDefaultPageState();
}

class _ListViewDefaultPageState extends State<ListViewDefaultPage> {
  bool swtchEnabled = true;

  void onChangeSwitch(bool value) {
    setState(() {
      swtchEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Default',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            // Switch
            SwitchListTile(
              secondary: const Icon(Icons.airplanemode_active_rounded),
              title: const Text('Airplane Mode'),
              subtitle: Text(swtchEnabled ? 'ON' : 'OFF'),
              value: swtchEnabled,
              onChanged: onChangeSwitch,
            ),

            const Divider(height: 1),

            // ListTile biasa
            const ListTile(
              leading: Icon(Icons.wifi_rounded),
              title: Text('Wi-Fi'),
              subtitle: Text('Home WiFi'),
              trailing: Icon(Icons.chevron_right),
            ),

            const Divider(height: 1),

            const ListTile(
              leading: Icon(Icons.bluetooth_rounded),
              title: Text('Bluetooth'),
              subtitle: Text('On'),
              trailing: Icon(Icons.chevron_right),
            ),

            const Divider(height: 1),

            const ListTile(
              leading: Icon(Icons.notifications_rounded),
              title: Text('Notifications'),
              subtitle: Text('On'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
