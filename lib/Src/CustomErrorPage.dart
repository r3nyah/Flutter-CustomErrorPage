import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.orange,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 20,
                    ),
                    child: Text(
                      'Return',
                      style: GoogleFonts.getFont(
                        'Quicksand',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepOrange[900],
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
        ),
        Container(
          height: 700,
          decoration: const BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Ride . ',
                        style: GoogleFonts.getFont(
                          'Bebas Neue',
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  'Lost ?',
                  style: GoogleFonts.getFont(
                    'Permanent Marker',
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_ClOqK5.json'
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Text(
                  'It seems nothing out here',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Quicksand',
                    color: Colors.brown,
                    fontWeight: FontWeight.w600,
                    fontSize: 26,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
