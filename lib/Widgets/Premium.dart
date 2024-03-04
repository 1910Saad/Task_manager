import 'package:flutter/material.dart';
import 'package:tms/Widgets/constatant.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
      var he = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(he * 0.004) ,
          decoration: BoxDecoration(
            color: kwhite,
            borderRadius: BorderRadius.circular(he *0.002),
            gradient: const LinearGradient(
            colors: [
            Color (0xffFDC838),
            Color (0xffF37335),
            ],
            begin:Alignment.topLeft,
            end: Alignment.bottomRight,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(he *0.002),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(he * 0.012),
            child:Row(
              children: [
                Container(
                  height: he * 0.05,
                  width: he * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(he *0.02),
                    color: Colors.grey[300],

                  ),
                  child:ColorFiltered(
                    colorFilter:
                     ColorFilter.mode(Color.fromARGB(255, 204, 198, 198)
                    .withOpacity(0.6),BlendMode.srcATop),
                    child: const Icon(Icons.workspace_premium_outlined, size: 30,color:MyThemeColor.textColor,)
                  )
                ),
                SizedBox(width: he*0.015,),
              ],
            )
          ),
        ),
      ],
    );
  }
}