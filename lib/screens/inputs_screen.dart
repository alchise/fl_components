// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firt_name': 'Alex',
      'last_name': 'Chinchilla',
      'email': 'alchie@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Nombre del usuario',
                    labelText: 'Nombre',
                    helperText: 'Mensaje left',
                    counterText: 'Mensaje right',
                    icon: null,
                    prefixIcon: null,
                    suffixIcon: null,
                    formProperty: 'firt_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    hintText: 'Apellido del usuario',
                    labelText: 'Apellido',
                    helperText: 'Mensaje left',
                    counterText: 'Mensaje right',
                    icon: null,
                    prefixIcon: null,
                    suffixIcon: null,
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    hintText: 'Correo del usuario',
                    labelText: 'Correo',
                    helperText: 'Mensaje left',
                    counterText: 'Mensaje right',
                    icon: null,
                    prefixIcon: null,
                    suffixIcon: null,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    hintText: 'Contraseña del usuario',
                    labelText: 'Contraseña',
                    helperText: 'Mensaje left',
                    counterText: 'Mensaje right',
                    icon: null,
                    prefixIcon: null,
                    suffixIcon: null,
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                      DropdownMenuItem(value: 'Root', child: Text('Root')),
                      DropdownMenuItem(
                          value: 'Develop', child: Text('Develop')),
                      DropdownMenuItem(value: 'User', child: Text('User')),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //* Minimizar el teclado
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      //* Imprimir valores del formulario
                      print(formValues);
                    },
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
