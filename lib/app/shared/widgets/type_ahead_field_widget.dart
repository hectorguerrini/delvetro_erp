import 'package:delvetro_erp/app/shared/models/generic_fields_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class TypeAheadFieldWidget extends StatelessWidget {
  final String? titulo;
  final bool isRequired;
  final List<GenericFieldsModel> list;
  final int flex;
  final String? value;
  final void Function(String value)? onChanged;
  final void Function(int value)? onSuggestionSelected;
  const TypeAheadFieldWidget(
      {Key? key,
      this.titulo,
      this.value,
      this.isRequired = false,
      required this.list,
      this.onChanged,
      required this.flex,
      this.onSuggestionSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController(text: value);
    return Expanded(
      flex: flex,
      child: TypeAheadField<GenericFieldsModel>(
        textFieldConfiguration: TextFieldConfiguration(
          controller: controller,
          onChanged: onChanged,
          style: TextStyle(
            fontSize: 24,
          ),
          decoration: InputDecoration(
            labelText: titulo,
            labelStyle: TextStyle(
              fontSize: 24,
            ),
            suffixIcon: IconButton(
                onPressed: controller.clear, icon: Icon(Icons.close)),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            border: OutlineInputBorder(),
          ),
        ),
        suggestionsCallback: (pattern) {
          return list
              .where((value) =>
                  value.caption.toLowerCase().startsWith(pattern.toLowerCase()))
              .take(10);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(
              suggestion.caption,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          );
        },
        hideOnLoading: true,
        hideOnEmpty: true,
        hideOnError: true,
        onSuggestionSelected: (suggestion) {
          if (onSuggestionSelected != null && suggestion.id != null) {
            onSuggestionSelected!(suggestion.id!);
          }
        },
      ),
    );
  }
}
