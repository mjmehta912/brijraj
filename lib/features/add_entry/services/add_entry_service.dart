import 'dart:convert';
import 'package:brijraj/constants/api_constants.dart';
import 'package:brijraj/features/add_entry/models/vehicle_dm.dart';
import 'package:http/http.dart' as http;
import 'package:brijraj/features/add_entry/models/customer_dm.dart';

class AddEntryService {
  static Future<List<CustomerDm>> fetchCustomersByName([
    String? pName,
  ]) async {
    final query = pName != null && pName.isNotEmpty ? '?PNAME=$pName' : '';
    final url = Uri.parse(
      '$kBaseUrl/data/customer$query',
    );

    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final List<dynamic> data = body['data'];
      return data
          .map(
            (json) => CustomerDm.fromJson(json),
          )
          .toList();
    } else {
      throw response.body;
    }
  }

  static Future<List<VehicleDm>> fetchVehicle([
    String? vehicleNo,
  ]) async {
    final query = vehicleNo != null && vehicleNo.isNotEmpty
        ? '?VehicleNo=$vehicleNo'
        : '';
    final url = Uri.parse(
      '$kBaseUrl/data/vehicle$query',
    );

    final headers = {
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      url,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final List<dynamic> data = body['data'];
      return data
          .map(
            (json) => VehicleDm.fromJson(json),
          )
          .toList();
    } else {
      throw response.body;
    }
  }

  static Future<String> addEntry({
    required String date,
    required String pname,
    required String pcode,
    required String vehicleNo,
    required String vehicleCode,
    required List<Map<String, dynamic>> items,
  }) async {
    final url = Uri.parse(
      '$kBaseUrl/data/add',
    );

    final headers = {
      'Content-Type': 'application/json',
    };

    final Map<String, dynamic> requestBody = {
      'DATE': date,
      'PNAME': pname,
      'PCODE': pcode,
      'VehicleNo': vehicleNo,
      'VehicleCode': vehicleCode,
      'data': items,
    };

    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final message = body['message'];
      return message;
    } else {
      print(response.body);
      print(response.reasonPhrase);
      print(response.statusCode);
      throw response.body;
    }
  }
}
