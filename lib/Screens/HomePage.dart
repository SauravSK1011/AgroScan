import 'package:agroscan/Screens/prediction.dart';
import 'package:agroscan/firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<Myusers> data1;
  late Myusers pdata;
  getdata() async {
    data1 = await firebaseefunc.getdata();
    pdata = data1[0];
  }

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      getdata();
      super.initState();
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(201, 239, 204, 1),
            child: Column(children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "AgroFarm",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Colors.white,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => predictionScreen()));
                              },
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/sugercane.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/corn.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/potato.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/sugercane.jpeg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/apple.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/grapes.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/orange.jpeg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/tomato.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/rice.jpg',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 35,
                                backgroundImage: AssetImage(
                                  'assets/weet.jpg',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: Column(children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            "Treat your Crop",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                                                  SizedBox(width: 20,),
                    
                          Image.asset(
                            "assets/plantscan.jpg",
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            size: 40,
                          ),
                          Image.asset(
                            "assets/report.png",
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                          Icon(
                            Icons.arrow_right_outlined,
                            size: 40,
                          ),
                          Image.asset(
                            "assets/fertilizer.jpg",
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              )
            ])),
      ),
    );
  }
}
