import '../../models/models.dart';

abstract class ContactState {}

class UnselectedContact extends ContactState {}

class SelectedContact extends ContactState {
  SelectedContact(this.contact);
  final Contact contact;
}
