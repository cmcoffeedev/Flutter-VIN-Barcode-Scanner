class Makes {
  int count;
  String message;
  String searchCriteria;
  List<Results> results;

  Makes({this.count, this.message, this.searchCriteria, this.results});

  Makes.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = new List<Results>();
      json['Results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Count'] = this.count;
    data['Message'] = this.message;
    data['SearchCriteria'] = this.searchCriteria;
    if (this.results != null) {
      data['Results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int makeId;
  String makeName;
  int vehicleTypeId;
  String vehicleTypeName;

  Results(
      {this.makeId, this.makeName, this.vehicleTypeId, this.vehicleTypeName});

  Results.fromJson(Map<String, dynamic> json) {
    makeId = json['MakeId'];
    makeName = json['MakeName'];
    vehicleTypeId = json['VehicleTypeId'];
    vehicleTypeName = json['VehicleTypeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MakeId'] = this.makeId;
    data['MakeName'] = this.makeName;
    data['VehicleTypeId'] = this.vehicleTypeId;
    data['VehicleTypeName'] = this.vehicleTypeName;
    return data;
  }
}
