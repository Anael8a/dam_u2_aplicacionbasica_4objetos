

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aplicacion6 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Aplicacion6();
  }
}

class _Aplicacion6 extends State<Aplicacion6>{
  //apartado para crear metodos privados
  final nombre = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Bienvenido"),
        centerTitle: true,

        actions: [
          IconButton(onPressed: _iniciarSecion, icon: Icon(Icons.account_circle_outlined))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network
            ("https://www.insak.com.co/aym_image/aym_ico/aym_ico_user.png",),
          const Text("Bienvenido a la App",style: TextStyle(fontSize: 25, color: Colors.blueGrey, fontWeight: FontWeight.bold), ),
          SizedBox(height: 25,),
          const Text("Escribe tu nombre para iniciar seccion "),
          SizedBox(height: 15,),

          const Text("Da click en el icono en la parte superior", style: TextStyle(fontSize: 20, color: Colors.red),),
          Padding(padding: EdgeInsets.all(40),


          child: TextField(
            controller: nombre,

            decoration: InputDecoration(
              labelText: "Nombre",
              prefixIcon: Icon(Icons.add),
              border: OutlineInputBorder(),
            ),

          ),
          ),
          Padding(padding: EdgeInsets.all(40),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "contraseña",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
              )
              ,obscureText: true,),
          ),

          ElevatedButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> secondScreen()));}, child: Text("Iniciar"))
        ],
      ),


    );
  }


  void _iniciarSecion() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hola "+nombre.text+" Bienvenido")),);
  }


}

class secondScreen extends StatelessWidget{
  @override
  final nombre = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bienvenido"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Text("Bienvenido a la App Creada por Carlos Ochoa"),
          SizedBox(height: 250, width: 350, child: Image.asset('assets/perfil.png'),)
        ],
      ),
    );
  }

}