import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:money_transfer_mobile_app/domains/account.dart';
import 'package:money_transfer_mobile_app/utils/constants.dart';
import 'package:flutter/services.dart' show rootBundle;

// asynchronous API call
Future<Account> getAccountById(int id) async {
  const String VIEW_ACCOUNT_ENDPOINT = '/api/account/1';

  var url;

  if (Constants.ENV == 'PROD') {
    url = Uri.https(Constants.API_URL_PROD, VIEW_ACCOUNT_ENDPOINT);
  } else {
    url = Uri.http(Constants.API_URL_DEV, VIEW_ACCOUNT_ENDPOINT);
  }

  print('Url: ' + url.toString());

  // Retrieve an account by id
  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);

      // logs the response to the console
      print('Response: ' + jsonResponse.toString());

      return Account.fromJson(jsonResponse);
    }
  } catch (e) {
    print(e);
  }

  // Fallback for when the above HTTP request fails.
  return Account.fromJson(
    json.decode(
      await rootBundle.loadString(Constants.ASSET_MOCKDATA_ACCOUNT_BY_ID),
    ),
  );
}
