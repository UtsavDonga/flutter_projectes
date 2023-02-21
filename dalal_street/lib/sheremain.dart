import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

var abc = 'Nike,Inc';
var row2 = '        Run With Speed of Light';
var bhau = '\$84,92';

/* Colors */
/*
Start : #232c10
middle:#2a3319
middlecenter: #313c24
bottomleft:#2a3319 
bottomRight:#2a3319 
 */
class shere extends StatelessWidget {
  const shere({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: shere1(),
      ),
    );
  }
}

class shere1 extends StatefulWidget {
  const shere1({super.key});

  @override
  State<shere1> createState() => _shere1State();
}

class _shere1State extends State<shere1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
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
                child: Column(children: [
                  // First row ################################################################################
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 25,
                          child: CircleAvatar(
                            backgroundColor: Colors.white70,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 25,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.drive_folder_upload_rounded,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar(
                              backgroundColor: Colors.white70,
                              child: Icon(
                                Icons.library_books_sharp,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      ),
                    ],
                  ),
                  // Row for Second Row ##########################################################################33
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('./images/nike.jpeg'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    abc,
                                    style: TextStyle(
                                        color: Colors.white70,
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
                                  Text(
                                    row2,
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    bhau,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                WidgetSpan(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 4),
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.auto_graph_outlined,
                                        size: 5,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                    text: '$bhau',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900)),
                              ])),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  // #################################################################### image ###########################################################################3
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40)),
                        child: Image.asset(
                          'images/linechart.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ]),
              ),
            ),
            // horizontal scroll view ############################################################################################
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFc1ef00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'History Data',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Statcics',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFc1ef00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'OverView',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Market',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Return',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'PI',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFc1ef00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'History Data',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Statcics',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xFFc1ef00),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'OverView',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Market',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Return',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'PI',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // vertical scroll view ###########################################################################################3
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Previous close',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '17.32',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Aid',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '5008',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'End',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '451.25',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '124.55',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Midell',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '4.745',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Previous close',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '145.48',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'PI Ratio',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '457.5',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Return',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '854.58',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Previous close',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '754.58',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Last',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '24.85',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.white.withOpacity(0.25), //color of divider
                      height: 1, //height spacing of divider
                      thickness: 1, //thickness of divier line
                      indent: 10, //spacing at the start of divider
                      endIndent: 10, //spacing at the end of divider
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Previous close',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            '17.32',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //  For Button >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 25,
                ),
                // 1button 1 ##########################################################################################33
                Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 6,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFc1ef00),
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 20, right: 20),
                      child: Text(
                        'Buy-Nike',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                // button 2 #############################################################################################
                Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 6),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 12, left: 20, right: 20),
                      child: Text(
                        'Sell-Nike',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
          ],
        ));
  }
}
