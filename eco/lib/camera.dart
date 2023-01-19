import 'dart:io';

import 'package:eco/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';


class MyHomePagee extends StatefulWidget {
  MyHomePagee({Key? key}) : super(key: key);

 

  @override
  _MyHomePageeState createState() => _MyHomePageeState();
}

 
  
class _MyHomePageeState extends State<MyHomePagee> {
   final List locale =[
    {'name':'ENGLISH','locale': Locale('en','US')},

    {'name':'PORTUGUÊS','locale': Locale('pt','BR')},
    {'name':'SPANISH','locale': Locale('es','ES')},
  ];
  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }
  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
        builder: (builder){
           return AlertDialog(
             title: Text('Choose Your Language'.tr),
             content: Container(
               width: double.maxFinite,
               child: ListView.separated(
                 shrinkWrap: true,
                   itemBuilder: (context,index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: GestureDetector(child: Text(locale[index]['name']),onTap: (){
                         print(locale[index]['name']);
                         updateLanguage(locale[index]['locale']);
                       },),
                     );
                   }, separatorBuilder: (context,index){
                     return Divider(
                       color: Colors.blue,
                     );
               }, itemCount: locale.length
               ),
             ),
           );
        }
    );
  }
   final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _senhaController = TextEditingController();
  bool _showPassword = false;
  File? pickedImage;
void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   Text(
                    "Pic Image From".tr,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                    pickImage(ImageSource.camera);
                    },
                    icon: const Icon(Icons.camera),
                    label:  Text("CAMERA".tr),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                    pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label:  Text("GALLERY".tr),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label:  Text("CANCEL".tr),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }
  
  @override
Widget build(BuildContext context){
  
  return Scaffold(
    
    resizeToAvoidBottomInset : false,
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox( 
            
            height: 15,
          ),
             Text(
                  textAlign: TextAlign.center,
                  'O seu Perfil'.tr,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.indigo, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  child: ClipOval(
                    child: pickedImage !=null 
                    ? Image.file(
                    pickedImage!,
                     width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                    ) :Image.network('https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
                           
                          ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 5,
                  child: IconButton(
                    onPressed: imagePickerOption,
                    icon: const Icon(
                      Icons.add_a_photo_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
              Padding(
                  padding: const EdgeInsets.all(2),
                ),
                 Text(
                  textAlign: TextAlign.center,
                  'Adicionar Foto'.tr,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
         TextFormField(
          
  keyboardType: TextInputType.name,
                  controller: _nameController,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text('Nome'.tr),
                    hintText: 'Insira o seu nome'.tr,
                    ),
                    validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Digite o seu nome!'.tr;
                    }
                    return null;
                  },
         ),
          SizedBox(
                  height: 20,
                ),
                       TextFormField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text('Número Escola (Opcional)'.tr),
                    hintText: 'Insira o seu número da escola'.tr,
                    ),
              
         ),
         SizedBox(height: 30),
         Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
  OutlinedButton(

onPressed: () {
  buildLanguageDialog(context);
},

child: Text("Mudar idioma".tr ,style: TextStyle(
fontSize: 15,
letterSpacing: 2,
color: Colors.black
)),
style: OutlinedButton.styleFrom(
padding: EdgeInsets.symmetric(horizontal: 30),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
),
  ),
  ElevatedButton(
onPressed: () {
  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  OnBoardingScreen()),
              
            );
},

child: Text("Save".tr, style: TextStyle(
fontSize: 15,
letterSpacing: 2,
color: Colors.white
)),
style: ElevatedButton.styleFrom(
primary: Colors.blue,
padding: EdgeInsets.symmetric(horizontal: 30),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))

),
  ),
],
),
        ] 
        
      ),
      
    );

}
}


