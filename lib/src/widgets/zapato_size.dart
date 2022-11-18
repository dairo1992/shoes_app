import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;
  ZapatoSizePreview({required this.fullScreen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: fullScreen ? 5 : 30, vertical: fullScreen ? 0 : 5),
      child: Container(
        width: double.infinity,
        height: 380,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [_ZapatoConSombrace(), if (!fullScreen) _ZapatoTallas()],
        ),
      ),
    );
  }
}

class _ZapatoConSombrace extends StatelessWidget {
  const _ZapatoConSombrace({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned.fill(child: _ZapatoSombra()),
          const Image(image: AssetImage('assets/imgs/azul.png'))
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)]),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  const _ZapatoTallas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  final double talla;
  const _TallaZapatoCaja(this.talla);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: talla != 9 ? Colors.white : Color(0xffF1A23A),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (talla == 9)
              const BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
      child: Text(talla.toString().replaceAll('.0', ''),
          style: TextStyle(
            color: talla != 9 ? Color(0xffF1A23A) : Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
