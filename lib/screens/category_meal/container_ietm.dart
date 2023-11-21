import 'package:flutter/material.dart';

class ContainerIetm extends StatelessWidget {
  const ContainerIetm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Container(
          decoration: BoxDecoration(

          ),
          width: 327,
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text(
                  'Kitchen',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/Group 3352.png'),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Checken hint',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins',color: Color(0xFFC4C4C4)),
                  ),
                  Spacer(),
                  Image.asset('assets/image 46.png'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: Text('200 LE',style: TextStyle(

                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,color: Color(0xFFC4C4C4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
