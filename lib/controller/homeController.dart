import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Map> l1 = <Map>[].obs;
  RxString clickData = "".obs;
  RxList<String> data = [
    "Surat",
    "Amreli",
    "Kutch",
    "Rajkot",
    "GandhiNagar",
    "Surendranagar",
    "Ahemdabad",
    "Bhavnagar",
    "Mahuva",
    "Tarapur",
  ].obs;
  RxList<String> alldata = [
    "Surat",
    "Amreli",
    "Kutch",
    "Rajkot",
    "GandhiNagar",
    "Surendranagar",
    "Ahemdabad",
    "Bhavnagar",
    "Mahuva",
    "Tarapur",
  ].obs;

  void filterData(String query) {
    if (query.isNotEmpty) {
      List<String> filterList = [];
      for (var z in alldata) {
        if (z.toLowerCase().contains(query.toLowerCase())) {
          filterList.add(z);
        }
      }
      data.value= filterList;
    }
    else{
      data.value = [
        "Surat",
        "Amreli",
        "Kutch",
        "Rajkot",
        "GandhiNagar",
        "Surendranagar",
        "Ahemdabad",
        "Bhavnagar",
        "Mahuva",
        "Tarapur",
      ];
    }
  }
}
