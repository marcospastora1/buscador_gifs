import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  final gifMap = {}.obs;
  final load = true.obs;
  final statusError = false.obs;
  final search = ''.obs;
  final offset = 0.obs;

  @override
  void onInit(){
    super.onInit();
    gifs();
    ever(search, (_)=> gifs());
    ever(offset, (_)=> gifs());

  }

  int getCount(List data){
    if (search.isEmpty){
      return data.length;
    }else{
      return data.length + 1;
    }
  }

  Future<void> gifs() async{
    try{
      http.Response response;
      if(search.value.isEmpty){
        final url = Uri.parse('https://api.giphy.com/v1/gifs/trending?api_key=PKDrXrHMQfYung62wJIsYhibYdl4PmMU&limit=20&rating=g');
         response = await http.get(url);
      }else{
        final url = Uri.parse('https://api.giphy.com/v1/gifs/search?api_key=PKDrXrHMQfYung62wJIsYhibYdl4PmMU&q=${search.value}&limit=19&offset=${offset.value}&rating=g&lang=pt');
         response = await http.get(url);
      }
      
      
      gifMap.assignAll(json.decode(response.body));
    }catch (err){
      statusError.value = true;
    }finally{
      load.value = false;
    }
  }
}