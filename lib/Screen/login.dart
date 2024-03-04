import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 35),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  width: 90,
                  child: Image.asset("assets/icons/user.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                _TextField(),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
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
                          Icon(Icons.check, color: Colors.blue),
                          const Text(
                            ' LOG IN',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w800,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(text: "Don't have an account?"),
                    TextSpan(
                        text: " Register",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ])),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Continue with")),
                Container(
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  // padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        child: Image.asset("assets/icons/google-plus.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        child: Image.asset("assets/icons/github.png"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        child: Image.asset("assets/icons/facebook.png"),
                      ),
                    ],
                  ),
                )
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
              hintText: "Username or Email Address",
              hintStyle: TextStyle(
                  color: Colors.grey[400], fontWeight: FontWeight.w500),
              enabledBorder: UnderlineInputBorder(
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
              enabledBorder: UnderlineInputBorder(
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
