import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:saribuana/model/add_employes_m.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../network/provider.dart';

class Addemployes extends StatefulWidget {
  const Addemployes({super.key});

  @override
  State<Addemployes> createState() => _AddemployesState();
}

class _AddemployesState extends State<Addemployes> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _password;
  late String _phoneNumber;
  int _groupId = 1;
  int _jenis = 0;
  late int _userLevel = 0;
  late String _kdUser;
  late String _kdCustomer;
  late String _token;

  bool passenable = true;
  bool confirm = true;

  void _handleDropdownChanged(int? value) {
    setState(() {
      _groupId = value!;
    });
  }

  void _dropdownjenis(int? value) {
    setState(() {
      _jenis = value!;
    });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _fetchUserAndCustomer();
  // }

  // Future<void> _fetchUserAndCustomer() async {
  //   // ignore: unused_local_variable
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   if (userProvider.user != null) {
  //     _kdUser = userProvider.user!.kdUser;
  //     _kdCustomer = userProvider.user!.kdCustomer;
  //     _token = userProvider.user!.mobToken;
  //     // Lakukan logika lainnya jika diperlukan
  //     print(_kdUser);
  //   }
  // }

  // Future<void> _registerEmployee() async {
  //   // Validasi formulir sebelum melakukan panggilan API
  //   if (_formKey.currentState!.validate()) {
  //     // Lakukan panggilan API dengan parameter yang diperlukan
  //     final apiResult = await EmployeeService.registerEmployee(
  //       _kdUser,
  //       _name,
  //       _groupId,
  //       _email,
  //       _phoneNumber,
  //       _password,
  //       _jenis,
  //       _userLevel,
  //       _kdCustomer,
  //       _token,
  //     );

  //     // Lakukan penanganan hasil API sesuai kebutuhan Anda
  //     // ignore: unnecessary_null_comparison
  //     if (apiResult != null) {
  //       print('successs');
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => Employes()),
  //       );
  //     } else {
  //       print('gagal kenapa');
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("gagal Mendaftarkan Employess")),
  //       );
  //     }
  //   }
  // }

  // ignore: unused_field
  String _confirmPassword = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'New Rujukan',
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
        ),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                        16, MediaQuery.of(context).size.height * 0.09, 0, 8),
                    child: Text(
                      'Register Paseien',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.1725,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: Text(
                      'Register Pasien Rujukan ke Puskesmas',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.1725,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 22.5, 15, 15.5),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x11000000),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 72,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.5, 399, 0),
                                    width: 24,
                                    height: 24,
                                    child: const Icon(
                                      Icons.person_outline,
                                      color: Color.fromARGB(78, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(34, 0, 0, 0),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "Name Pasien",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) => _name = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x11000000),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            width: 134,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.5, 399, 0),
                                    width: 24,
                                    height: 24,
                                    child: const Icon(
                                      Icons.work_outline,
                                      color: Color.fromARGB(78, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(34, 0, 0, 0),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: DropdownButtonFormField(
                                    decoration: const InputDecoration.collapsed(
                                        hintText: ''),
                                    hint: const Icon(Icons.language),
                                    value: _groupId,
                                    validator: (value) => value == null
                                        ? "Select a Division"
                                        : null,
                                    dropdownColor: const Color.fromARGB(
                                        255, 245, 238, 238),
                                    items: const [
                                      DropdownMenuItem(
                                        value: 1,
                                        child: Text(
                                          "Pendamping",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 2,
                                        child: Text(
                                          "Guslina",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 3,
                                        child: Text(
                                          "Fatiah",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      DropdownMenuItem(
                                        value: 4,
                                        child: Text(
                                          "Armel",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    ],
                                    onChanged: _handleDropdownChanged,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                        //   padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        //   width: double.infinity,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: const Color(0x11000000),
                        //     borderRadius: BorderRadius.circular(50),
                        //   ),
                        //   child: Container(
                        //     width: 134,
                        //     height: double.infinity,
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Flexible(
                        //           child: Container(
                        //             margin: const EdgeInsets.fromLTRB(
                        //                 0, 2.5, 399, 0),
                        //             width: 24,
                        //             height: 24,
                        //             child: const Icon(
                        //               Icons.account_tree_outlined,
                        //               color: Color.fromARGB(78, 0, 0, 0),
                        //             ),
                        //           ),
                        //         ),
                        //         Container(
                        //           margin:
                        //               const EdgeInsets.fromLTRB(34, 0, 0, 0),
                        //           padding:
                        //               const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        //           child: DropdownButtonFormField(
                        //             decoration: const InputDecoration.collapsed(
                        //                 hintText: ''),
                        //             hint: const Icon(Icons.language),
                        //             value: _jenis,
                        //             validator: (value) => value == null
                        //                 ? "Select a country"
                        //                 : null,
                        //             dropdownColor: const Color.fromARGB(
                        //                 255, 245, 238, 238),
                        //             items: const [
                        //               DropdownMenuItem(
                        //                 value: 0,
                        //                 child: Text(
                        //                   "Group",
                        //                   style: TextStyle(fontSize: 14),
                        //                 ),
                        //               ),
                        //               DropdownMenuItem(
                        //                 value: 2,
                        //                 child: Text(
                        //                   "Approver",
                        //                   style: TextStyle(fontSize: 14),
                        //                 ),
                        //               ),
                        //               DropdownMenuItem(
                        //                 value: 3,
                        //                 child: Text(
                        //                   "Drafter",
                        //                   style: TextStyle(fontSize: 14),
                        //                 ),
                        //               ),
                        //             ],
                        //             onChanged: _dropdownjenis,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x11000000),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            width: 134,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.5, 399, 0),
                                    width: 24,
                                    height: 24,
                                    child: const Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromARGB(78, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(34, 0, 0, 0),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "Alamat",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      setState(() {
                                        try {
                                          _userLevel = int.parse(value);
                                        } catch (error) {
                                          _userLevel =
                                              0; // Nilai default jika konversi gagal
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x11000000),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            width: 134,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.5, 399, 0),
                                    width: 24,
                                    height: 24,
                                    child: const Icon(
                                      Icons.person_outline,
                                      color: Color.fromARGB(78, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(34, 0, 0, 0),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "Usia",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) => _email = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0x11000000),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            width: 134,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 2.5, 399, 0),
                                    width: 24,
                                    height: 24,
                                    child: const Icon(
                                      Icons.medical_services_outlined,
                                      color: Color.fromARGB(78, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(34, 0, 0, 0),
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: TextFormField(
                                    decoration: const InputDecoration.collapsed(
                                      hintText: "Penyakit",
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                    onChanged: (value) => _phoneNumber = value,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                        //   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        //   width: double.infinity,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: const Color(0x11000000),
                        //     borderRadius: BorderRadius.circular(50),
                        //   ),
                        //   child: Container(
                        //     width: 134,
                        //     height: double.infinity,
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Flexible(
                        //           child: Container(
                        //             margin: const EdgeInsets.fromLTRB(
                        //                 0, 10.5, 399, 0),
                        //             width: 24,
                        //             height: 24,
                        //             child: const Icon(
                        //               Icons.lock_outlined,
                        //               color: Color.fromARGB(78, 0, 0, 0),
                        //             ),
                        //           ),
                        //         ),
                        //         Container(
                        //           margin:
                        //               const EdgeInsets.only(left: 34, right: 7),
                        //           child: TextFormField(
                        //             obscureText: passenable,
                        //             decoration: InputDecoration(
                        //               hintText: "Password",
                        //               border: InputBorder.none,
                        //               suffixIcon: IconButton(
                        //                 onPressed: () {
                        //                   setState(() {
                        //                     passenable = !passenable;
                        //                   });
                        //                 },
                        //                 icon: Icon(passenable
                        //                     ? Icons.visibility
                        //                     : Icons.visibility_off),
                        //               ),
                        //             ),
                        //             validator: (value) {
                        //               if (value == null ||
                        //                   value.trim().isEmpty) {
                        //                 return 'Please enter some text';
                        //               }
                        //               return null;
                        //             },
                        //             onChanged: (value) => _password = value,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // Container(
                        //   margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                        //   padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        //   width: double.infinity,
                        //   height: 50,
                        //   decoration: BoxDecoration(
                        //     color: const Color(0x11000000),
                        //     borderRadius: BorderRadius.circular(50),
                        //   ),
                        //   child: Container(
                        //     width: 134,
                        //     height: double.infinity,
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       children: [
                        //         Flexible(
                        //           child: Container(
                        //             margin: const EdgeInsets.fromLTRB(
                        //                 0, 10.5, 399, 0),
                        //             width: 24,
                        //             height: 24,
                        //             child: const Icon(
                        //               Icons.lock_outlined,
                        //               color: Color.fromARGB(78, 0, 0, 0),
                        //             ),
                        //           ),
                        //         ),
                        //         Container(
                        //           margin:
                        //               const EdgeInsets.only(left: 34, right: 7),
                        //           padding: const EdgeInsets.only(bottom: 2),
                        //           child: TextFormField(
                        //             obscureText: confirm,
                        //             decoration: InputDecoration(
                        //               hintText: "Confirm Password",
                        //               border: InputBorder.none,
                        //               suffixIcon: IconButton(
                        //                 onPressed: () {
                        //                   setState(() {
                        //                     confirm = !confirm;
                        //                   });
                        //                 },
                        //                 icon: Icon(confirm
                        //                     ? Icons.visibility
                        //                     : Icons.visibility_off),
                        //               ),
                        //             ),
                        //             validator: (value) {
                        //               if (value == null ||
                        //                   value.trim().isEmpty) {
                        //                 return 'Please enter some text';
                        //               }
                        //               if (value != _password) {
                        //                 return '0';
                        //               }
                        //               return null;
                        //             },
                        //             onChanged: (value) =>
                        //                 _confirmPassword = value,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        TextButton(
                          onPressed: () {
                            // if (_formKey.currentState!.validate()) {
                            //   _formKey.currentState!.save();
                            //   _registerEmployee();
                            // }
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: double.infinity,
                            height: 46,
                            decoration: BoxDecoration(
                              color: const Color(0xff5083ef),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Center(
                                child: Text(
                                  "Rujuk",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1725,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
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
        ),
      ),
    );
  }
}
