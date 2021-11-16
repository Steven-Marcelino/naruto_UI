part of 'pages.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.56,
              left: MediaQuery.of(context).size.height * 0.03,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.39,
                    color: Colors.white.withOpacity(0.2),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/title.png',
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.59,
                          child: Text(
                            'Shop your favourite ',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: const Color(0xffFC4C4C)),
                          ),
                        ),
                        const ButtonWidget(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Widgets

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageTransition(
            type: PageTransitionType.bottomToTop,
            duration: const Duration(milliseconds: 500),
            child: const HomeScreen(),
          ),
        );
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.80,
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: const Color(0xFFf2a30b),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text('Shop Now',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                  fontSize: 26,
                  color: Colors.black)),
        ),
      ),
    );
  }
}
