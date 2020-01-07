class VinInfo {
  int count;
  String message;
  String searchCriteria;
  List<VinResults> results;

  VinInfo({this.count, this.message, this.searchCriteria, this.results});

  VinInfo.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = new List<VinResults>();
      json['Results'].forEach((v) {
        results.add(new VinResults.fromJson(v));
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

class VinResults {
  String aBS;
  String activeSafetySysNote;
  String adaptiveCruiseControl;
  String adaptiveDrivingBeam;
  String adaptiveHeadlights;
  String additionalErrorText;
  String airBagLocCurtain;
  String airBagLocFront;
  String airBagLocKnee;
  String airBagLocSeatCushion;
  String airBagLocSide;
  String autoReverseSystem;
  String automaticPedestrianAlertingSound;
  String axleConfiguration;
  String axles;
  String basePrice;
  String batteryA;
  String batteryATo;
  String batteryCells;
  String batteryInfo;
  String batteryKWh;
  String batteryKWhTo;
  String batteryModules;
  String batteryPacks;
  String batteryType;
  String batteryV;
  String batteryVTo;
  String bedLengthIN;
  String bedType;
  String blindSpotMon;
  String bodyCabType;
  String bodyClass;
  String brakeSystemDesc;
  String brakeSystemType;
  String busFloorConfigType;
  String busLength;
  String busType;
  String cANAACN;
  String cIB;
  String cashForClunkers;
  String chargerLevel;
  String chargerPowerKW;
  String coolingType;
  String curbWeightLB;
  String customMotorcycleType;
  String daytimeRunningLight;
  String destinationMarket;
  String displacementCC;
  String displacementCI;
  String displacementL;
  String doors;
  String driveType;
  String driverAssist;
  String dynamicBrakeSupport;
  String eDR;
  String eSC;
  String eVDriveUnit;
  String electrificationLevel;
  String engineConfiguration;
  String engineCycles;
  String engineCylinders;
  String engineHP;
  String engineHPTo;
  String engineKW;
  String engineManufacturer;
  String engineModel;
  String entertainmentSystem;
  String errorCode;
  String errorText;
  String forwardCollisionWarning;
  String fuelInjectionType;
  String fuelTypePrimary;
  String fuelTypeSecondary;
  String gCWR;
  String gCWRTo;
  String gVWR;
  String gVWRTo;
  String keylessIgnition;
  String laneDepartureWarning;
  String laneKeepSystem;
  String lowerBeamHeadlampLightSource;
  String make;
  String manufacturer;
  String manufacturerId;
  String model;
  String modelYear;
  String motorcycleChassisType;
  String motorcycleSuspensionType;
  String nCSABodyType;
  String nCSAMake;
  String nCSAMapExcApprovedBy;
  String nCSAMapExcApprovedOn;
  String nCSAMappingException;
  String nCSAModel;
  String nCSANote;
  String note;
  String otherBusInfo;
  String otherEngineInfo;
  String otherMotorcycleInfo;
  String otherRestraintSystemInfo;
  String otherTrailerInfo;
  String parkAssist;
  String pedestrianAutomaticEmergencyBraking;
  String plantCity;
  String plantCompanyName;
  String plantCountry;
  String plantState;
  String possibleValues;
  String pretensioner;
  String rearCrossTrafficAlert;
  String rearVisibilitySystem;
  String sAEAutomationLevel;
  String sAEAutomationLevelTo;
  String seatBeltsAll;
  String seatRows;
  String seats;
  String semiautomaticHeadlampBeamSwitching;
  String series;
  String series2;
  String steeringLocation;
  String suggestedVIN;
  String tPMS;
  String topSpeedMPH;
  String trackWidth;
  String tractionControl;
  String trailerBodyType;
  String trailerLength;
  String trailerType;
  String transmissionSpeeds;
  String transmissionStyle;
  String trim;
  String trim2;
  String turbo;
  String vIN;
  String valveTrainDesign;
  String vehicleType;
  String wheelBaseLong;
  String wheelBaseShort;
  String wheelBaseType;
  String wheelSizeFront;
  String wheelSizeRear;
  String wheels;
  String windows;

  VinResults(
      {this.aBS,
        this.activeSafetySysNote,
        this.adaptiveCruiseControl,
        this.adaptiveDrivingBeam,
        this.adaptiveHeadlights,
        this.additionalErrorText,
        this.airBagLocCurtain,
        this.airBagLocFront,
        this.airBagLocKnee,
        this.airBagLocSeatCushion,
        this.airBagLocSide,
        this.autoReverseSystem,
        this.automaticPedestrianAlertingSound,
        this.axleConfiguration,
        this.axles,
        this.basePrice,
        this.batteryA,
        this.batteryATo,
        this.batteryCells,
        this.batteryInfo,
        this.batteryKWh,
        this.batteryKWhTo,
        this.batteryModules,
        this.batteryPacks,
        this.batteryType,
        this.batteryV,
        this.batteryVTo,
        this.bedLengthIN,
        this.bedType,
        this.blindSpotMon,
        this.bodyCabType,
        this.bodyClass,
        this.brakeSystemDesc,
        this.brakeSystemType,
        this.busFloorConfigType,
        this.busLength,
        this.busType,
        this.cANAACN,
        this.cIB,
        this.cashForClunkers,
        this.chargerLevel,
        this.chargerPowerKW,
        this.coolingType,
        this.curbWeightLB,
        this.customMotorcycleType,
        this.daytimeRunningLight,
        this.destinationMarket,
        this.displacementCC,
        this.displacementCI,
        this.displacementL,
        this.doors,
        this.driveType,
        this.driverAssist,
        this.dynamicBrakeSupport,
        this.eDR,
        this.eSC,
        this.eVDriveUnit,
        this.electrificationLevel,
        this.engineConfiguration,
        this.engineCycles,
        this.engineCylinders,
        this.engineHP,
        this.engineHPTo,
        this.engineKW,
        this.engineManufacturer,
        this.engineModel,
        this.entertainmentSystem,
        this.errorCode,
        this.errorText,
        this.forwardCollisionWarning,
        this.fuelInjectionType,
        this.fuelTypePrimary,
        this.fuelTypeSecondary,
        this.gCWR,
        this.gCWRTo,
        this.gVWR,
        this.gVWRTo,
        this.keylessIgnition,
        this.laneDepartureWarning,
        this.laneKeepSystem,
        this.lowerBeamHeadlampLightSource,
        this.make,
        this.manufacturer,
        this.manufacturerId,
        this.model,
        this.modelYear,
        this.motorcycleChassisType,
        this.motorcycleSuspensionType,
        this.nCSABodyType,
        this.nCSAMake,
        this.nCSAMapExcApprovedBy,
        this.nCSAMapExcApprovedOn,
        this.nCSAMappingException,
        this.nCSAModel,
        this.nCSANote,
        this.note,
        this.otherBusInfo,
        this.otherEngineInfo,
        this.otherMotorcycleInfo,
        this.otherRestraintSystemInfo,
        this.otherTrailerInfo,
        this.parkAssist,
        this.pedestrianAutomaticEmergencyBraking,
        this.plantCity,
        this.plantCompanyName,
        this.plantCountry,
        this.plantState,
        this.possibleValues,
        this.pretensioner,
        this.rearCrossTrafficAlert,
        this.rearVisibilitySystem,
        this.sAEAutomationLevel,
        this.sAEAutomationLevelTo,
        this.seatBeltsAll,
        this.seatRows,
        this.seats,
        this.semiautomaticHeadlampBeamSwitching,
        this.series,
        this.series2,
        this.steeringLocation,
        this.suggestedVIN,
        this.tPMS,
        this.topSpeedMPH,
        this.trackWidth,
        this.tractionControl,
        this.trailerBodyType,
        this.trailerLength,
        this.trailerType,
        this.transmissionSpeeds,
        this.transmissionStyle,
        this.trim,
        this.trim2,
        this.turbo,
        this.vIN,
        this.valveTrainDesign,
        this.vehicleType,
        this.wheelBaseLong,
        this.wheelBaseShort,
        this.wheelBaseType,
        this.wheelSizeFront,
        this.wheelSizeRear,
        this.wheels,
        this.windows});

  VinResults.fromJson(Map<String, dynamic> json) {
    aBS = json['ABS'];
    activeSafetySysNote = json['ActiveSafetySysNote'];
    adaptiveCruiseControl = json['AdaptiveCruiseControl'];
    adaptiveDrivingBeam = json['AdaptiveDrivingBeam'];
    adaptiveHeadlights = json['AdaptiveHeadlights'];
    additionalErrorText = json['AdditionalErrorText'];
    airBagLocCurtain = json['AirBagLocCurtain'];
    airBagLocFront = json['AirBagLocFront'];
    airBagLocKnee = json['AirBagLocKnee'];
    airBagLocSeatCushion = json['AirBagLocSeatCushion'];
    airBagLocSide = json['AirBagLocSide'];
    autoReverseSystem = json['AutoReverseSystem'];
    automaticPedestrianAlertingSound = json['AutomaticPedestrianAlertingSound'];
    axleConfiguration = json['AxleConfiguration'];
    axles = json['Axles'];
    basePrice = json['BasePrice'];
    batteryA = json['BatteryA'];
    batteryATo = json['BatteryA_to'];
    batteryCells = json['BatteryCells'];
    batteryInfo = json['BatteryInfo'];
    batteryKWh = json['BatteryKWh'];
    batteryKWhTo = json['BatteryKWh_to'];
    batteryModules = json['BatteryModules'];
    batteryPacks = json['BatteryPacks'];
    batteryType = json['BatteryType'];
    batteryV = json['BatteryV'];
    batteryVTo = json['BatteryV_to'];
    bedLengthIN = json['BedLengthIN'];
    bedType = json['BedType'];
    blindSpotMon = json['BlindSpotMon'];
    bodyCabType = json['BodyCabType'];
    bodyClass = json['BodyClass'];
    brakeSystemDesc = json['BrakeSystemDesc'];
    brakeSystemType = json['BrakeSystemType'];
    busFloorConfigType = json['BusFloorConfigType'];
    busLength = json['BusLength'];
    busType = json['BusType'];
    cANAACN = json['CAN_AACN'];
    cIB = json['CIB'];
    cashForClunkers = json['CashForClunkers'];
    chargerLevel = json['ChargerLevel'];
    chargerPowerKW = json['ChargerPowerKW'];
    coolingType = json['CoolingType'];
    curbWeightLB = json['CurbWeightLB'];
    customMotorcycleType = json['CustomMotorcycleType'];
    daytimeRunningLight = json['DaytimeRunningLight'];
    destinationMarket = json['DestinationMarket'];
    displacementCC = json['DisplacementCC'];
    displacementCI = json['DisplacementCI'];
    displacementL = json['DisplacementL'];
    doors = json['Doors'];
    driveType = json['DriveType'];
    driverAssist = json['DriverAssist'];
    dynamicBrakeSupport = json['DynamicBrakeSupport'];
    eDR = json['EDR'];
    eSC = json['ESC'];
    eVDriveUnit = json['EVDriveUnit'];
    electrificationLevel = json['ElectrificationLevel'];
    engineConfiguration = json['EngineConfiguration'];
    engineCycles = json['EngineCycles'];
    engineCylinders = json['EngineCylinders'];
    engineHP = json['EngineHP'];
    engineHPTo = json['EngineHP_to'];
    engineKW = json['EngineKW'];
    engineManufacturer = json['EngineManufacturer'];
    engineModel = json['EngineModel'];
    entertainmentSystem = json['EntertainmentSystem'];
    errorCode = json['ErrorCode'];
    errorText = json['ErrorText'];
    forwardCollisionWarning = json['ForwardCollisionWarning'];
    fuelInjectionType = json['FuelInjectionType'];
    fuelTypePrimary = json['FuelTypePrimary'];
    fuelTypeSecondary = json['FuelTypeSecondary'];
    gCWR = json['GCWR'];
    gCWRTo = json['GCWR_to'];
    gVWR = json['GVWR'];
    gVWRTo = json['GVWR_to'];
    keylessIgnition = json['KeylessIgnition'];
    laneDepartureWarning = json['LaneDepartureWarning'];
    laneKeepSystem = json['LaneKeepSystem'];
    lowerBeamHeadlampLightSource = json['LowerBeamHeadlampLightSource'];
    make = json['Make'];
    manufacturer = json['Manufacturer'];
    manufacturerId = json['ManufacturerId'];
    model = json['Model'];
    modelYear = json['ModelYear'];
    motorcycleChassisType = json['MotorcycleChassisType'];
    motorcycleSuspensionType = json['MotorcycleSuspensionType'];
    nCSABodyType = json['NCSABodyType'];
    nCSAMake = json['NCSAMake'];
    nCSAMapExcApprovedBy = json['NCSAMapExcApprovedBy'];
    nCSAMapExcApprovedOn = json['NCSAMapExcApprovedOn'];
    nCSAMappingException = json['NCSAMappingException'];
    nCSAModel = json['NCSAModel'];
    nCSANote = json['NCSANote'];
    note = json['Note'];
    otherBusInfo = json['OtherBusInfo'];
    otherEngineInfo = json['OtherEngineInfo'];
    otherMotorcycleInfo = json['OtherMotorcycleInfo'];
    otherRestraintSystemInfo = json['OtherRestraintSystemInfo'];
    otherTrailerInfo = json['OtherTrailerInfo'];
    parkAssist = json['ParkAssist'];
    pedestrianAutomaticEmergencyBraking =
    json['PedestrianAutomaticEmergencyBraking'];
    plantCity = json['PlantCity'];
    plantCompanyName = json['PlantCompanyName'];
    plantCountry = json['PlantCountry'];
    plantState = json['PlantState'];
    possibleValues = json['PossibleValues'];
    pretensioner = json['Pretensioner'];
    rearCrossTrafficAlert = json['RearCrossTrafficAlert'];
    rearVisibilitySystem = json['RearVisibilitySystem'];
    sAEAutomationLevel = json['SAEAutomationLevel'];
    sAEAutomationLevelTo = json['SAEAutomationLevel_to'];
    seatBeltsAll = json['SeatBeltsAll'];
    seatRows = json['SeatRows'];
    seats = json['Seats'];
    semiautomaticHeadlampBeamSwitching =
    json['SemiautomaticHeadlampBeamSwitching'];
    series = json['Series'];
    series2 = json['Series2'];
    steeringLocation = json['SteeringLocation'];
    suggestedVIN = json['SuggestedVIN'];
    tPMS = json['TPMS'];
    topSpeedMPH = json['TopSpeedMPH'];
    trackWidth = json['TrackWidth'];
    tractionControl = json['TractionControl'];
    trailerBodyType = json['TrailerBodyType'];
    trailerLength = json['TrailerLength'];
    trailerType = json['TrailerType'];
    transmissionSpeeds = json['TransmissionSpeeds'];
    transmissionStyle = json['TransmissionStyle'];
    trim = json['Trim'];
    trim2 = json['Trim2'];
    turbo = json['Turbo'];
    vIN = json['VIN'];
    valveTrainDesign = json['ValveTrainDesign'];
    vehicleType = json['VehicleType'];
    wheelBaseLong = json['WheelBaseLong'];
    wheelBaseShort = json['WheelBaseShort'];
    wheelBaseType = json['WheelBaseType'];
    wheelSizeFront = json['WheelSizeFront'];
    wheelSizeRear = json['WheelSizeRear'];
    wheels = json['Wheels'];
    windows = json['Windows'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ABS'] = this.aBS;
    data['ActiveSafetySysNote'] = this.activeSafetySysNote;
    data['AdaptiveCruiseControl'] = this.adaptiveCruiseControl;
    data['AdaptiveDrivingBeam'] = this.adaptiveDrivingBeam;
    data['AdaptiveHeadlights'] = this.adaptiveHeadlights;
    data['AdditionalErrorText'] = this.additionalErrorText;
    data['AirBagLocCurtain'] = this.airBagLocCurtain;
    data['AirBagLocFront'] = this.airBagLocFront;
    data['AirBagLocKnee'] = this.airBagLocKnee;
    data['AirBagLocSeatCushion'] = this.airBagLocSeatCushion;
    data['AirBagLocSide'] = this.airBagLocSide;
    data['AutoReverseSystem'] = this.autoReverseSystem;
    data['AutomaticPedestrianAlertingSound'] =
        this.automaticPedestrianAlertingSound;
    data['AxleConfiguration'] = this.axleConfiguration;
    data['Axles'] = this.axles;
    data['BasePrice'] = this.basePrice;
    data['BatteryA'] = this.batteryA;
    data['BatteryA_to'] = this.batteryATo;
    data['BatteryCells'] = this.batteryCells;
    data['BatteryInfo'] = this.batteryInfo;
    data['BatteryKWh'] = this.batteryKWh;
    data['BatteryKWh_to'] = this.batteryKWhTo;
    data['BatteryModules'] = this.batteryModules;
    data['BatteryPacks'] = this.batteryPacks;
    data['BatteryType'] = this.batteryType;
    data['BatteryV'] = this.batteryV;
    data['BatteryV_to'] = this.batteryVTo;
    data['BedLengthIN'] = this.bedLengthIN;
    data['BedType'] = this.bedType;
    data['BlindSpotMon'] = this.blindSpotMon;
    data['BodyCabType'] = this.bodyCabType;
    data['BodyClass'] = this.bodyClass;
    data['BrakeSystemDesc'] = this.brakeSystemDesc;
    data['BrakeSystemType'] = this.brakeSystemType;
    data['BusFloorConfigType'] = this.busFloorConfigType;
    data['BusLength'] = this.busLength;
    data['BusType'] = this.busType;
    data['CAN_AACN'] = this.cANAACN;
    data['CIB'] = this.cIB;
    data['CashForClunkers'] = this.cashForClunkers;
    data['ChargerLevel'] = this.chargerLevel;
    data['ChargerPowerKW'] = this.chargerPowerKW;
    data['CoolingType'] = this.coolingType;
    data['CurbWeightLB'] = this.curbWeightLB;
    data['CustomMotorcycleType'] = this.customMotorcycleType;
    data['DaytimeRunningLight'] = this.daytimeRunningLight;
    data['DestinationMarket'] = this.destinationMarket;
    data['DisplacementCC'] = this.displacementCC;
    data['DisplacementCI'] = this.displacementCI;
    data['DisplacementL'] = this.displacementL;
    data['Doors'] = this.doors;
    data['DriveType'] = this.driveType;
    data['DriverAssist'] = this.driverAssist;
    data['DynamicBrakeSupport'] = this.dynamicBrakeSupport;
    data['EDR'] = this.eDR;
    data['ESC'] = this.eSC;
    data['EVDriveUnit'] = this.eVDriveUnit;
    data['ElectrificationLevel'] = this.electrificationLevel;
    data['EngineConfiguration'] = this.engineConfiguration;
    data['EngineCycles'] = this.engineCycles;
    data['EngineCylinders'] = this.engineCylinders;
    data['EngineHP'] = this.engineHP;
    data['EngineHP_to'] = this.engineHPTo;
    data['EngineKW'] = this.engineKW;
    data['EngineManufacturer'] = this.engineManufacturer;
    data['EngineModel'] = this.engineModel;
    data['EntertainmentSystem'] = this.entertainmentSystem;
    data['ErrorCode'] = this.errorCode;
    data['ErrorText'] = this.errorText;
    data['ForwardCollisionWarning'] = this.forwardCollisionWarning;
    data['FuelInjectionType'] = this.fuelInjectionType;
    data['FuelTypePrimary'] = this.fuelTypePrimary;
    data['FuelTypeSecondary'] = this.fuelTypeSecondary;
    data['GCWR'] = this.gCWR;
    data['GCWR_to'] = this.gCWRTo;
    data['GVWR'] = this.gVWR;
    data['GVWR_to'] = this.gVWRTo;
    data['KeylessIgnition'] = this.keylessIgnition;
    data['LaneDepartureWarning'] = this.laneDepartureWarning;
    data['LaneKeepSystem'] = this.laneKeepSystem;
    data['LowerBeamHeadlampLightSource'] = this.lowerBeamHeadlampLightSource;
    data['Make'] = this.make;
    data['Manufacturer'] = this.manufacturer;
    data['ManufacturerId'] = this.manufacturerId;
    data['Model'] = this.model;
    data['ModelYear'] = this.modelYear;
    data['MotorcycleChassisType'] = this.motorcycleChassisType;
    data['MotorcycleSuspensionType'] = this.motorcycleSuspensionType;
    data['NCSABodyType'] = this.nCSABodyType;
    data['NCSAMake'] = this.nCSAMake;
    data['NCSAMapExcApprovedBy'] = this.nCSAMapExcApprovedBy;
    data['NCSAMapExcApprovedOn'] = this.nCSAMapExcApprovedOn;
    data['NCSAMappingException'] = this.nCSAMappingException;
    data['NCSAModel'] = this.nCSAModel;
    data['NCSANote'] = this.nCSANote;
    data['Note'] = this.note;
    data['OtherBusInfo'] = this.otherBusInfo;
    data['OtherEngineInfo'] = this.otherEngineInfo;
    data['OtherMotorcycleInfo'] = this.otherMotorcycleInfo;
    data['OtherRestraintSystemInfo'] = this.otherRestraintSystemInfo;
    data['OtherTrailerInfo'] = this.otherTrailerInfo;
    data['ParkAssist'] = this.parkAssist;
    data['PedestrianAutomaticEmergencyBraking'] =
        this.pedestrianAutomaticEmergencyBraking;
    data['PlantCity'] = this.plantCity;
    data['PlantCompanyName'] = this.plantCompanyName;
    data['PlantCountry'] = this.plantCountry;
    data['PlantState'] = this.plantState;
    data['PossibleValues'] = this.possibleValues;
    data['Pretensioner'] = this.pretensioner;
    data['RearCrossTrafficAlert'] = this.rearCrossTrafficAlert;
    data['RearVisibilitySystem'] = this.rearVisibilitySystem;
    data['SAEAutomationLevel'] = this.sAEAutomationLevel;
    data['SAEAutomationLevel_to'] = this.sAEAutomationLevelTo;
    data['SeatBeltsAll'] = this.seatBeltsAll;
    data['SeatRows'] = this.seatRows;
    data['Seats'] = this.seats;
    data['SemiautomaticHeadlampBeamSwitching'] =
        this.semiautomaticHeadlampBeamSwitching;
    data['Series'] = this.series;
    data['Series2'] = this.series2;
    data['SteeringLocation'] = this.steeringLocation;
    data['SuggestedVIN'] = this.suggestedVIN;
    data['TPMS'] = this.tPMS;
    data['TopSpeedMPH'] = this.topSpeedMPH;
    data['TrackWidth'] = this.trackWidth;
    data['TractionControl'] = this.tractionControl;
    data['TrailerBodyType'] = this.trailerBodyType;
    data['TrailerLength'] = this.trailerLength;
    data['TrailerType'] = this.trailerType;
    data['TransmissionSpeeds'] = this.transmissionSpeeds;
    data['TransmissionStyle'] = this.transmissionStyle;
    data['Trim'] = this.trim;
    data['Trim2'] = this.trim2;
    data['Turbo'] = this.turbo;
    data['VIN'] = this.vIN;
    data['ValveTrainDesign'] = this.valveTrainDesign;
    data['VehicleType'] = this.vehicleType;
    data['WheelBaseLong'] = this.wheelBaseLong;
    data['WheelBaseShort'] = this.wheelBaseShort;
    data['WheelBaseType'] = this.wheelBaseType;
    data['WheelSizeFront'] = this.wheelSizeFront;
    data['WheelSizeRear'] = this.wheelSizeRear;
    data['Wheels'] = this.wheels;
    data['Windows'] = this.windows;
    return data;
  }
}
