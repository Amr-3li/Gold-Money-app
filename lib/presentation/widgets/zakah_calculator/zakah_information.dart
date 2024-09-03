import 'package:flutter/material.dart';

class ZakahInformation extends StatelessWidget {
  const ZakahInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "كيفيه حساب الزكاه ؟",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
              maxLines: 20,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              "النصاب في الذهب والفضة باعتبار خالصهما ، فيسقط قدر الغش أو المخلوط ويزكى الخالص منهما .ونصاب الزكاة في الذهب الخالص ( عيار 24 ) هو 85 جراما ؛ حيث تصل درجة النقاوة في هذا العيار إلى (999) من (1000) وهي أعلى درجة في النقاوة بالنسبة للذهب حسب كلام أهل الويحسب النصاب في عيار 21 وعيار 18 أو غير ذلك بعدة طرق ، من أشهرها يضرب عدد الجرامات في العيار ويقسم على 24 ، فيكون الناتج ذهبا خالصا عيار 24 ، فإذا بلغ الناتج 85 جراما فأكثر : وجبت فيه الزكاة ، وهي 2.5% .فإذا كان هذا المقدار المسؤول عنه من عيار 21 مثلا ، فتحسب زكاته كالتالي :(170 × 21) ÷ 24 = 148.75ثم يخرج من هذه الجرامات 2.5% ، وهو 3.7 جرام تقريبا . فيكون هذا هو مقدار الزكاة عند تمام الحول  \n.والله تعالى أعلم ."),
        ],
      ),
    );
  }
}
