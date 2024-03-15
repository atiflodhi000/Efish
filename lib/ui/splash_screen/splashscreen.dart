import 'package:flutter/material.dart';

import '../auth/login.dart';



class SplasScreen extends StatelessWidget {
  const SplasScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: Color(0xff47409D)
                ),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('images/lg.png'),),
              ),
            ),
            const SizedBox(height: 15,),
            Text(
                "ONE CLICK CARE",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff47409D)
                )
            ),
            const SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Fisheries ',
                    style: TextStyle(
                      color: Color(0xff4D54FF), // Set the color for this part of the text
                      fontSize: 15,
                      fontWeight: FontWeight.w400,// Optional: You can apply other text styles as well
                    ),
                  ),
                  TextSpan(
                    text: 'and all\n',
                    style: TextStyle(
                      color: Color(0xff7A7A7A), // Set the color for this part of the text
                      fontSize: 15,
                      fontWeight: FontWeight.w400,// Optional: You can apply other text styles as well
                    ),
                  ),
                  TextSpan(
                    text: 'the enviornemnt using this IOT based app and control all the things in just one click',
                    style: TextStyle(
                      color: Color(0xff7A7A7A), // Set the color for this part of the text
                      fontSize: 15,
                      fontWeight: FontWeight.w400,// Optional: You can apply other text styles as well
                    ),
                  ),
                ]
              )),
            ),
            const SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
              },
              child: Container(
                  width: 192,
                  height: 64,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Color(0xff47409d)),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Image(image: AssetImage('images/arr.jpg'),),
                    ),
                    SizedBox(width: 10,),
                    Text(
                        "GET STARTED",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)
                        )
                    ),

                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  //color: Color(0xff47409D)
              ),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage('images/fi.jpg'),),
            ),
          ],
        ),
      ),
    );
  }

}
class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(
        w*0.5,
       h-110,
      w,h-70
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
  
}