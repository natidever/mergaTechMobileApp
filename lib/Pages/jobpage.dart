import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(35, 60, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(', Someone',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          letterSpacing: 0))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Find Your Ideal Job',
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(23, 191, 158, 1)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                //the Search bar and the side of it
                children: [
                  Container(
                    width: 296,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color.fromRGBO(219, 219, 219, 1.0),
                        )),
                    child: Row(children: [
                      //for the searchIcon and the text
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          size: 20,
                          Icons.search,
                          color: Color.fromRGBO(189, 189, 189, 1),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Searhc a job',
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          height: 1.2,
                          color: Color.fromRGBO(189, 189, 189, 1),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      width: 47,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(9, 170, 139, 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(9, 170, 139, 1),
                              borderRadius: BorderRadius.circular(8)),
                          child:
                              Image(image: AssetImage('lib/assets/Group.png'))))
                ],
              ),
              SizedBox(height: 25),
              Text(
                'Recent Posted jobes',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 185,
                child: ListView.builder(
                    // padding: const EdgeInsets.only(right: 80.0),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromRGBO(14, 132, 109, 1),
                                      Color.fromRGBO(4, 206, 166, 1),
                                    ])),
                            // width: 276,
                            width: 300,
                            height: 185,
                            child: Column(
                              //for all content of the Container
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  //for circle avatar and salary
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(12),
                                      child: CircleAvatar(
                                        radius: 23,
                                        backgroundColor:
                                            Color.fromARGB(255, 35, 62, 37),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 55,
                                    ),
                                    Text('2900 birr',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    'Job Title',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    //For compaany name Location
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Text(
                                          'company name-  ',
                                          softWrap: true,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'location',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: 296,
                                  height: 40,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView.builder(
                                        padding: EdgeInsets.all(2),
                                        itemExtent: 80,
                                        itemCount: 3,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0),
                                              child: Container(
                                                // width: 58,
                                                // height: 18,
                                                // padding:
                                                // EdgeInsets.fromLTRB(0, 3, 2, 0),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: FittedBox(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            3.0),
                                                    child: Text(
                                                      'Remote',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                  ),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 30, 9),
                                        child: Container(
                                          width: 13.74,
                                          height: 18.27,
                                          child: Icon(
                                            Icons.bookmark_border_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
