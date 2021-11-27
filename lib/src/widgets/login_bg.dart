import 'package:flutter/material.dart';
import 'package:flutter_login/src/widgets/shape_clipper.dart';

class LoginBackground extends StatelessWidget {
  late final List<Color> arcColorList;
  LoginBackground({Key? key, required this.arcColorList}) : super(key: key);

  // Widget topHalf(BuildContext context) {
  //   return Flexible(
  //     flex: 2,
  //     child: ClipPath(
  //       clipper: ArcClipper(),
  //       child: Stack(
  //         children: <Widget>[
  //           Container(
  //             decoration: BoxDecoration(
  //                 gradient: LinearGradient(
  //               colors: arcColorList,
  //             )),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget topHalf(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 2.5,
        child: ClipPath(
          clipper: ArcClipper(),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: arcColorList,
                )),
              )
            ],
          ),
        ));
  }

  // static List<Color> kitGradients = [
  //   Colors.blueGrey.shade800,
  //   Colors.black87,
  // ];

  // final bottomHalf = Flexible(
  //   flex: 3,
  //   child: Container(),
  // );

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: <Widget>[topHalf(context), bottomHalf],
    // );
    return topHalf(context);
  }
}
