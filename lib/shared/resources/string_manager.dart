class AppStrings{
  static const baseUrl = 'https://relife.codepeak.live/api/V1/';

  static const String loginPatient = 'patient/signin';

  static const String registerPatient = 'patient/signup';

  static const String loginCaregiver = 'caregiver/signin';

  static const String registerCarer = 'caregiver/signup';

  static const String patientForgotPassword = 'patient/forgot-password';

  static const String patientVerifyCode = 'patient/verify-code';

  static const String patientResetPassword = 'patient/reset-password';

  static const String carerForgotPassword = 'caregiver/forgot-password';

  static const String carerVerifyCode = 'caregiver/verify-code';

  static const String carerResetPassword = 'caregiver/reset-password';

  static const String patientChangePassword = 'patient/changePassword';

  static const String carerChangePassword = 'caregiver/changePassword';

  static const String patientGetUser = 'patient/getPatientByToken';

  static const String carerGetUser = 'caregiver/getCaregiverByToken';

  static const String patientEditProfile = 'patient/editProfile';

  static const String carerEditProfile = 'caregiver/editProfile';

  static const String patientPublicRequests = 'patient/publicrequests';

  static const String patientSpecificRequests = 'patient/Specificrequests';

  static const String getAllUserCaregiver = 'caregiver/displayAllCaregivers';

  static const String caregiverById = 'caregiver';

  static const String nearbyCaregivers = 'nearbyCaregivers' ;

  static const String ByRatingcaregiver =
      'caregivers/displayCaregiversByRating';
}