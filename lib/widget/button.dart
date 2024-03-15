import 'package:flutter/material.dart';

class RoundWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool  loading;
  const RoundWidget({Key? key,required this.title, required this.onTap,this.loading=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 163,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Color(0xb22d2779)
        ),
        child: Center(child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,) : Text(title,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color(0xffE1E1ED)
          ),),),
      ),
    );
  }
}
