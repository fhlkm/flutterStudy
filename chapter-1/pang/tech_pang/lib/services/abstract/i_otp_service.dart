
import 'package:tech_pang/model/login.dart';
import 'package:tech_pang/model/otp.dart';
import 'package:tech_pang/services/network_service_response.dart';

abstract class IOTPService {
  Future<NetworkServiceResponse<CreateOTPResponse>> createOTP(
      String phoneNumber);
  Future<NetworkServiceResponse<OTPResponse>> fetchOTPLoginResponse(
      Login userLogin);
}
