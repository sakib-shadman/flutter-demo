import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter_app_test/Model/LoginResponse.dart';
import 'package:flutter_app_test/Model/SubdomainResponse.dart';
import 'package:http/http.dart' as http;

class LoginService {
  final _baseUrl = 'http://viva.pihr.xyz/token';
  final _domainUrl = 'http://61.247.185.122:85/api/PIEERPApi/MatchSubDomain?domainName=';

  http.Client _client = http.Client();

  set client(http.Client value) => _client = value;

  static final LoginService _internal = LoginService.internal();
  factory LoginService() => _internal;
  LoginService.internal();

  Future<LoginResponse> getLoginResponse(String name,String password) async {

    Map<String, String> postLogin = new HashMap();

    postLogin['username'] = name;
    postLogin['password'] = password;
    postLogin['grant_type'] = 'password';
    postLogin['companyId'] = '2';



    print(postLogin);
    var response = await _client.post('$_baseUrl' ,body: postLogin,headers: {"Content-Type": "application/x-www-form-urlencoded"});
    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      Map<String, dynamic> loginData = data;

      LoginResponse loginResponse = LoginResponse.fromJson(loginData);


      print(loginResponse);
      return loginResponse;
    } else {
      throw Exception('Failed to get data');
    }
  }

  @override
  Future<SubdomainResponse> getSubdomainResponse(String domainName) async {
    var response = await _client.get('$_domainUrl' + '$domainName', headers: {"Content-Type": "application/json"});
    print(response.statusCode);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      Map<String, dynamic> domainData = data;

      //LoginResponse loginResponse = loginData.map((f) => LoginResponse.fromJson(f as Map<String, dynamic>));
      SubdomainResponse subdomainResponse = SubdomainResponse.fromJson(domainData);

      print(subdomainResponse);
      return subdomainResponse;
    } else {
      throw Exception('Failed to get data');
    }
  }


}