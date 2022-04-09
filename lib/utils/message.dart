import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String? msg;
  final String? direction;
  final String? dateTime;

  const Message({Key? key, this.msg, this.direction, this.dateTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: direction == 'left'
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        //for left corner

                        Image.asset(
                          'assets/images/in.png',
                          fit: BoxFit.scaleDown,
                          width: 30.0,
                          height: 30.0,
                        ),

                        Container(
                          width: 180.0,
                          margin: const EdgeInsets.only(left: 6.0),
                          decoration: BoxDecoration(
                            color: const Color(0xffd6d6d6),
                            border: Border.all(
                                color: const Color(0xffd6d6d6),
                                width: .25,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            msg!,
                            style: const TextStyle(
                              fontFamily: 'Gamja Flower',
                              fontSize: 20.0,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //date time
                    Container(
                      margin: const EdgeInsets.only(left: 6.0),
                      decoration: BoxDecoration(
                        color: const Color(0xffd6d6d6),
                        border: Border.all(
                            color: const Color(0xffd6d6d6),
                            width: .25,
                            style: BorderStyle.solid),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      padding: const EdgeInsets.only(
                          top: 0.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: Text(
                        dateTime!,
                        style: const TextStyle(
                          fontSize: 8.0,
                          color: Color(0xff000000),
                        ),
                      ),
                      width: 180.0,
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        //for right corner
                        Image.asset(
                          'assets/images/out.png',
                          fit: BoxFit.scaleDown,
                          width: 30.0,
                          height: 30.0,
                        ),

                        Container(
                          margin: const EdgeInsets.only(right: 6.0),
                          decoration: BoxDecoration(
                            color: const Color(0xffef5350),
                            border: Border.all(
                                color: const Color(0xffef5350),
                                width: .25,
                                style: BorderStyle.solid),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0),
                              bottomRight: Radius.circular(0.0),
                              bottomLeft: Radius.circular(0.0),
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            msg!,
                            style: const TextStyle(
                              fontFamily: 'Gamja Flower',
                              fontSize: 20.0,
                              color: Color(0xffffffff),
                            ),
                          ),
                          width: 180.0,
                        ),
                      ],
                    ),

                    //date time
                    Container(
                      margin: const EdgeInsets.only(right: 6.0),
                      decoration: BoxDecoration(
                        color: const Color(0xffef5350),
                        border: Border.all(
                            color: const Color(0xffef5350),
                            width: .25,
                            style: BorderStyle.solid),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      alignment: Alignment.bottomRight,
                      padding: const EdgeInsets.only(
                          top: 0.0, bottom: 8.0, left: 8.0, right: 8.0),
                      child: Text(
                        dateTime!,
                        style: const TextStyle(
                          fontSize: 8.0,
                          color: Color(0xffffffff),
                        ),
                      ),
                      width: 180.0,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
