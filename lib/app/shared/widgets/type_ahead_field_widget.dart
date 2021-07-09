import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class TypeAheadFieldWidget extends StatelessWidget {
  final String titulo;
  final bool isRequired;
  final List<String> list;
  final TextEditingController? controller;
  const TypeAheadFieldWidget(
      {Key? key,
      required this.titulo,
      this.isRequired = false,
      this.controller,
      required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      child: TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
          controller: controller,
          style: DefaultTextStyle.of(context).style.copyWith(),
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
          return list.where((value) =>
              value.toLowerCase().startsWith(pattern.toString().toLowerCase()));
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion.toString()),
          );
        },
        onSuggestionSelected: (suggestion) {
          controller!.text = suggestion.toString();
        },
      ),
    );
  }
}
