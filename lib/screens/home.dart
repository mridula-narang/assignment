import 'dart:convert';

import 'package:cs_tech/models/home_page_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<HomePageDetails> getHomePageDetailsApi() async {
    final response = await http.get(Uri.parse(
        'http://devapiv3.dealsdray.com/api/v2/user/home/withoutPrice'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return HomePageDetails.fromJson(data);
    } else {
      return HomePageDetails.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deals Dray'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder<HomePageDetails>(
            future: getHomePageDetailsApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.data!.topSellingProducts!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: AspectRatio(
                              aspectRatio: 16 / 9, 
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Text('Our top brands',
                                  // textAlign: TextAlign.center,
                                  // style: TextStyle(
                                  //   fontSize: 30,
                                  //   fontWeight: FontWeight.bold
                                  // ),),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            snapshot.data!.data!.topSellingProducts![index].icon.toString(),
                                          ),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 4), 
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: ResuableRow(
                                      title: 'Category - ',
                                      value: snapshot.data!.data!.topSellingProducts![index].label.toString(),
                                    ),
                                  ),
                                  //Displaying offer for product

                                  // SingleChildScrollView(
                                  //   scrollDirection: Axis.horizontal,
                                  //   child: ResuableRow(
                                  //     title: 'Offer - ',
                                  //     value: snapshot.data!.data!.products![index].offer.toString(),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),

                        ],
                      );
                    });
              } else {
                return SpinKitHourGlass(color: Colors.black);
              }
            },
          )),
        ],
      ),
    );
  }
}

class ResuableRow extends StatelessWidget {
  final String title;
  final String value;

  const ResuableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          ),
          Text(value,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          ),
        ],
      ),
    );
  }
}
