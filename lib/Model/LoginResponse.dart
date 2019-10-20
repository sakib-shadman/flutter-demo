
class LoginResponse {
  String accessToken;
  String tokenType;
  int expiresIn;
  String refreshToken;
  String userId;
  String companyId;
  String dateFormat;
  String userName;
  String employeeId;
  String userCategoryId;
  String userCategory;
  String needToChangePassword;
  String isTransportManager;
  String driverId;
  String userImageUrl;
  String employeeName;
  String designation;
  String remoteAttendanceAllowed;
  String userCompanyId;
  String issued;
  String expires;

  LoginResponse(
      {
        this.accessToken,
        this.tokenType,
        this.expiresIn,
        this.refreshToken,
        this.userId,
        this.companyId,
        this.dateFormat,
        this.userName,
        this.employeeId,
        this.userCategoryId,
        this.userCategory,
        this.needToChangePassword,
        this.isTransportManager,
        this.driverId,
        this.userImageUrl,
        this.employeeName,
        this.designation,
        this.remoteAttendanceAllowed,
        this.userCompanyId,
        this.issued,
        this.expires});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
    refreshToken = json['refresh_token'];
    userId = json['UserId'];
    companyId = json['CompanyId'];
    dateFormat = json['DateFormat'];
    userName = json['UserName'];
    employeeId = json['EmployeeId'];
    userCategoryId = json['UserCategoryId'];
    userCategory = json['UserCategory'];
    needToChangePassword = json['NeedToChangePassword'];
    isTransportManager = json['IsTransportManager'];
    driverId = json['DriverId'];
    userImageUrl = json['UserImageUrl'];
    employeeName = json['EmployeeName'];
    designation = json['Designation'];
    remoteAttendanceAllowed = json['RemoteAttendanceAllowed'];
    userCompanyId = json['userCompanyId'];
    issued = json['.issued'];
    expires = json['.expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this.accessToken;
    data['token_type'] = this.tokenType;
    data['expires_in'] = this.expiresIn;
    data['refresh_token'] = this.refreshToken;
    data['UserId'] = this.userId;
    data['CompanyId'] = this.companyId;
    data['DateFormat'] = this.dateFormat;
    data['UserName'] = this.userName;
    data['EmployeeId'] = this.employeeId;
    data['UserCategoryId'] = this.userCategoryId;
    data['UserCategory'] = this.userCategory;
    data['NeedToChangePassword'] = this.needToChangePassword;
    data['IsTransportManager'] = this.isTransportManager;
    data['DriverId'] = this.driverId;
    data['UserImageUrl'] = this.userImageUrl;
    data['EmployeeName'] = this.employeeName;
    data['Designation'] = this.designation;
    data['RemoteAttendanceAllowed'] = this.remoteAttendanceAllowed;
    data['userCompanyId'] = this.userCompanyId;
    data['.issued'] = this.issued;
    data['.expires'] = this.expires;
    return data;
  }

}