class InputValidators {
  static final RegExp _validEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  static String? validEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Ce champ est obligatoire';
    }

    if (_validEmail.hasMatch(value) == false) {
      return 'Veuillez saisir un email valide';
    }
    return null;
  }
}
