import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // titleSpacing: 10,
          toolbarHeight: 300,
          // title: Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     // Container(
          //     // margin: EdgeInsets.only(top: 40),
          //     // width: 90,
          //     // child:
          //     Image.asset(
          //       "assets/icons/user-3.png",
          //       color: Colors.white,
          //       width: 90,
          //     ),
          //     // ),
          //     Align(
          //       alignment: Alignment.bottomRight,
          //       child: Text(
          //         "LogIn",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.w800,
          //           fontSize: 27,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // actions: [
          //   Container(
          //     width: 100,
          //     padding: EdgeInsets.only(top: 210, right: 10),
          //     child: Text(
          //       "LogIn",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.w800,
          //         fontSize: 27,
          //       ),
          //     ),
          //   ),
          // ],
          flexibleSpace: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150)),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.red,
                  const Color.fromARGB(180, 255, 153, 0),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                // margin: EdgeInsets.only(top: 40),
                // width: 90,
                // child:
                Image.asset(
                  "assets/icons/user-3.png",
                  color: Colors.white,
                  width: 90,
                ),
                // ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "LogIn",
                    style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 27,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 50,
                // )
              ],
            ),
          ),

          // title: ,
        ),
        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(
                //       "",
                //       style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w900,
                //           fontSize: 35),
                //     ),
                //     Text(
                //       "Sign Up",
                //       style: TextStyle(
                //           color: Colors.grey[400],
                //           fontWeight: FontWeight.w800,
                //           fontSize: 18),
                //     ),
                //   ],
                // ),

                // SizedBox(
                //   height: 15,
                // ),
                Gap(15),
                _TextField(),
                SizedBox(
                  height: 0,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 200),
                //   child:
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w500),
                    // textAlign: TextAlign.right,
                  ),
                ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 45),
                  child: ElevatedButton(
                    child: Container(
                      width: 250,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            ' Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Educative Alert'),
                        content: const Text(
                            'Here we can add the description of the alert'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Don't have an account?"),
                    TextSpan(
                        text: " Register",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.orange)),
                  ])),
                ),
              ],
            )));
  }
}

class _TextField extends StatefulWidget {
  const _TextField({
    super.key,
  });

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  @override
  Widget build(BuildContext context) {
    bool passwordVisible = true;

    @override
    void initState() {
      super.initState();
      passwordVisible = false;
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: Column(
        children: [
          Container(
              child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.mail,
                color: Colors.grey,
                size: 20,
              ),
              hintText: "Username or Email Address",
              hintStyle: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.w500),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Color.fromARGB(102, 158, 158, 158), width: 1.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(102, 158, 158, 158), width: 0.5),
              ),
            ),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
              child: TextField(
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            obscureText: passwordVisible,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.key_rounded,
                color: Colors.grey,
                size: 20,
              ),
              hintText: "Password",
              hintStyle: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.w500),
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey[400],
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
              ),
              // alignLabelWithHint: false,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: Color.fromARGB(102, 158, 158, 158), width: 1.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(102, 158, 158, 158), width: 0.5),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
