import 'package:demo_run/Widgets/animated_bottombar.dart';
import 'package:flutter/material.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {

  late PageController _pageController;

  int _pageIndex = 0;

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
                    context, MaterialPageRoute(builder: (context) => AnimatedBottomNavbar()) );
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
                    _pageIndex = index;
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
      image: 'assets/Images/Paris.jpg',
      title: "Get those shopping \nbags filled",
      description: "Add any item you want to your cart, or save it on your wishlist, and check for items.",
  ),
  Onboard(
    image: 'assets/Images/London.jpg',
    title: "Find the item you've \nbeen looking for",
    description: "Here you'll see rich varieties of goods, carefully classified for you to identify.",
  ),
  Onboard(
    image: 'assets/Images/Jaipur.jpg',
    title: "Fast and secure \npayment",
    description: "There are may payment options available, carefully classified for you to identify.",
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
            Image.asset(image, height: 250,),
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
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
    