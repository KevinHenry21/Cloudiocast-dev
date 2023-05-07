import 'package:demo_run/Widgets/animated_bottombar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {

  late PageController _pageController;

  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>AnimatedBottomNavbar() ) );
                  // AnimatedBottomNavbar()
                },
                child: Text(
                    'Skip',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: demo_data.length,
                onPageChanged: (index){
                  setState(() {
                  });
                },
                itemBuilder: (context, index) =>  OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description:demo_data[index].description,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // const Spacer(),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: SizedBox(
                          height: 50,
                          width: 40,
                          child: TextButton(
                            onPressed: (){
                              _pageController.previousPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Icon(
                                Icons.arrow_back_ios
                            ),

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: SizedBox(
                          height: 50,
                          width: 40,
                          child: TextButton(
                            onPressed: (){
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.ease);
                            },
                            child: Icon(
                                Icons.arrow_forward_ios
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget{
  const DotIndicator({
  Key? key,
  this.isActive = false,
}) : super(key: key);

  final bool isActive;

  @override
Widget build(BuildContext context){
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 16 : 6,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.blue.withOpacity(0.4),
        borderRadius: BorderRadius.all(Radius.circular(12)),

      ),
    );
  }
}

class Onboard{
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description
  });
}

final List<Onboard> demo_data = [
  Onboard(
      image: 'assets/Weather_Simulation.json', //weather Simulation
      title: "See the forecast\ncome to life with immersive simulations.",
      description: "With Cloudiocast, you can access accurate weather forecasts and simulations right at your fingertips.",
  ),
  Onboard(
    image: 'assets/Crop .json',
    title: "Personalized gardening\nrecommendations based on weather data.",
    description: "Our app uses weather data to provide customized recommendations for the best plants to grow in your area."
  ),
  Onboard(
    image: 'assets/Monuments.json',
    title: "Explore the weather\nlike never before.",
    description: "See a beautiful 3D monument that changes with the weather, providing a unique and immersive way to experience the forecast.",
  ),
];

class OnboardContent extends StatelessWidget{
  const OnboardContent({
    Key? key, required this.image, required this.title, required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Lottie.asset(
              image,
              animate: true,
              width: 400,
              height: 400,
            ),
            SizedBox(height:16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 16)
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
    