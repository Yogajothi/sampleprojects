import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample01/text_field.dart';

void main() => runApp(TextFieldExample());

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key key}):super(key:key);

  @override
  State <StatefulWidget>createState() => _TextFieldExampleState();
}


class _TextFieldExampleState extends State<TextFieldExample> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey= GlobalKey<FormFieldState<String>>();

  String _name;
  String _phonenumber;
  String _emailid;
  String _password;

  String _validatename(String value) {
    if (value.isEmpty) return 'Name is required';
    final RegExp nameExp = RegExp(r' ^[A-Za-z] +$');
    if (nameExp.hasMatch(value)) return 'Please enter the alphabetical only';
    return null;
  }
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal:16.0),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20),
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name*'
            ),
            onSaved: (String value){
              this._name =value;
              print('name= $_name');
            },
            validator: _validatename,
          ),
          SizedBox(height:20),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.phone),
                hintText: 'Where can we reach you?',
                labelText: 'Phone Number*',
                prefixText: '+86'
            ),
            keyboardType: TextInputType.number,
            onSaved: (String value){
              this._phonenumber=value;
              print('phonenumber=$_phonenumber');
            },
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly,
            ],
          ),
          SizedBox(height: 24.0),
          TextFormField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.mail),
                hintText: 'Your meial address',
                labelText: 'E-mail'
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String value){
              this. _emailid = value;
              print('E-mail =$_emailid');
            },
          ),
          SizedBox(height: 24.0),
          TextFormField(
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                hintText: 'Tell about your self',
                labelText: 'Life story',
                helperText: 'Keep it short'
            ),
            maxLines: 3,
          ),
          SizedBox(height: 24.0),
          TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              prefixText: '\$',
              suffixText:'USD',
              suffixStyle: TextStyle(color: Colors.green),
            ),
            maxLines: 1,
          ),
          SizedBox(height: 24.0),
          PasswordField (
            fieldKey: _passwordFieldKey,
            helperText :'No more than 8 characters',
            labelText : 'Password*',
            onFieldSummited : (String value){
              setState((){
                this._password=value;
              });
            },
          ),
          SizedBox(height:24.0),
          TextFormField(
            enabled: this._password!= null && this._password.isNotEmpty,
            decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                labelText: 'Re-type password'
            ),
            maxLength: 8,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
class PasswordField extends StatefulWidget {
  const PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSummited,
  });
  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSummited;
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSummited,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: (){
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText? Icons.visibility:Icons.visibility_off),
        ),

      ),
    );
  }
}