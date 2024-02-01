import 'package:flutter/material.dart';

void main() => runApp(MiApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MiApp);
}*/

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Filas, columnas y botones", // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // estructura básica de una app
        // estructura de una app movil
        appBar: AppBar(
          title: Text("Filas, columnas y botones"),
        ),
        body: Botones(context));
  }
}

Widget Botones(BuildContext context) {
  return Center(
    child: ElevatedButton(
      child: /*Text("Botón"),*/
          Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.access_time),
          SizedBox(
            width: 10,
          ),
          Text("Hora")
        ],
      ),
      onPressed: () {
        var t = DateTime.now();
        print(t);
      },
    ),
  );
}

Widget Ejemplo02(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    // eje cruzado, el column es horizontal y en row vertical
    //mainAxisSize: MainAxisSize.min,  // ocupa el contenido
    children: [
      Text("Texo 01"),
      Text("Texo 02"),
      Text("Texo 03"),
      Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Col 01"),
          Text("Col 01"),
          Text("Col 01"),
          Text("Col 01"),
        ],
      ),
      Container(
        height: 150,
        width: 250,
        color: Colors.red,
      ),
      Container(
        height: 50,
        //width: MediaQuery.of(context).size.width,  // todo el ancho de la pantalla
        width: MediaQuery.of(context).size.width * 0.5,
        // mitad de la pantalla
        color: Colors.green,
        child: Text("container", textAlign: TextAlign.center),
      ),
    ],
  );
}

Widget Ejemplo01() {
  return Column(
    children: [
      Text("Texo 01"),
      Text("Texo 02"),
      Text("Texo 03"),
      Row(
        children: [
          Text("Col 01"),
          Text("Col 01"),
          Text("Col 01"),
          Text("Col 01"),
        ],
      )
    ],
  );
}
