import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PollenData extends StatefulWidget {
  const PollenData({Key? key}) : super(key: key);

  @override
  State<PollenData> createState() => _PollenDataState();
}

class _PollenDataState extends State<PollenData> {
  // Replace YOUR_API_KEY with your actual Ambee API key
  String apiKey = '63f4f72861b2d5c9cd24260129244d2a46dc8a4c41a10c70c4cf61a722869639';
  int? treePollenValue;
  String? treePollenStatus;
  int? grassPollenValue;
  String? grassPollenStatus; 
  int? weedPollenValue;
  String? weedPollenStatus;
  Future<void> fetchTreePollenValue() async {
    final response = await http.get(
        Uri.parse('https://api.ambeedata.com/latest/pollen/by-lat-lng?lat=12&lng=77'),
        headers: {'x-api-key': apiKey});
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      setState(() {
        final data = jsonDecode(response.body);
        // Extract the tree pollen value from the JSON
        treePollenValue = data['data'][0]['Count']['tree_pollen'];
        treePollenStatus = data['data'][0]['Risk']['tree_pollen'];
        grassPollenValue = data['data'][0]['Count']['grass_pollen'];
        grassPollenStatus = data['data'][0]['Risk']['grass_pollen'];
        weedPollenValue = data['data'][0]['Count']['weed_pollen'];
        weedPollenStatus = data['data'][0]['Risk']['weed_pollen'];
      });
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load pollen data');
    }
  }

@override
  void initState(){
    super.initState();
    fetchTreePollenValue();
}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).selectedRowColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pollen Allergies',
            style: TextStyle(
                fontSize: 24
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text(
                    'Grass',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SleekCircularSlider(
                    min: 0,
                    max: 300,
                    initialValue:
                    grassPollenValue!.toDouble(),
                    innerWidget: (double grassPollenValue){
                      return Center(
                        child: Text(
                          '${grassPollenValue.toInt()}',
                          style: const TextStyle(
                              fontSize: 24
                          ),
                        ),
                      );
                    },
                    appearance: CircularSliderAppearance(
                      animationEnabled: true,
                      size: 110,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        progressBarColors: [
                          const Color(0xFFCD8EFC),
                          Colors.blueGrey,

                        ],
                        trackColor: Theme.of(context).selectedRowColor,
                      ),),
                  ),
                  Text(
                      '$grassPollenStatus'
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Tree',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SleekCircularSlider(
                    min: 0,
                    max: 500,
                    initialValue:
                    treePollenValue!.toDouble(),
                    innerWidget: (double treePollenValue){
                      return Center(
                        child: Text(
                          '${treePollenValue.toInt()}',
                          style: const TextStyle(
                              fontSize: 24
                          ),
                        ),
                      );
                    },
                    appearance: CircularSliderAppearance(
                      animationEnabled: true,
                      size: 110,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        progressBarColors: [
                          const Color(0xFFCD8EFC),
                          Colors.blueGrey,

                        ],
                        trackColor: Theme.of(context).selectedRowColor,
                      ),),
                  ),
                  Text(
                      '$treePollenStatus'
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Weed',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SleekCircularSlider(
                    min: 0,
                    max: 500,
                    initialValue:
                    weedPollenValue!.toDouble(),
                    innerWidget: (double weedPollenValue){
                      return Center(
                        child: Text(
                          '${weedPollenValue.toInt()}',
                          style: const TextStyle(
                              fontSize: 24
                          ),
                        ),
                      );
                    },
                    appearance: CircularSliderAppearance(
                      animationEnabled: true,
                      size: 110,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        progressBarColors: [
                          const Color(0xFFCD8EFC),
                          Colors.blueGrey,

                        ],
                        trackColor: Theme.of(context).selectedRowColor,
                      ),
                    ),
                  ),
                  Text(
                      '$weedPollenStatus'
                  ),

                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
