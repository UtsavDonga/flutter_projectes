// import 'package:flutter/cupertino.dart';
// import 'dart:js';
import 'dart:ui';
import 'package:dalal_street/sheremain.dart';
import 'package:dalal_street/stockmain.dart';
// import 'package:dalal_street/settingmain.dart';
import 'package:dalal_street/portfoliomain.dart';
import 'package:flutter/material.dart';
import 'package:dalal_street/chartmain.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:charts_flutter/flutter.dart' as charts;

void main(List<String> args) {
  runApp(MyApp());
}

var abc = '\$ 37,50000';
var row2 = '4.78 \% (+0.20) As LastWeek';
var con1 = '\$ 4652';
var con2 = '\$576 ';
var con3 = '\$ 5454';
var con4 = '\$ 2142';
var per1 = '1.78\% (+0.11\%)';
var per2 = ' -2.90\% (2.74\%)';
var per3 = ' -1.48\% (1.98\%)';
var per4 = '2.88\% (+0.12\%)';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    print('step::1::');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('step::3::');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('step::5::');
  }

  @override
  void dispose() {
    super.dispose();
    print('step::6::');
  }

  int selectedInsex = 0;
  List<Widget> widgetlist = [
    Column(
      children: [
        // ################################## Container for rounded curv ##########################################
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              gradient: LinearGradient(
                  colors: [
/*                     Color.fromARGB(255, 39, 47, 13),
                    Color.fromARGB(255, 47, 53, 25),
                    Color.fromARGB(255, 54, 59, 31),
                    Color.fromARGB(255, 62, 66, 44),
                    Color.fromARGB(255, 74, 78, 62), */
                    // Color(0xFF272f16),
                    Color(0xFF232c10),
                    Color(0xFF343b27),
                    Color(0xFF404837),
                    Color(0xFF464d3f),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  // stops: [0.4, 0.7],
                  tileMode: TileMode.clamp),
            ),
            child: Column(
              children: [
                // #################################### First tow icons ####################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/toon.jpeg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ####################################### Second Row #####################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('./images/bundle.png'),
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  abc,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 5,
                                    child: Icon(
                                      Icons.auto_graph_rounded,
                                      size: 10,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ),
                                Text(
                                  row2,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.auto_graph_rounded,
                          color: Colors.black87,
                        ),
                      ),
                    )
                  ],
                ),
                // // ##################################### bar-chart ########################################################
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //       // height: MediaQuery.of(context).size.height / 8,
                //       // width: MediaQuery.of(context).size.width,
                //       height: 110,
                //       width: double.infinity,
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(40)),
                //       child: Image.asset(
                //         './images/traychart.png',
                //         fit: BoxFit.fill,
                //       )),
                // ),
                Container(height: 150, width: 700, child: MyHomePage()),
                // ######################################### butoon #######################################################
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    // 1button 1 ##########################################################################################33
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFc1ef00),
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: RichText(
                            text: const TextSpan(children: [
                          WidgetSpan(
                            child: CircleAvatar(
                              backgroundColor: Color(0xFFc1ef00),
                              radius: 12,
                              child: Icon(
                                Icons.arrow_circle_up_rounded,
                                size: 20,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          TextSpan(
                              text: "  Withdraw  ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ])),
                      ),
                    ),
                    // button 2 #############################################################################################
                    SizedBox(
                      width: 4,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: RichText(
                              text: const TextSpan(children: [
                            WidgetSpan(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Icon(
                                  Icons.arrow_circle_down_rounded,
                                  color: Colors.black87,
                                  size: 20,
                                ),
                              ),
                            ),
                            TextSpan(
                                text: "  Deposit  ",
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900)),
                          ])),
                        )),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
        // ################################## Row For PoertFolio and View-aLL ################################################
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  "PortFolio",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Text(
                  "ViewALL",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
        //  ######################################## Contianer of sherer price ##################################################
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // #################################### 1st Row of Container ####################################################
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    //  ####################################### Star-bucks ########################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/starbucks.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "SBux",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "StarBucks",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con1,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.black87,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per1,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(Icons.auto_graph_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ###################################### Nike Container ###################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 55, 54, 54)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/nike.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Nike",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Nike, Inc",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con2,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per2,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(
                                    Icons.auto_graph_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            // #####################
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                // ##################################### 2nd Row of Container #######################################################
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    // ####################################### mrf-tyres #######################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 55, 54, 54)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/mrftyres.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "MRF",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "MRF-Tyres",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con3,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per3,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(
                                    Icons.auto_graph_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ###################################### tata-power ###################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFc1ef00)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/tataPower.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "TATA-Power",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "T-Power, Inc",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con4,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.black87,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per4,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 12, top: 1, bottom: 10),
                                  child: Icon(Icons.auto_graph_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                // #################################### 1st Row of Container ####################################################
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    //  ####################################### Star-bucks ########################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/starbucks.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "SBux",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "StarBucks",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con1,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.black87,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per1,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(Icons.auto_graph_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ###################################### Nike Container ###################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 55, 54, 54)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/nike.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Nike",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Nike, Inc",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con2,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per2,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(
                                    Icons.auto_graph_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            // #####################
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                // ##################################### 2nd Row of Container #######################################################
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    // ####################################### mrf-tyres #######################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color.fromARGB(255, 55, 54, 54)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/mrftyres.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "MRF",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "MRF-Tyres",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con3,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per3,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, top: 1, bottom: 10),
                                  child: Icon(
                                    Icons.auto_graph_sharp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // ###################################### tata-power ###################################################
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(0xFFc1ef00)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('./images/tataPower.jpeg'),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "TATA-Power",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "T-Power, Inc",
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 3),
                                  child: Text(
                                    con4,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black87),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 13, top: 1, bottom: 10),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.arrow_circle_up_outlined,
                                        color: Colors.black87,
                                        size: 15,
                                      ),
                                    ),
                                    TextSpan(
                                        text: per4,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w900)),
                                  ])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 12, top: 1, bottom: 10),
                                  child: Icon(Icons.auto_graph_sharp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    Stack1(), //Complite full page 'Stockmain.dart'
    // portfolio(), // sheremain.dart
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.pinkAccent,
    ),
    Container(
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    var _selectedindex = 0;
    return Scaffold(
        backgroundColor: Colors.black87,
        // body ###############################################################################################
        body: widgetlist[selectedInsex],
        // Bottom Nav-bar###################################################################################################
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              currentIndex: selectedInsex,
              backgroundColor: Colors.white,
              // unselectedItemColor: Color.fromARGB(255, 183, 172, 172),
              selectedItemColor: Colors.black,
              // showSelectedLabels: true,
              // showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                // ############################################### 1 #################################################33
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(
                    Icons.home,
                    color: Colors.black87,
                    size: 50,
                  ),
                ),
                // ################################################## 2 ##################################################
                BottomNavigationBarItem(
                  label: 'News',
                  icon: Icon(
                    Icons.newspaper_rounded,
                    color: Colors.black87,
                    size: 40,
                  ),
                ),
                // ################################################## 3 ##################################################
                BottomNavigationBarItem(
                  label: 'Shere',
                  icon: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => shere1(),
                          ));
                      ;
                    },
                    child: Icon(
                      Icons.auto_graph_rounded,
                      color: Colors.black87,
                      size: 40,
                    ),
                  ),
                ),
                // ################################################## 4 ##################################################
                BottomNavigationBarItem(
                  label: 'PortFolio',
                  icon: Icon(
                    Icons.collections_bookmark,
                    color: Colors.black87,
                    size: 40,
                  ),
                ),
                // ################################################## 5 ##################################################
                BottomNavigationBarItem(
                  label: 'String',
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black87,
                    size: 40,
                  ),
                ),
              ],
              onTap: ((index) {
                setState(() {
                  selectedInsex = index;
                });
              }),
            ),
          ),
        ));
  }

  // static _ChartApp() {}
}
