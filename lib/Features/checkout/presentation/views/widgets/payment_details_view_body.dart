import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_method_item.dart';
import 'package:checkout_payment/Features/checkout/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodsListView(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isHolderNameVisible: true,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditModel){
            cardHolderName = creditModel.cardHolderName;
            expiryDate = creditModel.expiryDate;
            cardNumber = creditModel.cardNumber;
            cvvCode = creditModel.cvvCode;
            showBackView = creditModel.isCvvFocused;
            setState(() {
              
            });

          },
          formKey: formKey,
        )
      ],
    );
  }
}
