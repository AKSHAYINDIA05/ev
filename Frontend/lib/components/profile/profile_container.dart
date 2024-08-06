import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer(this._widget, this.title, {super.key});
  final String title;
  final Widget _widget;
  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer>
    with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late Animation<double> _rotation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1000,
      ),
    );
    _rotation =
        Tween<double>(begin: 0, end: 0.125).animate(_rotationController);
    Future.delayed(
      Duration(
        milliseconds: 1200,
      ),
      () => _rotationController.forward(),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => widget._widget)),
      child: Container(
        padding: EdgeInsets.all(
          16,
        ),
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
            RotationTransition(
              turns: _rotation,
              child: Container(
                padding: EdgeInsets.all(
                  8,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Icon(
                  Icons.arrow_outward_outlined,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
