import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/src/helpers/helpers.dart';
import 'package:shoes_app/src/widgets/widgets.dart';

import '../models/zapato_model.dart';

class ZapatoDescScreen extends StatelessWidget {
  const ZapatoDescScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    cambiarStatusLigth();
    return Scaffold(
        body: Column(
      children: [
        Stack(children: [
          Hero(tag: 'zapato-1', child: ZapatoSizePreview(fullScreen: true)),
          Positioned(
              top: 60,
              child: FloatingActionButton(
                onPressed: () {
                  cambiarStatusDark();
                  Navigator.pop(context);
                },
                backgroundColor: Colors.transparent,
                elevation: 0,
                highlightElevation: 0,
                child: const Icon(Icons.keyboard_arrow_left_rounded,
                    size: 60, color: Colors.white),
              ))
        ]),
        Expanded(
            child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              ZapatoDescripcion(
                titulo: 'Nike Air Max 720',
                descripcion:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
              ),
              _MontoBuyNow(),
              _ColoresYMas(),
              _ButtonsSettings()
            ],
          ),
        )),
      ],
    ));
  }
}

class _ButtonsSettings extends StatelessWidget {
  const _ButtonsSettings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _ButtomSombreado(
            icon: Icon(Icons.star_border, color: Colors.red, size: 25),
          ),
          _ButtomSombreado(
            icon: Icon(Icons.add_shopping_cart,
                color: Colors.grey.withOpacity(0.4), size: 25),
          ),
          _ButtomSombreado(
            icon: Icon(Icons.settings,
                color: Colors.grey.withOpacity(0.4), size: 25),
          ),
        ],
      ),
    );
  }
}

class _ButtomSombreado extends StatelessWidget {
  final Icon icon;

  const _ButtomSombreado({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: -5,
                blurRadius: 20,
                offset: Offset(0, 10))
          ]),
      child: icon,
    );
  }
}

class _ColoresYMas extends StatelessWidget {
  const _ColoresYMas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: [
        Expanded(
            child: Stack(children: const [
          Positioned(
              left: 30,
              child: _ButtomColor(
                color: Color(0xffC6D642),
                index: 2,
                assetsImage: 'assets/imgs/verde.png',
              )),
          Positioned(
              left: 60,
              child: _ButtomColor(
                color: Color(0xffFFAD29),
                index: 3,
                assetsImage: 'assets/imgs/amarillo.png',
              )),
          Positioned(
              left: 90,
              child: _ButtomColor(
                color: Color(0xff2099F1),
                index: 4,
                assetsImage: 'assets/imgs/azul.png',
              )),
          _ButtomColor(
            color: Color(0xff364D56),
            index: 1,
            assetsImage: 'assets/imgs/negro.png',
          ),
        ])),
        const CustonButtom(
            text: 'More related items',
            width: 150,
            height: 30,
            color: Color(0xffFFC675))
      ]),
    );
  }
}

class _ButtomColor extends StatelessWidget {
  final Color color;
  final int index;
  final String assetsImage;

  const _ButtomColor(
      {required this.color, required this.index, required this.assetsImage});

  @override
  Widget build(BuildContext context) {
    final zapatoModel = Provider.of<ZapatoModel>(context);
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          zapatoModel.assetImage = assetsImage;
        },
        child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  const _MontoBuyNow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20),
        child: Row(children: [
          const Text(
            '\$200.0',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Bounce(
            delay: const Duration(seconds: 1),
            from: 8,
            child: const CustonButtom(
              width: 120,
              height: 40,
              text: 'Buy Now',
            ),
          )
        ]),
      ),
    );
  }
}
