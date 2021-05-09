import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantwateringapp/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.settings,
          color: Colors.grey,
          size: 35,
          semanticLabel: "settings",
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.add_circled_solid,
                color: Colors.blueGrey,
                size: 35,
              )),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Text(
                'Water Today:',
                style: kTitleTextStyle
            ),
          ),
          PlantCard(name: "Zamioculcas", path: 'assets/images/1x/zzplant.png',),
          PlantCard(name: "Livistona", path: 'assets/images/1x/livistona.png',),
          PlantCard(name: "Monstera", path: 'assets/images/1x/monstera.png',),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: kBackgroundGreen,
        child: Icon(
          CupertinoIcons.drop,
          size: 30,
        ),
      ),

    );
  }
}

class PlantCard extends StatelessWidget {
  final String name;
  final String path;

  const PlantCard({
    Key? key, required this.name, required this.path
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kBackgroundGreen,
          ),
          height: MediaQuery.of(context).size.height *0.2,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Stack(
            children: [
              Positioned(
                  top: 10,
                  left: 20,
                  child: Container(
                      height: 150,
                      child: Image.asset(path)
                  )
              ),
              Positioned(
                  left: 130,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50,
                            left: 10
                        ),
                        child: Text(name,
                            style: kTitleTextStyle.copyWith(
                                color: Colors.black,
                                fontSize: 20
                            )
                        ),
                      ),
                      Row(

                          children : [
                            Icon(CupertinoIcons.drop,
                              color: kBackgroundDarkGreen,),
                            Text("250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: kBackgroundDarkGreen
                              ),
                            )
                          ]
                      )
                    ],
                  )
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: 20,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                color: kBackgroundDarkGreen,
                                blurRadius: 10,
                                spreadRadius: 2
                            )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.drop,
                          color: kBackgroundDarkGreen,
                          size: 50,
                        ),
                      )
                  )
              )
            ],)
      ),
    );
  }
}
