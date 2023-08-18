class GuestModel {
  String guestName;
  String bookedBy;
  String status;
  String note;
  GuestModel({
    required this.guestName,
    required this.bookedBy,
    required this.status,
    required this.note,
  });
  static List<GuestModel> guestList = [
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
    GuestModel(
        guestName: "Aditi",
        bookedBy: "Angeliki Dm",
        status: "Checked In",
        note: "From Event Team"),
  ];
}
