
import 'package:demo_run/config/theme_services.dart';
import 'package:demo_run/Widgets/location_card.dart';
import 'package:demo_run/Widgets/newsfeed.dart';
import 'package:demo_run/Widgets/weather_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   iconTheme: Theme.of(context).iconTheme,
        //   elevation: 0,
        //   toolbarHeight: 70,
        //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //   actions: [
        //     IconButton(
        //         onPressed: () {}, icon: const Icon(Icons.my_location_rounded)),
        //     ChangeThemeButtonWidget(),
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Theme.of(context).primaryColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFF202020),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(4,2),
                        ),
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(-4,-4),
                        ),
                      ],
                    ),
                    child: GestureDetector(
                        onTap: (){
                          ThemeService().switchTheme();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.nightlight_round,
                            size: 32,
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              
              //Intro message with a tag line
              Container(
                margin: const EdgeInsets.only(top: 60.0,left: 10.0, right: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Theme.of(context).primaryColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFF202020),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(4,2),
                    ),
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(-4,-4),
                    ),
                  ],
                ),
                child:
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search city",
                          prefixIcon: Icon(Icons.search),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)
                            //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
              ),

              //A card displaying weather info about the current location
              Container(
                margin:
                const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),

                child: Stack(
                  children: [
                    SizedBox(
                      height: 260,
                      child: Container(
                          child: Column(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Theme.of(context).secondaryHeaderColor,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 20.0,
                                      left: 20.0,
                                      right: 20.0,
                                      bottom: 60.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Today, 26 Sept',
                                            style: TextStyle(
                                                fontSize: 18, color: Colors.white),
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'Cloudy',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Icon(
                                                Icons.cloud_queue_sharp,
                                                size: 24,
                                                color: Colors.white,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin:
                                              const EdgeInsets.only(top: 20.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: const [
                                                  Align(
                                                    child: Text(
                                                      'India',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Bangalore',
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        color: Colors.white),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10.0),
                                              child: const Text(
                                                '24°C',
                                                style: TextStyle(
                                                    fontSize: 42,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Positioned.fill(
                      top: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            //color: const Color.fromARGB(255, 11, 66, 96),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        '56',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        'km/h',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const Icon(
                                    Icons.wind_power_rounded,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Wind',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            //color: const Color.fromARGB(255, 11, 66, 96),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        '88',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                      Text(
                                        '%',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  const Icon(
                                    Icons.wind_power_rounded,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Humidity',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            //color: const Color.fromARGB(255, 11, 66, 96),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        '1202',
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.wind_power_rounded,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Pressure',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // weekly forecast carousel slider
              Container(
                  margin: const EdgeInsets.only(top: 60, left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Weekly Forecast',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        padding: const EdgeInsets.only(top: 10.0),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            WeatherCard(
                              text1: '11AM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                            WeatherCard(
                              text1: '12PM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                            WeatherCard(
                              text1: '11AM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                            WeatherCard(
                              text1: '11AM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                            WeatherCard(
                              text1: '11AM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                            WeatherCard(
                              text1: '11AM',
                              icon: Icons.cloud_queue_sharp,
                              height1: 120,
                              width1: 100,
                              text2: '24°C',
                            ),
                          ],
                        ),
                      )
                    ],
                  )),

              // Recently viewed cards
              Container(
                margin: const EdgeInsets.only(top: 60.0, left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recently Viewed',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.only(top: 20.0),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          LocationCard(
                              text1: 'London',
                              text2: '24°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'London',
                              width1: 150,
                              height1: 150),
                          const SizedBox(
                            width: 10,
                          ),
                          LocationCard(
                              text1: 'Bangalore',
                              text2: '22°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'Bangalore',
                              width1: 150,
                              height1: 150),
                          const SizedBox(
                            width: 10,
                          ),
                          LocationCard(
                              text1: 'Paris',
                              text2: '12°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'Paris',
                              width1: 150,
                              height1: 150),
                          const SizedBox(
                            width: 10,
                          ),
                          LocationCard(
                              text1: 'Jaipur',
                              text2: '24°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'Jaipur',
                              width1: 150,
                              height1: 150),
                          const SizedBox(
                            width: 10,
                          ),
                          LocationCard(
                              text1: 'Germany',
                              text2: '24°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'Germany',
                              width1: 150,
                              height1: 150),
                          const SizedBox(
                            width: 10,
                          ),
                          LocationCard(
                              text1: 'Switzerland',
                              text2: '24°C',
                              icon: Icons.cloud_queue_sharp,
                              image: 'Switzerland',
                              width1: 150,
                              height1: 150),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // News feed
              Container(
                margin: const EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest News',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          NewsCard(
                              text1:
                              'UK Heatwave Expected To End Today With Thunderstorm',
                              text2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit',
                              width1: 300,
                              height1: 250,
                              image: 'London'),
                          SizedBox(
                            width: 5,
                          ),
                          NewsCard(
                              text1:
                              'UK Heatwave Expected To End Today With Thunderstorm',
                              text2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit',
                              width1: 300,
                              height1: 250,
                              image: 'Paris'),
                          SizedBox(
                            width: 5,
                          ),
                          NewsCard(
                              text1:
                              'UK Heatwave Expected To End Today With Thunderstorm',
                              text2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit',
                              width1: 300,
                              height1: 250,
                              image: 'Germany'),
                          SizedBox(
                            width: 5,
                          ),
                          NewsCard(
                              text1:
                              'UK Heatwave Expected To End Today With Thunderstorm',
                              text2:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit',
                              width1: 300,
                              height1: 250,
                              image: 'Switzerland')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

