import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:provider/provider.dart';
// import 'package:saribuana/model/employes_m.dart';
// import 'package:saribuana/network/employes_s.dart';
// import 'package:saribuana/network/provider.dart';
// import 'package:saribuana/page/akun.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'add_employes.dart';
// import 'tree.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kader_posyandu/screen/add_employes.dart';

class Employes extends StatefulWidget {
  const Employes({super.key});

  @override
  State<Employes> createState() => _EmployesState();
}

class _EmployesState extends State<Employes> {
  // List<Employee> _employees = [];
  // bool _isLoading = true;

  // @override
  // void initState() {
  //   super.initState();
  //   _fetchEmployees();
  // }

  // Future<void> _fetchEmployees() async {
  //   try {
  //     // ignore: unused_local_variable
  //     final userProvider = Provider.of<UserProvider>(context, listen: false);

  //     // ignore: unused_local_variable
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     final token = userProvider.user?.mobToken;
  //     final kdCustomer = userProvider.user?.kdCustomer;
  //     final employees =
  //         await EmployeesService.getEmployees(token!, kdCustomer!);
  //     setState(() {
  //       _employees = employees;
  //       _isLoading = false;
  //     });
  //   } catch (e) {
  //     print('Failed to fetch employees: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(builder: (context) => Akun()),
              // );
            },
          ),
          title: Text(
            'Rujukan Puskesmas',
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff000000),
            ),
          ),
          backgroundColor: const Color(0xffffffff),
          iconTheme: const IconThemeData(
            color: Color(0xff000000), // Ubah warna icon menjadi hitam
          ),
          elevation: 0.5,
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                // Aksi yang dijalankan saat opsi menu dipilih
                if (value == 'add') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Addemployes()),
                  );
                } else if (value == 'view') {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Tree()),
                  // );
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'add',
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.1725,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                const PopupMenuItem<String>(
                  value: 'view',
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.1725,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        body:  SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.02),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      // final employee = _employees[index];
                      return Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                        padding: EdgeInsets.fromLTRB(15, 9.5, 162, 9.5),
                        width: double.infinity,
                        height: 75,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    color: Color(0xffd9d9d9), width: 2),
                                color: Color(0xffd9d9d9), // Warna lingkaran
                              ),
                              child: const Icon(Icons.person_outline),
                            ),
                            Container(
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                    child: Text(
                                      'guslina',
                                      style: GoogleFonts.roboto(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.1725,
                                        color: const Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '2023-12-28',
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1725,
                                      color: const Color(0x7f000000),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
      ),
    );
  }
}
