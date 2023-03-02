// import 'coord.dart';
// import 'list.dart';
//
// class AqiData {
//   Coord? coord;
//   List<List>? list;
//
//   AqiData({this.coord, this.list});
//
//   factory AqiData.fromJson(Map<String, dynamic> json) => AqiData(
//         coord: json['coord'] == null
//             ? null
//             : Coord.fromJson(json['coord'] as Map<String, dynamic>),
//         list: (json['list'] as List<dynamic>?)
//             ?.map((e) => (e as List<dynamic>)
//                 .map((e) => List.fromJson(e as Map<String, dynamic>))
//                 .toList())
//             .toList(),
//       );
//
//   Map<String, dynamic> toJson() => {
//         'coord': coord?.toJson(),
//         'list': list?.map((e) => e.map((e) => e.toJson()).toList()).toList(),
//       };
// }
