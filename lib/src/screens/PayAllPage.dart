import 'package:flutter/material.dart';
import 'package:nacional/src/const/global_const.dart';
import 'package:nacional/src/models/products.dart';
import 'package:nacional/src/widgets/custom_text.dart';

List<Product> productpay = [
  Product(name: "Fumbua de Maracuja",  price: 1000.00),
  Product(name: "Fumbua de Maracuja",  price: 1000.00),
  Product(name: "Fumbua de Maracuja",  price: 1000.00),
  Product(name: "Fumbua",  price: 1000.00),
  Product(name: "Fumbua",  price: 1000.00),
];

class PayAllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conferir Pedido"),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: CustomText(
                  text: "Teu Pedido",
                  size: 20,
                  color: black,
                  weight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 15, 
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: productpay.length,
                  itemBuilder: (context, index) {
                    return Container(
                //padding: EdgeInsets.all(8),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  //padding: EdgeInsets.all(12),
                  // margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                  ]),
                  child: Card(
                    //spacing: 5.0,
                    //runSpacing: 5.0,
                    // direction: Axis.vertical,
                    color: white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    )),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            //padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                            child: Column(
                              //mainAxisSize: MainAxisSize.max,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CustomText(
                                      text: productpay[index].name,
                                      size: 18,
                                      weight: FontWeight.w600,
                                    ),
                                    AddAll(),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CustomText(
                                      text: "${productpay[index].price} kz",
                                    ), 
                                    
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ); 
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //child: AddLocation(),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: ProgramOrder(),
              ),
              Container(
                width: double.infinity,
                child: MaterialButton(
                  onPressed: (){},
                  child: CustomText(
                    text: "Próximo",
                    size: 20,
                    color: white,
                  ),
                  color: pink,
                  textColor: white,
                  elevation: 5,
                  height: 50.0,
                  minWidth: 70.0,
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}

class AddAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: black,
            iconSize: 18,
          ),
          Container(
            child: Container(
              width: 50.0,
              height: 35.0,
              decoration: BoxDecoration(
                  color: pink,
                  border: Border.all(color: white, width: 2.0),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Center(
                child: CustomText(
                  text: "Add",
                  size: 12.0,
                  color: white,
                  weight: FontWeight.w300,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            iconSize: 18,
          )
        ],
      ),
    );
  }
}

class AddLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(1, 1),
          )
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
                  borderRadius: BorderRadius.circular(7)),
              fillColor: Colors.white,
              hintText: 'Adiciona a tua localização',
              filled: true,
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.location_on,
                    color: Color(0xFFfd2c2c),
                  ),
                  onPressed: () {
                    debugPrint('222');
                  })),
        ),
      ),
    );
  }
}


class ProgramOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(1, 1),
        )
      ]),
      child: Card(
        color: white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0)
          )
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 5, right: 5,),
          child: Column(
            children: <Widget>[
              Container(
                child: CustomText(text: "Agendar pedido", color: grey, weight: FontWeight.w400,),
              ),
              SizedBox(height: 5,),
              Wrap(
                children: <Widget>[
                  RadioListTile(
                    groupValue: "",
                    title: CustomText(text: "Pedir Agora", color: grey, weight: FontWeight.bold,),
                    value: "sim",
                    onChanged: (val) {
                    },
                  ),
                  RadioListTile(
                    groupValue: "",
                    title: CustomText(text: "Agendar", color: grey, weight: FontWeight.bold,),
                    value: "sim",
                    onChanged: (val) {
                    },
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TotalCalcutationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        )
      ]),
      child: Card(
        color: white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomText(
                    text: "Taxa de entrega",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  CustomText(
                    text: "2000.00kz",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomText(
                    text: "Total",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  CustomText(
                    text: "2000.00kz",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CustomText(
                    text: "Entrega",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                  CustomText(
                    text: "Samba, Luanda",
                    size: 18,
                    weight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xFFfae3e2).withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: Offset(0, 1),
        ),
      ]),
      child: Card(
        color: white,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        )),
        child: Container(
          alignment: Alignment.center,
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "images/deliverables/mail.png",
                  width: 50,
                  height: 50,
                ),
              ),
              CustomText(
                text: "Cartão de Crédito",
                size: 16,
                color: grey,
                weight: FontWeight.w400,
              )
            ],
          ),
        ),
      ),
    );
  }
}
