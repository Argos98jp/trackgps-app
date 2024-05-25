import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        //1
        body: SingleChildScrollView(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Buenos dias, Ricardo',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 26.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // Button color
                      child: InkWell(
                        // Splash color
                        onTap: () {
                          // Handle your onTap
                        },
                        child: Container(
                          width: 29,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Colors.transparent, // Background color
                            border: Border.all(
                              color: Colors.blueGrey[100]!, // Border color
                              width: 1, // Border width
                            ),
                            shape: BoxShape.circle, // Circular shape
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications_none_rounded,
                              size: 17,
                              color: Colors.grey, // Icon color
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                    child: Material(
                      color: Colors.transparent, // Button color
                      child: InkWell(
                        // Splash color
                        onTap: () {
                          // Handle your onTap
                        },
                        child: Container(
                          width: 29,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Colors.transparent, // Background color
                            border: Border.all(
                              color: Colors.blueGrey[100]!, // Border color
                              width: 1, // Border width
                            ),
                            shape: BoxShape.circle, // Circular shape
                          ),
                          child: Center(
                              child: Text(
                            'R',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            width: 400,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/images/fondo.jpg'), // Ruta de la imagen
                fit: BoxFit.cover, // Ajuste de la imagen
              ), // Color de fondo
              borderRadius:
                  BorderRadius.circular(10), // Borde redondeado (opcional)
             
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.black.withOpacity(0.5), // Color sólido con opacidad
                  Colors.transparent, // Transparente
                ],
              ),
            ),
            child: Stack(
              alignment: Alignment.centerLeft,              
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: 400,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10), // Borde redondeado (opcional)

                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black
                            .withOpacity(1), // Color sólido con opacidad
                        Colors.transparent, // Transparente
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  margin: EdgeInsets.only(left: 16),
                  child: Wrap(
                      children: <Widget>[
                        Text(
                          'Adquiere el control de tu vehiculo',
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                )
                
              
              ],
            ),
          )
        ],
      ),
    ));
  }
}
