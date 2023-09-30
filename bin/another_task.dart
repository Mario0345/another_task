import 'package:another_task/another_task.dart' as another_task;
import 'package:dio/dio.dart';

import 'models/prodResp/prodResp.dart';

void main(List<String> arguments) async {
  Dio client = Dio();
  String url = "https://dummyjson.com/products";

  Response<dynamic> response = await client.get(url); 
  ProdResp data = ProdResp.fromJson(response.data);
  print(data);
}
