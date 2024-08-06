import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mainservices extends StatefulWidget {
  const Mainservices(this.widget, this.icon, this.title, {super.key});
  final Icon icon;
  final String title;
  final Widget widget;
  @override
  State<Mainservices> createState() => _MainservicesState();
}

class _MainservicesState extends State<Mainservices>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rotationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _rotation = Tween<double>(begin: 0.75, end: 1).animate(_rotationController);
    Future.delayed(
        Duration(milliseconds: 600), () => _rotationController.forward());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget.widget)),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  widget.icon,
                  SizedBox(
                    width: 56,
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      8,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: RotationTransition(
                      turns: _rotation,
                      child: Icon(
                        Icons.arrow_outward_outlined,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                widget.title,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          padding: EdgeInsets.all(
            16,
          ),
        ),
      ),
    );
  }
}
