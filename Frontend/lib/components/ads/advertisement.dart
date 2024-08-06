import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Advertisement extends StatefulWidget {
  const Advertisement({super.key});

  @override
  State<Advertisement> createState() => _AdvertisementState();
}

class _AdvertisementState extends State<Advertisement>
    with TickerProviderStateMixin {
  late AnimationController _adtextcontroller;
  late AnimationController _buttoncontroller;
  late AnimationController _imagecontroller;
  late Animation<Offset> _adtextanimation;
  late Animation<Offset> _buttonanimation;
  late Animation<Offset> _imageanimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _adtextcontroller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 750,
      ),
    );
    _buttoncontroller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 750,
      ),
    );
    _imagecontroller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 750,
      ),
    );
    _adtextanimation =
        CurvedAnimation(parent: _adtextcontroller, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(-1.5, 0),
        end: Offset(0, 0),
      ),
    );
    _buttonanimation =
        CurvedAnimation(parent: _adtextcontroller, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(0.0, 1.5),
        end: Offset(0, 0),
      ),
    );
    _imageanimation =
        CurvedAnimation(parent: _adtextcontroller, curve: Curves.easeInOut)
            .drive(
      Tween<Offset>(
        begin: Offset(1.5, 0),
        end: Offset(0, 0),
      ),
    );
    Future.delayed(
        Duration(milliseconds: 300), () => _adtextcontroller.forward());
    Future.delayed(
        Duration(milliseconds: 300), () => _buttoncontroller.forward());
    Future.delayed(
        Duration(milliseconds: 300), () => _imagecontroller.forward());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _adtextcontroller.dispose();
    _buttoncontroller.dispose();
    _imagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SlideTransition(
                    position: _adtextanimation,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upto',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '30% Off*',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SlideTransition(
                    position: _buttonanimation,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Know more',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SlideTransition(
                position: _imageanimation,
                child: Image.asset(
                  'assets/images/evbike.jpg',
                  width: 125,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
