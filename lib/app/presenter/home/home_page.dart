import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<String>> getNumbers() async {
    await Future.delayed(const Duration(seconds: 4));
    return ['Pedro', 'Luana', 'Alex'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela inicial',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: FutureBuilder(
        future: getNumbers(),
        builder: (context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.hasData == false) {
            return const CircularProgressIndicator();
          }

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Sou o : ${snapshot.data![index]}'),
              );
            },
          );
        },
      ),
    );
  }
}
