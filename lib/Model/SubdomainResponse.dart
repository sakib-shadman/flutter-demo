
class SubdomainResponse {
  int companyId;
  String companyName;
  int appClientId;
  String imagePath;
  String messageString;
  int messageType;

  SubdomainResponse({this.companyId, this.companyName, this.appClientId, this.imagePath='', this.messageType, this.messageString});

  SubdomainResponse.fromJson(Map<String, dynamic> json) {
    companyId = json['CompanyId'];
    companyName = json['CompanyName'];
    appClientId = json['AppClientId'];
    imagePath = json['ImagePath'];
    messageType = json['MessageType'];
    messageString = json['MessageString'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CompanyId'] = this.companyId;
    data['CompanyName'] = this.companyName;
    data['AppClientId'] = this.appClientId;
    data['ImagePath'] = this.imagePath;
    data['MessageType'] = this.messageType;
    data['MessageString'] = this.messageString;
    return data;
  }
}