class hospital{
  String name;
  String address;
  String image;
  String number;
  String time;


  hospital(
      this.name,
      this.address,
      this.image,
      this.number,
      this.time,
      );

  String get hospital_name {
    return name;
  }

  String get hospital_address {
    return address;
  }

  String get hospital_image {
    return image;
  }

  String get hospital_number {
    return number;
  }

  String get hospital_time {
    return time;
  }


}
