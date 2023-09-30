import 'package:another_task/another_task.dart' as another_task;
import 'package:dio/dio.dart';

import 'models/prodResp/prodResp.dart';
import 'models/product/product.dart';

void main(List<String> arguments) async {
  Dio client = Dio();
  String url = "https://dummyjson.com/products";

  Response<dynamic> response = await client.get(url); 
  ProdResp data = ProdResp.fromJson(response.data);
  // print(data.products[0].brand);

  // int count = 0;
  // for (var element in data.products) {
  //   if(element.brand == "Apple"){
  //     print(count++);
  //   }
  // }

List<Product> product_array = data.products;
List<Product> result_array = [];
List<String> brand_list = ["OPPO"];
String text_result = "Technica ";

// for (Product element in product_array) {
//   if(element.brand == "Apple"){
//     result_array.add(element);
//   }
// }
result_array = product_array.where((elem) =>brand_list.contains(elem.brand)).toList();

for (var element in result_array) {
  text_result += '\n${element.title} for \$${element.price}' ;
}


bool filterCondition(Product product){
  return product.brand == "Apple";
}

}
