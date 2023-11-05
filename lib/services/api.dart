import 'package:crypto_pj/services/response_date.dart';
import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:crypto_pj/pages/exhange_rate_page.dart';
//import '../services/response_date.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class User {
  final String name;
  final String password;
  const User({
    required this.name,
    required this.password,
  });
}


Future<List<ExchangeRate>> fetchExchangeRates() async {
  final String apiUrl =
      'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum,ripple,litecoin&vs_currencies=usd';
  final response = await http.get(Uri.parse(apiUrl));
  if (response.statusCode == 200) {
    final Map<String, dynamic> json = jsonDecode(response.body);
    final List<ExchangeRate> cryptoPrices = [];

    // Define the cryptocurrencies you want to fetch
    final List<String> cryptoSymbols = [
      'bitcoin',
      'ethereum',
      'ripple',
      'litecoin'
    ];

    for (var cryptoSymbol in cryptoSymbols) {
      final double cryptoPrice = json[cryptoSymbol]['usd'].toDouble();
      final cryptoData =
      ExchangeRate(currency: cryptoSymbol, rate: cryptoPrice);
      cryptoPrices.add(cryptoData);
    }

    return cryptoPrices;
  } else {
    throw Exception('Failed to fetch cryptocurrency prices');
  }
}

