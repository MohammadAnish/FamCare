import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class is used in the [registration] screen.

// ignore_for_file: must-be-immutable

class RegistrationModel {
  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    ),
  ];

}
