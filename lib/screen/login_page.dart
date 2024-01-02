// ignore_for_file: unused_field
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kader_posyandu/page/home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 1.0,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(1, 50, 0, 27),
                  width: 227,
                  height: 227,
                  child: Image.network(
                    'https://1.bp.blogspot.com/-vNcUzj8YRPo/YNaCWN7kmLI/AAAAAAAAFaE/Q0YIFTjsM-kDUxl8VXWNHN86WZtELt8MwCLcBGAsYHQ/s1600/Logo%2BPosyandu.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0, 0, 0, MediaQuery.of(context).size.height * 0.25),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                              padding:
                                  const EdgeInsets.fromLTRB(15, 10, 15, 10),
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
                                          Icons.mail_outline,
                                          color: Color.fromARGB(78, 0, 0, 0),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          34, 0, 0, 0),
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                      child: TextFormField(
                                        controller: _emailController,
                                        decoration:
                                            const InputDecoration.collapsed(
                                          hintText: "Email",
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.trim().isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          if (!RegExp(r'\S+@\S+\.\S+')
                                              .hasMatch(value)) {
                                            return 'Please enter a valid email address';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                          _emailController.text = value!;
                                        },
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
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                                      0, 10.5, 399, 0),
                                  width: 24,
                                  height: 24,
                                  child: const Icon(
                                    Icons.lock_outlined,
                                    color: Color.fromARGB(78, 0, 0, 0),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 34, right: 7),
                                child: TextFormField(
                                  controller: _passwordController,
                                  // obscureText: passenable,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        // setState(() {
                                        //   passenable = !passenable;
                                        // });
                                      },
                                      icon: Icon(Icons.visibility_off),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _passwordController.text = value!;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Center(
                        // forgotpasswordvRh (2:25)
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const SendMail()),
                            // );
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 17.5),
                            width: double.infinity,
                            child: Text(
                              'Lupa Password?',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.1725,
                                color: const Color(0x7f000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 46,
                          decoration: const BoxDecoration(
                            color: Color(0xff5083ef),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Masuk',
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
    );
  }

  // void _login() async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     try {
  //       String email = _emailController.text.trim();
  //       String password = _passwordController.text.trim();
  //       if (email.isEmpty || password.isEmpty) {
  //         throw Exception('Email and password cannot be empty');
  //       }
  //       User? user = await ApiService().login(email, password);

  //       if (user != null) {
  //         final userProvider =
  //             Provider.of<UserProvider>(context, listen: false);
  //         userProvider.setUser(user);

  //         SharedPreferences prefs = await SharedPreferences.getInstance();
  //         await prefs.setBool('isLoggedIn', true);
  //         await prefs.setString('userData', jsonEncode(user.toJson()));

  //         Navigator.pushReplacementNamed(context, '/home');
  //         print(user.mobToken);
  //       } else {
  //         throw Exception('Failed to login');
  //       }

  //       setState(() {
  //         _isLoading = false;
  //         _errorMessage = '';
  //       });
  //     } catch (e) {
  //       setState(() {
  //         _isLoading = false;
  //         _errorMessage = e.toString();
  //       });
  //       await showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: const Text('Login Gagal'),
  //             content: const Text(
  //                 'Akun Anda belum terverifikasi atau Email & password salah'),
  //             actions: <Widget>[
  //               TextButton(
  //                 child: const Text('OK'),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //             ],
  //           );
  //         },
  //       );
  //     }
  //   }
  // }
}
