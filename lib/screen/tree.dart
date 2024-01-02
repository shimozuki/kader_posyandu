import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:saribuana/model/employes_m.dart';
// import 'package:saribuana/network/employes_s.dart';
// import 'package:saribuana/network/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Tree extends StatefulWidget {
  const Tree({super.key});

  @override
  State<Tree> createState() => _TreeState();
}

class Employee {
  final String name;
  final String position;
  final String groupName;

  Employee({
    required this.name,
    required this.position,
    required this.groupName,
  });
}

class _TreeState extends State<Tree> {
  // List<Employee> _employees = [];
  bool _isLoading = true;

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
  List<Employee> _employees = [];

  @override
  void initState() {
    super.initState();
    // Initialize the employee data
    _initializeEmployees();
  }

  void _initializeEmployees() {
    _employees = [
      Employee(name: 'Hj. Sopiyah M.', position: 'Ketua', groupName: 'Pengurus'),
      Employee(name: 'Nurnaningsih', position: 'Wakil Ketua', groupName: 'Pengurus'),
      Employee(name: 'Siti Maryam', position: 'Bendahara', groupName: 'Pengurus'),
      Employee(name: 'Hafsah M. Amin', position: 'Sekretaris', groupName: 'Pengurus'),
      Employee(name: 'Lili Dahlia', position: 'Anggota', groupName: 'Anggota'),
      Employee(name: 'Jana Diana', position: 'Anggota', groupName: 'Anggota'),
      Employee(name: 'Baity Fauziah', position: 'Anggota', groupName: 'Anggota'),
      Employee(name: 'Lili Suryanti', position: 'Anggota', groupName: 'Anggota'),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Struktur Kader',
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
        body: SingleChildScrollView(
          child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame202rBR (322:543)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 19.5),
                      padding: EdgeInsets.fromLTRB(11, 12, 11, 12),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: const BoxDecoration(
                        color: Color(0x33489ed2),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // treeofyggdrasilk1u (322:548)
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                            child: Text(
                              'Struktur Kader',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.1725,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // moveuserbyholdittochangethetre (322:549)
                            'Struktur kepengurusan Posyandu Lempeh',
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              height: 1.1725,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      width: double.infinity,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _employees.length,
                        itemBuilder: (context, index) {
                          final employee = _employees[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // superuserJ8F (325:574)
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                                child: Text(
                                  employee.groupName,
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    height: 1.1725,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 9.5),
                                padding: EdgeInsets.fromLTRB(15, 9.5, 162, 9.5),
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height * 0.09,
                                decoration: BoxDecoration(
                                  color: Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x26000000),
                                      offset: Offset(0, 2),
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                            color: Color(0xffd9d9d9), width: 2),
                                        color:
                                            Color(0xffd9d9d9), // Warna lingkaran
                                      ),
                                      child: const Icon(Icons.person_outline),
                                    ),
                                    Container(
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 4),
                                            child: Text(
                                              employee.name,
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                height: 1.1725,
                                                color: const Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            employee.position,
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
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
