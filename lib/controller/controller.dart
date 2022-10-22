import "package:mobx/mobx.dart";
import "package:http/http.dart" as http;

part "controller.g.dart";

class Controller=_Controller with _$Controller;

abstract class _Controller with Store{
  @observable
  String player="2b6bf0d9752b456883bb449ae156db50";

  @action
  requestData() async{
    var url=Uri.parse("https://rocket-league1.p.rapidapi.com/ranks/$player");
    var response=await http.get(url, headers:{
    'User-Agent': 'RapidAPI Playground',
    'Accept-Encoding': 'identity',
    'X-RapidAPI-Key': 'your api key',
    'X-RapidAPI-Host': 'rocket-league1.p.rapidapi.com'
  });
   
   if(response.statusCode==200){
    print(response.body);
   }else{
    print(response.statusCode);
   }

  }
}