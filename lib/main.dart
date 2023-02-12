import 'package:flutter/material.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() {
  runApp(Loginstate());
}

class Loginstate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<Loginstate> {
  var connector = WalletConnect(
    bridge: 'https://bridge.walletconnect.com',
    clientMeta: const PeerMeta(
      name: 'WalletConnect',
      description: 'WalletConnect Developer App',
      url: 'https://walletconnect.org',
      icons: [
        'https://gblobscdn.gitbook.com/spaces%2F-LJJeCjcLrr53DcT1Ml7%2Favatar.png?alt=media'
      ],
    ),
  );

  var session, uri;

  loginUsingMetamask(BuildContext context) async {
    if (!connector.connected) {
      try {
        var session = await connector.createSession(onDisplayUri: (uri) async {
          uri = uri;
          await launchUrlString(uri, mode: LaunchMode.externalApplication);
        });
        print(session.accounts[0]);
        print(session.chainId);
        setState(() {
          session = session;
        });
      } catch (exp) {
        print(exp);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('MetaMask Connector'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 224,
              padding: EdgeInsets.all(27.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: (Colors.orange),
                  padding: EdgeInsets.all(16.0),
                ),
                child: Text(
                  'Connect to Metamask',
                  style: TextStyle(color: (Colors.black)),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
                onPressed: () => loginUsingMetamask(context),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Create a connector

  // Create a connector
}






    
  

  // This widget is the root of your application.


