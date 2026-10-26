import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  State<Coba> createState() => Coba_State();
}

class Coba_State extends State<Coba> {
  List<String> nama = ["Farah", "Verlien", "Lani"];
  List<String> kelas = ["xpplg2", "xpplg2", "ktk2"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Data Siswa"),
        ),
        body: Center(
          child: Column(
            children: [
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      Text("No"),
                      Text("Nama"),
                      Text("Kelas"),
                    ],
                  ),
                  for (int i = 0; i < nama.length; i++)
                    TableRow(
                      children: [
                        Text("${i + 1}"),
                        Text(nama[i]),
                        Text(kelas[i]),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
