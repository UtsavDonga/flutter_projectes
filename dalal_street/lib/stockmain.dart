import 'package:flutter/material.dart';

var abc = '\+4.50 \%';
var abc2 = '\+8.88 \%';
var abc3 = '\+7.43 \%';
var abc4 = '\+9.63 \%';
var mrf = '\$149.66';
var nike = '\$562.00';
var mrftyres = '\$428.45';
var tatap = '\$468.45';

class stock extends StatelessWidget {
  const stock({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack1(),
      ),
    );
  }
}

var ac = '\$37,50000';

class Stack1 extends StatefulWidget {
  const Stack1({super.key});

  @override
  State<Stack1> createState() => _Stack1State();
}

class _Stack1State extends State<Stack1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 32, 32),
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
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.black87,
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
                                Icons.notifications_active_outlined,
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
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('./images/bundle.png'),
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
                                  ac,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "PortFoloi-Balence",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 39, 37, 37)
                                // color: Colors.black87.withOpacity(0.1)),
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: " November  ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900)),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ])),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Row 3 FOr Option #################################################################################
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black87.withOpacity(0.09)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.add_circle_outline_outlined,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        "Buy/Sell",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 55, 55, 55),
                                    fontSize: 40),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.transform_outlined,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        "Transfer",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "|",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 55, 55, 55),
                                    fontSize: 40),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.currency_exchange_outlined,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Text(
                                        "Exchange",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          ),
          // Your assets Row #######################################################
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Text(
                    "Your Assets",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
          // single child scroll view #############################################################################
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // 1 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFc1ef00)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/mrftyres.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'MRF\n0.6978 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white, //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 2 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/nike.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Nike\n0.4567 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc2\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color.fromARGB(
                                255, 227, 225, 225), //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$nike',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$nike',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 1 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFc1ef00)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/tatapower.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Tata-P\n0.5454 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc3\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white, //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$tatap',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$tatap',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 3 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/starbucks.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'SBuX\n0.7415 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc4\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color.fromARGB(
                                255, 227, 225, 225), //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 4 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFc1ef00)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/nike.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Nike\n0.3255 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc2\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white, //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 5 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/starbucks.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'SBux\n0.4543 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color.fromARGB(
                                255, 227, 225, 225), //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 6 contianer #############################################################################
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 14, right: 14, top: 8, bottom: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFc1ef00)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('./images/mrftyres.jpeg'),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'MRF\n0.6978 Sheres',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  '$abc\nPer-Year',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white, //color of divider
                            height: 1, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 1, //spacing at the start of divider
                            endIndent: 1, //spacing at the end of divider
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'PortFolio Volum\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Text(
                                  'Profits\n\n$mrf',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
