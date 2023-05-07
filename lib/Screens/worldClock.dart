import 'dart:async';
import 'dart:convert';
import 'package:timer_builder/timer_builder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import '../controller/clock_view.dart';
import '../controller/timezone.dart';
import '../controller/timezonedata.dart';
import '../utils/colors.dart';
import '../utils/time.dart';

class WorldClock extends StatefulWidget {
  const WorldClock({Key? key}) : super(key: key);

  @override
  State<WorldClock> createState() => _WorldClockState();
}

class _WorldClockState extends State<WorldClock> {

  DateTime now = DateTime.now();
  bool _isLoading = false;
  Timer? _everySec;
  List<TimeZoneData> _timeZoneDataList = [];
  String? _selectedCountryy;
  Map<String, dynamic> _weatherData = {};

  final List<TimeZone> _timeZones = [
    TimeZone(location: 'Adelaide', url: 'Australia/Adelaide', weatherloc: 'Brisbane'),
    TimeZone(location: 'Brisbane', url: 'Australia/Brisbane', weatherloc: 'Canberra'),
    TimeZone(location: 'Darwin', url: 'Australia/Darwin', weatherloc: 'Canberra'),
    TimeZone(location: 'Eucla', url: 'Australia/Eucla', weatherloc: 'Sydney'),
    TimeZone(location: 'Sydney', url: 'Australia/Sydney', weatherloc: 'Sydney'),
    TimeZone(location: 'Perth', url: 'Australia/Perth', weatherloc: 'Perth'),
    TimeZone(location: 'Berlin', url: 'Europe/Berlin', weatherloc: 'Hamburg'),
    TimeZone(location: 'Los Angeles', url: 'America/Los_Angeles', weatherloc: 'Los Angeles'),
    TimeZone(location: 'Rio de Janeiro', url: 'America/Sao_Paulo', weatherloc: 'Rio de Janerio'),
    TimeZone(location: 'Barcelona', url: 'Europe/Madrid', weatherloc:'Barcelona'),
    TimeZone(location: 'Beijing', url: 'Asia/Shanghai', weatherloc:'Beijing'),
    TimeZone(location: 'Beirut', url: 'Asia/Beirut', weatherloc:'Beirut'),
    TimeZone(location: 'Belgrade', url: 'Europe/Belgrade', weatherloc:'Belgrade'),
    TimeZone(location: 'Berlin', url: 'Europe/Berlin', weatherloc:'Berlin'),
    TimeZone(location: 'Bern', url: 'Europe/Zurich', weatherloc:'Bern'),
    TimeZone(location: 'Bogotá', url: 'America/Bogota', weatherloc:'Bogota'),
    TimeZone(location: 'Brasília', url: 'America/Sao_Paulo', weatherloc:'Brasilia'),
    TimeZone(location: 'Bratislava', url: 'Europe/Bratislava', weatherloc:'Bratislava'),
    TimeZone(location: 'Brisbane', url: 'Australia/Brisbane', weatherloc:'Brisbane'),
    TimeZone(location: 'Brussels', url: 'Europe/Brussels', weatherloc:'Brussels'),
    TimeZone(location: 'Bucharest', url: 'Europe/Bucharest', weatherloc:'Bucharest'),
    TimeZone(location: 'Budapest', url: 'Europe/Budapest', weatherloc:'Budapest'),
    TimeZone(location: 'Buenos Aires', url: 'America/Argentina/Buenos_Aires', weatherloc:'Buenos Aires'),
    TimeZone(location: 'Cairo', url: 'Africa/Cairo', weatherloc:'Cairo'),
    TimeZone(location: 'Canberra', url: 'Australia/Sydney', weatherloc:'Canberra'),
    TimeZone(location: 'Cape Town', url: 'Africa/Johannesburg', weatherloc:'Cape Town'),
    TimeZone(location: 'Caracas', url: 'America/Caracas', weatherloc:'Caracas'),
    TimeZone(location: 'Casablanca', url: 'Africa/Casablanca', weatherloc:'Casablanca'),
    TimeZone(location: 'Chicago', url: 'America/Chicago', weatherloc:'Chicago'),
    TimeZone(location: 'Chisinau', url: 'Europe/Chisinau', weatherloc:'Chisinau'),
    TimeZone(location: 'Colombo', url: 'Asia/Colombo', weatherloc:'Colombo'),
    TimeZone(location: 'Copenhagen', url: 'Europe/Copenhagen', weatherloc:'Copenhagen'),
    TimeZone(location: 'Dakar', url: 'Africa/Dakar', weatherloc:'Dakar'),
    TimeZone(location: 'Denver', url: 'America/Denver', weatherloc:'Denver'),
    TimeZone(location: 'Dhaka', url: 'Asia/Dhaka', weatherloc:'Dhaka'),
    TimeZone(location: 'Dubai', url: 'Asia/Dubai', weatherloc:'Dubai'),
    TimeZone(location: 'Egypt', url: 'Africa/Cairo', weatherloc:'Cairo'),
    TimeZone(location: 'El Salvador', url: 'America/El_Salvador', weatherloc:'San Salvador'),
    TimeZone(location: 'Iceland', url: 'Atlantic/Reykjavik', weatherloc:'Reykjavik'),
    TimeZone(location: 'India', url: 'Asia/Kolkata', weatherloc:'Kolkata'),
    TimeZone(location: 'Indonesia (Jakarta)', url: 'Asia/Jakarta', weatherloc:'Jakarta'),
    TimeZone(location: 'Iran', url: 'Asia/Tehran', weatherloc:'Tehran'),
    TimeZone(location: 'Iraq', url: 'Asia/Baghdad', weatherloc:'Baghdad'),
    TimeZone(location: 'Ireland', url: 'Europe/Dublin', weatherloc:'Dublin'),
    TimeZone(location: 'Israel', url: 'Asia/Jerusalem', weatherloc:'Jerusalem'),
    TimeZone(location: 'Italy', url: 'Europe/Rome', weatherloc:'Rome'),
    TimeZone(location: 'Jamaica', url: 'America/Jamaica', weatherloc:'Kingston'),
    TimeZone(location: 'Japan', url: 'Asia/Tokyo', weatherloc:'Tokyo'),
    TimeZone(location: 'Jordan', url: 'Asia/Amman', weatherloc:'Amman'),
    TimeZone(location: 'Kazakhstan (Almaty)', url: 'Asia/Almaty', weatherloc:'Almaty'),
    TimeZone(location: 'Kenya', url: 'Africa/Nairobi', weatherloc:'Nairobi'),
    TimeZone(location: 'Kiribati (Tarawa)', url: 'Pacific/Tarawa', weatherloc:'Tarawa'),
    TimeZone(location: 'Korea (North)', url: 'Asia/Pyongyang', weatherloc:'Pyongyang'),
    TimeZone(location: 'Korea (South)', url: 'Asia/Seoul', weatherloc:'Seoul'),
    TimeZone(location: 'Kosovo', url: 'Europe/Belgrade', weatherloc:'Belgrade'),
    TimeZone(location: 'Kuwait', url: 'Asia/Kuwait', weatherloc:'Kuwait'),
    TimeZone(location: 'Kyrgyzstan', url: 'Asia/Bishkek', weatherloc:'Bishkek'),
    TimeZone(location: 'Laos', url: 'Asia/Vientiane', weatherloc:'Vientiane'),
    TimeZone(location: 'Latvia', url: 'Europe/Riga', weatherloc:'Riga'),
    TimeZone(location: 'Lebanon', url: 'Asia/Beirut', weatherloc:'Beirut'),
    TimeZone(location: 'Lesotho', url: 'Africa/Maseru', weatherloc:'Maseru'),
    TimeZone(location: 'Liberia', url: 'Africa/Monrovia', weatherloc:'Monrovia'),
    TimeZone(location: 'Libya', url: 'Africa/Tripoli', weatherloc:'Tripoli'),
    TimeZone(location: 'Liechtenstein', url: 'Europe/Vaduz', weatherloc:'Vaduz'),
    TimeZone(location: 'Lithuania', url: 'Europe/Vilnius', weatherloc:'Vilnius'),
    TimeZone(location: 'Luxembourg', url: 'Europe/Luxembourg', weatherloc:'Luxembourg'),
    TimeZone(location: 'Madagascar', url: 'Indian/Antananarivo', weatherloc:'Antananarivo'),
    TimeZone(location: 'Malaysia', url: 'Asia/Kuala_Lumpur', weatherloc:'Kuala Lumpur'),
    TimeZone(location: 'Maldives', url: 'Indian/Maldives', weatherloc:'Male'),
    TimeZone(location: 'Mali', url: 'Africa/Bamako', weatherloc:'Bamako'),
    TimeZone(location: 'Malta', url: 'Europe/Malta', weatherloc:'Valleta'),
    TimeZone(location: 'Marshall Islands', url: 'Pacific/Majuro', weatherloc:'Majuro'),
    TimeZone(location: 'Mauritania', url: 'Africa/Nouakchott', weatherloc:'Nouakchott'),
    TimeZone(location: 'Mauritius', url: 'Indian/Mauritius', weatherloc:'Mauritius'),
    TimeZone(location: 'Mexico (Mexico City)', url: 'America/Mexico_City', weatherloc:'Mexico City'),
    TimeZone(location: 'Oman', url: 'Asia/Muscat', weatherloc:'Muscat'),
    TimeZone(location: 'Pakistan', url: 'Asia/Karachi', weatherloc:'Karachi'),
    TimeZone(location: 'Panama', url: 'America/Panama', weatherloc:'Panama'),
    TimeZone(location: 'Papua New Guinea', url: 'Pacific/Port_Moresby', weatherloc:'Port Moresby'),
    TimeZone(location: 'Paraguay', url: 'America/Asuncion', weatherloc:'Asuncion'),
    TimeZone(location: 'Peru', url: 'America/Lima', weatherloc:'Lima'),
    TimeZone(location: 'Philippines', url: 'Asia/Manila', weatherloc:'Manila'),
    TimeZone(location: 'Poland', url: 'Europe/Warsaw', weatherloc:'Warsaw'),
    TimeZone(location: 'Portugal', url: 'Europe/Lisbon', weatherloc:'Lisbon'),
    TimeZone(location: 'Qatar', url: 'Asia/Qatar', weatherloc:'Doha'),
    TimeZone(location: 'Romania', url: 'Europe/Bucharest', weatherloc:'Bucharest'),
    TimeZone(location: 'Russia (Moscow)', url: 'Europe/Moscow', weatherloc:'Moscow'),
    TimeZone(location: 'Russia (Yekaterinburg)', url: 'Asia/Yekaterinburg', weatherloc:'Yekaterinburg'),
    TimeZone(location: 'Rwanda', url: 'Africa/Kigali', weatherloc:'Kigali'),
    TimeZone(location: 'Samoa', url: 'Pacific/Apia', weatherloc:'Apia'),
    TimeZone(location: 'San Marino', url: 'Europe/San_Marino', weatherloc:'San Marino'),
    TimeZone(location: 'Sao Tome and Principe', url: 'Africa/Sao_Tome', weatherloc:'Sao Tome'),
    TimeZone(location: 'Saudi Arabia', url: 'Asia/Riyadh', weatherloc:'Riyadh'),
    TimeZone(location: 'Senegal', url: 'Africa/Dakar', weatherloc:'Dakar'),
    TimeZone(location: 'Serbia', url: 'Europe/Belgrade', weatherloc:'Belgrade'),
    TimeZone(location: 'Sierra Leone', url: 'Africa/Freetown', weatherloc:'Freetown'),
    TimeZone(location: 'Singapore', url: 'Asia/Singapore', weatherloc:'Singapore'),
    TimeZone(location: 'Slovakia', url: 'Europe/Bratislava', weatherloc:'Bratislava'),
    TimeZone(location: 'Slovenia', url: 'Europe/Ljubljana', weatherloc:'Ljubljana'),
    TimeZone(location: 'South Africa', url: 'Africa/Johannesburg', weatherloc:'Johannesburg'),
    TimeZone(location: 'South Sudan', url: 'Africa/Juba', weatherloc:'Juba'),
    TimeZone(location: 'Spain', url: 'Europe/Madrid', weatherloc:'Madrid'),
    TimeZone(location: 'Sri Lanka', url: 'Asia/Colombo', weatherloc:'Cairo'),
    TimeZone(location: 'Sudan', url: 'Africa/Khartoum', weatherloc:'Juba'),
    TimeZone(location: 'Sweden', url: 'Europe/Stockholm', weatherloc:'Stockholm'),
    TimeZone(location: 'Switzerland', url: 'Europe/Zurich', weatherloc:'Bern'),
    TimeZone(location: 'Taiwan', url: 'Asia/Taipei', weatherloc:'Taipei'),
    TimeZone(location: 'Tajikistan', url: 'Asia/Dushanbe', weatherloc:'Dushanbe'),
    TimeZone(location: 'Tanzania', url: 'Africa/Dar_es_Salaam', weatherloc:'Dar es Salaam'),
    TimeZone(location: 'Thailand', url: 'Asia/Bangkok', weatherloc:'Bangkok'),
    TimeZone(location: 'Timor-Leste', url: 'Asia/Dili', weatherloc:'Dili'),
    TimeZone(location: 'Togo', url: 'Africa/Lome', weatherloc:'Lome'),
    TimeZone(location: 'Tonga', url: 'Pacific/Tongatapu', weatherloc:'Cairo'),
    TimeZone(location: 'Trinidad and Tobago', url: 'America/Port_of_Spain', weatherloc:'Port of Spain'),
    TimeZone(location: 'Tunisia', url: 'Africa/Tunis', weatherloc:'Tunis'),
    TimeZone(location: 'Turkey', url: 'Europe/Istanbul', weatherloc:'Ankara'),
    TimeZone(location: 'Turkmenistan', url: 'Asia/Ashgabat', weatherloc:'Ankara'),
    TimeZone(location: 'Uganda', url: 'Africa/Kampala', weatherloc:'Kampala'),
    TimeZone(location: 'United Arab Emirates', url: 'Asia/Dubai', weatherloc:'Sharjah'),
    TimeZone(location: 'United Kingdom', url: 'Europe/London', weatherloc:'London'),
    TimeZone(location: 'United States (New York)', url: 'America/New_York', weatherloc:'New York'),
    TimeZone(location: 'Uruguay', url: 'America/Montevideo', weatherloc:'Montevideo'),
    TimeZone(location: 'Uzbekistan', url: 'Asia/Tashkent', weatherloc:'Tashkent'),
    TimeZone(location: 'Vatican City', url: 'Europe/Vatican', weatherloc:'Rome'),
    TimeZone(location: 'Venezuela', url: 'America/Caracas', weatherloc:'Maracaibo'),
    TimeZone(location: 'Vietnam', url: 'Asia/Ho_Chi_Minh', weatherloc:'Hanoi'),
    TimeZone(location: 'Yemen', url: 'Asia/Aden', weatherloc:'Sanaa'),
    TimeZone(location: 'Zambia', url: 'Africa/Lusaka', weatherloc:'Lusaka'),
    TimeZone(location: 'Zimbabwe', url: 'Africa/Harare', weatherloc:'Harare'),
  ];

