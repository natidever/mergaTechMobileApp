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
        minimum: EdgeInsets.fromLTRB(20, 60, 0, 0),
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
            ],
          ),
        ),
      ),
    );
  }
}
