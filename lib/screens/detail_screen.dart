import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final List datas;
  const DetailScreen({super.key, required this.datas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                  Image.network(datas[index]["image"]),
                  Container(
                    width: MediaQuery.of(context).size.width*.5,
                    color: Colors.green,
                  child: Column(

                    children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(datas[index]["name"]),
                     IconButton(onPressed: () {

                     }, icon: Icon(Icons.favorite))
                   ],
                 ),//Price
                  Text("${datas[index]["Price"]}"),
                    ],
                  ),),
              ],
            ),
          );
        },
      ),
    );
  }
}
