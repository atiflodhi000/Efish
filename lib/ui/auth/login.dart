import 'package:efish/ui/auth/signup.dart';
import 'package:efish/ui/dashboard/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widget/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  final _formfield = GlobalKey<FormState>();
  final emailcontroller =TextEditingController();
  final passcontroller =TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passcontroller.dispose();
  }
  void login(){
    setState(() {
      loading=true;
    });
    _auth.signInWithEmailAndPassword(
        email: emailcontroller.text.toString(),
        password: passcontroller.text.toString()).then((value){
      setState(() {
        loading=false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
      Utils().toastMessage('Welcome'+'\n'+value.user!.email.toString());

      setState(() {
        loading=false;
      });
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
      setState(() {
        loading=false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47409D),
      body: Center(
        child: Container(
            width: 320,
            height: 432,
            decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Color(0x475782c1)),
          child: Form(
            key: _formfield,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10),
                  child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 50),
                  child: TextFormField(
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xffFFFFFF),
                      filled: true,
                      prefixIcon: Icon(Icons.email_outlined,color: Color(0xff323F4B),),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter Email';
                      }else
                      {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25,top: 10),
                  child: TextFormField(
                    controller: passcontroller,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        fillColor: Color(0xffFFFFFF),
                        filled: true,
                        prefixIcon: Icon(Icons.lock_open,color: Color(0xff323F4B),),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return 'Enter Password';
                      }else
                      {
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: RoundWidget(
                    title: 'Login',
                    loading: loading,
                    onTap: (){
                      if(_formfield.currentState!.validate()){
                        login();

                      }
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account yet?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)
                        )),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                    },
                        child: Text('Register for free',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF)),))
                  ],
                ),



              ],
            ),
          ),
        )
      ),
    );
  }
}
