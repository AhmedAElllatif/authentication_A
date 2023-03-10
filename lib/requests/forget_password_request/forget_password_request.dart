import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../models/authentication/forget_password_return_model.dart';
import '../../services/global_helper_method.dart';
import '../../utility/app_consts.dart';

class ForgetPasswordRequest {
  static void forgetPassword(
      {required String userName,
        required Function(ForgetPasswordReturnModel forgetPasswordReturnModel)
        onSuccess,
        required Function(String error) onError}) async {
    try {
      //API Calling

      // String token = await getToken();
      var headers = {...apiHeaders};
      // "Authorization" : token,
      await http
          .post(
          getUri(
              '${AppConsts.baseUrl}Account/ForgotPassword'),
          headers: headers,
          body: json.encode({
            "Username": userName,
          }))
          .then((response) async {
        log(response.body + "\n" + response.statusCode.toString());
        // modiling
        if (response.statusCode == 200) {
          ForgetPasswordReturnModel forgetPasswordReturnModel =
          ForgetPasswordReturnModel.fromJson(json.decode(response.body));
          onSuccess(forgetPasswordReturnModel);
        } else {
          log(response.body);
        }
        // Debugging API response
        debugApi(
            methodName: "Forget Password",
            statusCode: response.statusCode,
            response: response.body,
            data: {
              "Username": userName,
            },
            endPoint: response.request!.url.toString(),
            headers: headers);
      }, onError: (error) {
        log("error happened from Forget Password Request ${error.toString()}");
        onError(error.toString());
      });
    } catch (e) {
      log("error happened from ForgetPassword Request ${e.toString()}");
      onError(e.toString());
    }
  }

  static void codeConfirmation(
      {required String userName,
        required String code,
        required Function() onSuccess,
        required Function(String error) onError}) async {
    try {
      //API Calling

      // String token = await getToken();
      var headers = {...apiHeaders};
      // "Authorization" : token,
      await http
          .post(
          getUri(
              '${AppConsts.baseUrl}Account/ForgotPasswordConfirmation'),
          headers: headers,
          body: json.encode({
            "Username": userName,
            "Code": code,
          }))
          .then((response) async {
        log(response.body + "\n" + response.statusCode.toString());
        // modiling
        if (response.statusCode == 200) {
          onSuccess();
        } else {
          log(response.body);
        }
        // Debugging API response
        debugApi(
            methodName: "code Confirmation ",
            statusCode: response.statusCode,
            response: response.body,
            data: {
              "Username": userName,
              "Code": code,
            },
            endPoint: response.request!.url.toString(),
            headers: headers);
      }, onError: (error) {
        log("error happened from code Confirmation  ${error.toString()}");
        onError(error.toString());
      });
    } catch (e) {
      log("error happened from code Confirmation Request ${e.toString()}");
      onError(e.toString());
    }
  }

  static void resetPasswordRequest(
      {required String userName,
        required String password,
        required String passwordConfirmation,
        required Function() onSuccess,
        required Function(String error) onError}) async {
    try {
      //API Calling

      // String token = await getToken();
      var headers = {...apiHeaders};
      // "Authorization" : token,
      await http
          .post(
          getUri(
              '${AppConsts.baseUrl}Account/ResetPassword'),
          headers: headers,
          body: json.encode({
            "Username": userName,
            "Password": password,
            "ConfirmPassword": passwordConfirmation,
          }))
          .then((response) async {
        log(response.body + "\n" + response.statusCode.toString());
        // modiling
        if (response.statusCode == 200) {
          onSuccess();
        } else {
          log(response.body);
        }
        // Debugging API response
        debugApi(
            methodName: "code Confirmation ",
            statusCode: response.statusCode,
            response: response.body,
            data: {
              "Username": userName,
              "Password": password,
              "PasswordConfirmation": passwordConfirmation,
            },
            endPoint: response.request!.url.toString(),
            headers: headers);
      }, onError: (error) {
        log("error happened from reset password  ${error.toString()}");
        onError(error.toString());
      });
    } catch (e) {
      log("error happened from reset password Request ${e.toString()}");
      onError(e.toString());
    }
  }
}
