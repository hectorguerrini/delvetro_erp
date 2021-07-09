import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class TypeAheadFieldWidget extends StatelessWidget {
  final String titulo;
  final bool isRequired;
  final List<String> list;

  final void Function(String value) onChanged;
  const TypeAheadFieldWidget(
      {Key? key,
      required this.titulo,
      this.isRequired = false,
      required this.list,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: TypeAheadField(
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
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            border: OutlineInputBorder(),
          ),
        ),
        suggestionsCallback: (pattern) {
          return list
              .where((value) => value
                  .toLowerCase()
                  .startsWith(pattern.toString().toLowerCase()))
              .take(10);
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(
              suggestion.toString(),
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
          onChanged;
          controller.text = suggestion.toString();
        },
      ),
    );
  }
}