  Future<DateTime> fetchClock() async {
    now = DateTime.now();
    return now;
  }

  @override
  void initState() {
    super.initState();

    _everySec = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        now = DateTime.now();
      });
    });
  }


  // TIME ZONE INIT


  Future<void> _getTime(String url, String location, String country) async {
    setState(() {
      _isLoading = true;
    });

    // for time
    final response = await http.get(Uri.https('worldtimeapi.org', 'api/timezone/$url'));
    final data = jsonDecode(response.body);
    final dateTime = DateTime.parse(data['datetime']);
    final offset = Duration(hours: int.parse(data['utc_offset'].substring(1, 3)));
    final now = dateTime.add(offset);
    //for weather
    final url1 = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$country&appid=e5e57461e19939c73586d94f293ae566&units=metric');
    final response1 = await http.get(url1);
    final jsonData = json.decode(response1.body);
    final descript = jsonData['weather'][0]['description'];
    Image image = Image.asset('images/2.png', width: 80, height: 100);

    switch(descript.toLowerCase()){
      case 'overcast clouds': image = Image.asset('assets/Images/5.png', width: 80, height: 100); break;
      case 'clear sky': image = Image.asset('assets/Images/8.png', width: 80, height: 100); break;
      case 'few clouds': image = Image.asset('assets/Images/6.png', width: 80, height: 100); break;
      case 'scattered clouds': image = Image.asset('assets/Images/16.png', width: 80, height: 100); break;
      case 'broken clouds': image = Image.asset('assets/Images/5.png', width: 80, height: 100); break;
      case 'light rain': image = Image.asset('assets/Images/11.png', width: 80, height: 100); break;
      case 'moderate rain': image = Image.asset('assets/Images/9.png', width: 80, height: 100); break;
      case 'very heavy intensity rain': image = Image.asset('assets/Images/10.png', width: 80, height: 100); break;
      case 'very heavy rain': image = Image.asset('assets/Images/12.png', width: 80, height: 100); break;
      case 'extreme rain': image = Image.asset('assets/Images/12.png', width: 80, height: 100); break;
      case 'light snow': image = Image.asset('assets/Images/14.png', width: 80, height: 100); break;
      case 'moderate snow': image = Image.asset('assets/Images/14.png', width: 80, height: 100); break;
      case 'heavy snow': image = Image.asset('assets/Images/2.png', width: 80, height: 100); break;
      case 'sleet': image = Image.asset('assets/Images/1.png', width: 80, height: 100); break;
      case 'shower sleet': image = Image.asset('assets/Images/1.png', width: 80, height: 100); break;
      case 'light shower sleet': image = Image.asset('assets/Images/1.png', width: 80, height: 100); break;
      case 'heavy shower sleet': image = Image.asset('assets/Images/1.png', width: 80, height: 100); break;
      case 'snow and rain': image = Image.asset('assets/Images/15.png', width: 80, height: 100); break;
      case 'light shower snow': image = Image.asset('assets/Images/12.png', width: 80, height: 100); break;
      case 'shower snow': image = Image.asset('assets/Images/22.png', width: 80, height: 100); break;
      case 'heavy shower snow': image = Image.asset('assets/Images/22.png', width: 80, height: 100); break;
      case 'mist': image = Image.asset('assets/Images/23.png', width: 80, height: 100); break;
      case 'smoke': image = Image.asset('assets/Images/21.png', width: 80, height: 100); break;
      case 'haze': image = Image.asset('assets/Images/21.png', width: 80, height: 100); break;
      case 'sand, dust whirls': image = Image.asset('assets/Images/21.png', width: 80, height: 100); break;
      case 'fog': image = Image.asset('assets/Images/21.png', width: 80, height: 100); break;
      case 'sand': image = Image.asset('assets/Images/5.png', width: 80, height: 100); break;
      case 'dust': image = Image.asset('assets/Images/5.png', width: 80, height: 100); break;
      case 'volcanic ash': image = Image.asset('assets/Images/5.png', width: 80, height: 100); break;
      case 'tornado': image = Image.asset('assets/Images/24.png', width: 80, height: 100); break;
      case 'thunderstorm with rain': image = Image.asset('assets/Images/24.png', width: 80, height: 100); break;
      case 'light thunderstorm': image = Image.asset('assets/Images/23.png', width: 80, height: 100); break;
      case 'heavy thunderstorm': image = Image.asset('assets/Images/23.png', width: 80, height: 100); break;
      default: image = Image.asset('assets/Images/8.png', width: 80, height: 100); break;
    }

    final timeZoneData = TimeZoneData(location: location, time: '', description: descript, imageFile: image);
    setState(() {
    _timeZoneDataList.add(timeZoneData);
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
    final now = DateTime.now().toUtc().add(offset);
    timeZoneData.time =
    '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
    setState(() {});
    });

    setState(() {
    _isLoading = false;
    });
  }

  void _updateTimeZones() {
    Timer.periodic(const Duration(minutes: 1), (timer) {
      final now = DateTime.now();
      for (int i = 0; i < _timeZoneDataList.length; i++) {
        final timeZoneData = _timeZoneDataList[i];
        final location = timeZoneData.location;
        final url = _timeZones.firstWhere((zone) => zone.location == location).url;
        http.get(Uri.https('worldtimeapi.org', 'api/timezone/$url')).then((response) {
          final data = jsonDecode(response.body);
          final dateTime = DateTime.parse(data['datetime']);
          final offset = Duration(hours: int.parse(data['utc_offset'].substring(1, 3)));
          final now = dateTime.add(offset);
          final time = '${now.hour.toString().padLeft(2, '0')}:'
              '${now.minute.toString().padLeft(2, '0')}';
          setState(() {
            _timeZoneDataList[i].time = time;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: (){
            Navigator.pop(context);
          }, alignment: Alignment.centerLeft, iconSize: 30.0,),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                TimerBuilder.periodic(
                  Duration(seconds: 1),
                  builder: (context) {
                    //getting the time
                    String second = DateTime.now().second < 10
                        ? "0${DateTime.now().second}"
                        : DateTime.now().second.toString();
                    String minute = DateTime.now().minute < 10
                        ? "0${DateTime.now().minute}"
                        : DateTime.now().minute.toString();
                    String hour = DateTime.now().hour < 10
                        ? "0${DateTime.now().hour}"
                        : DateTime.now().hour.toString();
                    String date1 = DateTime.now().day.toString();
                    String date2 = DateTime.now().month.toString();
                    String date3 = DateTime.now().year.toString();
                    String dayName = DateFormat('EEEE').format(now);
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dayName,
                                  style: AppStyle.mainTextThin,
                                ),
                                Text(
                                  "${date1}-${date2}-${date3}",
                                  style: AppStyle.dateTextThin,
                                ),
                              ],
                            ),
                            Text(
                              "${hour}:${minute}",
                              style: AppStyle.maintext,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height:60.0,
                        ),

                        ClockView(DataTime(DateTime.now().hour,
                            DateTime.now().minute, DateTime.now().second)),

                        const SizedBox(
                          height:60.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'World Clock',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //TODO WIDGET TO SHOW NEW TIMEZONE
                        DropdownButton(

                          hint: const Text('Select the Timezone', style: TextStyle(color: Colors.white),),
                          items: _timeZones
                              .map((timeZone) => DropdownMenuItem(
                            child: Text(timeZone.location),
                            value: timeZone.location,
                          ))
                              .toList(),
                          onChanged: (value) {
                            final timeZone = _timeZones.firstWhere((zone) => zone.location == value);
                            _getTime(timeZone.url, timeZone.location, timeZone.weatherloc);
                          },
                        ),

                        // Scrollable View
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: _timeZoneDataList
                                .map((timeZoneData) => SizedBox(
                              width: 380,
                              height: 250,
                              child: Card(
                                color: Colors.black,

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10), // set the border radius of the card
                                  side: const BorderSide(
                                    color: Colors.white, // set the border color of the card
                                    width: 1, // set the width of the border
                                  ),
                                ),
                                child:
                                Column(
                                  children: [
                                    const SizedBox(height: 10,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(width: 60,),
                                        Expanded(

                                          child: Text(
                                            timeZoneData.location,
                                            style: const TextStyle(fontSize: 24, color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),

                                        ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                          ),
                                          child: const Icon(Icons.delete_outline_rounded, color: Colors.white,),
                                          onPressed: () {
                                            setState(() {
                                              _timeZoneDataList.remove(timeZoneData);
                                            });
                                          },
                                        ),


                                      ],
                                    ),
                                    const SizedBox(height: 10,),

                                    Text(
                                      timeZoneData.time,
                                      style: const TextStyle(fontSize: 48, color: Colors.white),
                                    ),
                                    const SizedBox(height: 5,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(width: 5,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              timeZoneData.description,
                                              style: const TextStyle(fontSize: 25, color: Colors.white),

                                            ),
                                          ],
                                        ),

                                        timeZoneData.imageFile,
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ))
                                .toList(),
                          ),
                        ),



                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
