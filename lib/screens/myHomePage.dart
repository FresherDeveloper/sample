import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/item_provider.dart';
import 'package:sample/screens/detail_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var providerData = Provider.of<ItemProvider>(context);
    List<Map<String, dynamic>> data = providerData.data;
    List addedData = [];
    bool isTap = false;
    return Scaffold(
        appBar: AppBar(title: const Text("E-Commerce App"), actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(datas: data),
                    ));
              },
              icon: const Icon(Icons.shop))
        ]),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.network(data[index]["image"]),
                Container(
                  width: MediaQuery.of(context).size.width * .5,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(data[index]["name"]),
                          IconButton(
                              onPressed: () {
                                isTap = !isTap;

                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => DetailScreen(),
                                //     ));
                              },
                              icon: Icon(Icons.favorite)),
                          GestureDetector(
                              onTap: () {
                                                                addedData.add(data[index]);
                                providerData.increment();
                              },
                              child: Text(providerData.count.toString())),
                        ],
                      ), //Price
                      Text("${data[index]["Price"]}"),
                      GestureDetector(
                        onTap: () {
                          providerData.decrement();
                        },
                        child: Text(providerData.count.toString()),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
