import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kader_posyandu/layout/footer_bar.dart';
import 'package:kader_posyandu/screen/add_lansia.dart';
import 'package:kader_posyandu/screen/jadwal.dart';
import 'package:kader_posyandu/screen/my_employes.dart';
import 'package:kader_posyandu/screen/tree.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedTabIndex = 0;
  bool isAllSelected = false;
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 1) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const Upload()),
      // );
    } else if (_selectedIndex == 2) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => const About()),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
                padding: EdgeInsets.fromLTRB(10, 25, 0, 0),
                width: 495,
                height: MediaQuery.of(context).size.height * 1.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(24, 0, 27, 0),
                      width: double.infinity,
                      height: 70,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 111, 0),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('assets/profile.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // frame153n6X (215:1611)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        // selamatpagi8gB (215:1612)
                                        'Selamat pagi,',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5,
                                          color: Color(0xff555555),
                                        ),
                                      ),
                                      Text(
                                        // hauratsabita4pj (215:1613)
                                        'Haura Tsabita',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          height: 1.7142857143,
                                          color: Color(0xff111111),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // infoQNo (215:1614)
                            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                            width: 32,
                            height: 32,
                            child: Icon(Icons.notifications_none_outlined),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // bannerqDD (215:1594)
                      margin: EdgeInsets.fromLTRB(20, 0, 19, 0),
                      width: double.infinity,
                      height: 189,
                      decoration: BoxDecoration(
                        color: Color(0xff5083ef),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            // group7MBZ (215:1595)
                            left: 72.0001059472,
                            top: -114,
                            child: Align(
                              child: SizedBox(
                                width: 356.12,
                                height: 355.56,
                                child: Image.asset('assets/spiral.png'),
                              ),
                            ),
                          ),
                          Positioned(
                            // frame169STu (215:1603)
                            left: 24,
                            top: 20,
                            child: Container(
                              width: 290,
                              height: 123,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // lakukanpendataanlansiauntukind (215:1604)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    constraints: BoxConstraints(
                                      maxWidth: 290,
                                    ),
                                    child: Text(
                                      'Lakukan Pendataan Lansia untuk Indonesia Sehat',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 1.75,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame168r1q (215:1605)
                                    margin: EdgeInsets.fromLTRB(0, 10, 155, 0),
                                    padding:
                                        EdgeInsets.fromLTRB(10, 6.5, 12, 6.5),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff8aacf4),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Addlansia()),
                                            );
                                          },
                                          child: Container(
                                            // pendataanA2X (215:1606)
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 31, 0),
                                            child: Text(
                                              'Pendataan',
                                              style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5,
                                                color: Color(0xffffffff),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 24,
                            top: 30,
                            child: Container(
                              width: 328,
                              height: 242,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame175oeT (215:1576)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                                    width: double.infinity,
                                    height: 113,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Jadwal()),
                                            );
                                          },
                                          child: Container(
                                            // card19TR (215:1577)
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 16, 0),
                                            padding: EdgeInsets.fromLTRB(
                                                37.5, 25, 37.5, 25),
                                            width: 156,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xff407ce2),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              // contentrsd (215:1578)
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // icondoctor1kX (215:1912)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 4),
                                                    width: 31,
                                                    height: 31,
                                                    child: Icon(
                                                      Icons.medical_information,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                  Text(
                                                    // posyanduKFR (215:1580)
                                                    'Posyandu',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.75,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Employes()),
                                            );
                                          },
                                          child: Container(
                                            // card2Fum (215:1581)
                                            padding: EdgeInsets.fromLTRB(
                                                45, 25, 45, 25),
                                            width: 156,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xff407ce2),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              // contentPm5 (215:1582)
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // iconambulancexJP (215:1925)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 4),
                                                    width: 31,
                                                    height: 31,
                                                    child: Icon(
                                                      Icons.medical_services,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                  Text(
                                                    // rujukanfyV (215:1584)
                                                    'Rujukan',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.75,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame176E11 (215:1585)
                                    width: double.infinity,
                                    height: 113,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Tree()),
                                            );
                                          },
                                          child: Container(
                                            // card1n2X (215:1586)
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 16, 0),
                                            padding: EdgeInsets.fromLTRB(
                                                32.5, 28.5, 32.5, 28.5),
                                            width: 156,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xff407ce2),
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                            ),
                                            child: Container(
                                              // content6Z1 (215:1587)
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // vectorRLP (215:1945)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 4),
                                                    width: 27,
                                                    height: 24,
                                                    child: Icon(
                                                      Icons.person_3,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                  Text(
                                                    // datakaderwpX (215:1589)
                                                    'Data Kader',
                                                    style: GoogleFonts.poppins(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.75,
                                                      color: Color(0xffffffff),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // card2Vb9 (215:1590)
                                          padding: EdgeInsets.fromLTRB(
                                              44.5, 26.46, 44.5, 26.46),
                                          width: 156,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xff407ce2),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Container(
                                            // contentdST (215:1591)
                                            width: double.infinity,
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group176CEf (215:1946)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 4),
                                                  width: 23.5,
                                                  height: 28.08,
                                                  child: Icon(
                                                    Icons.file_copy,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                                Text(
                                                  // laporan7sR (215:1593)
                                                  'Laporan',
                                                  style: GoogleFonts.poppins(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.75,
                                                    color: Color(0xffffffff),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTabTapped: _onTabTapped,
        ),
      ),
    );
  }
}
