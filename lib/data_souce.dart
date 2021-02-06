import 'package:flutter/material.dart';

Color primaryBlack = Color(0xFF4A148C);

class DataSource {
  static String qout = "Nothing in life is to be feared, it is only to be understood, Now is the time to understand more, so that we way fear less.";
  static String qoutAr = "لا يوجد شيء يمكن الخوف منه في الحياة ، بل يجب فهمه فقط ، والآن حان الوقت لفهم المزيد ، حتى لا نخشى الخوف.";
  static List questionAnswers = [
    {
      "question": "What is a coronavirus?",
      "answer":
      "Coronaviruses are a large family of viruses which may cause illness in animals or humans.  In humans, several coronaviruses are known to cause respiratory infections ranging from the common cold to more severe diseases such as Middle East Respiratory Syndrome (MERS) and Severe Acute Respiratory Syndrome (SARS). The most recently discovered coronavirus causes coronavirus disease COVID-19."
    },
    {
      "question": "What is COVID-19?",
      "answer":
      "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease were unknown before the outbreak began in Wuhan, China, in December 2019."
    },
    {
      "question": "What are the symptoms of COVID-19?",
      "answer":
      "The most common symptoms of COVID-19 are fever, tiredness, and dry cough. Some patients may have aches and pains, nasal congestion, runny nose, sore throat or diarrhea. These symptoms are usually mild and begin gradually. Some people become infected but don’t develop any symptoms and don't feel unwell. Most people (about 80%) recover from the disease without needing special treatment. Around 1 out of every 6 people who gets COVID-19 becomes seriously ill and develops difficulty breathing. Older people, and those with underlying medical problems like high blood pressure, heart problems or diabetes, are more likely to develop serious illness. People with fever, cough and difficulty breathing should seek medical attention."
    },
    {
      "question": "How does COVID-19 spread?",
      "answer":
      "People can catch COVID-19 from others who have the virus. The disease can spread from person to person through small droplets from the nose or mouth which are spread when a person with COVID-19 coughs or exhales. These droplets land on objects and surfaces around the person. Other people then catch COVID-19 by touching these objects or surfaces, then touching their eyes, nose or mouth. People can also catch COVID-19 if they breathe in droplets from a person with COVID-19 who coughs out or exhales droplets. This is why it is important to stay more than 1 meter (3 feet) away from a person who is sick. \nWHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share updated findings."
    },
    {
      "question":
      "Can the virus that causes COVID-19 be transmitted through the air?",
      "answer":
      "Studies to date suggest that the virus that causes COVID-19 is mainly transmitted through contact with respiratory droplets rather than through the air"
    },
    {
      "question": "Can CoVID-19 be caught from a person who has no symptoms?",
      "answer":
      "The main way the disease spreads is through respiratory droplets expelled by someone who is coughing. The risk of catching COVID-19 from someone with no symptoms at all is very low. However, many people with COVID-19 experience only mild symptoms. This is particularly true at the early stages of the disease. It is therefore possible to catch COVID-19 from someone who has, for example, just a mild cough and does not feel ill.  WHO is assessing ongoing research on the period of transmission of COVID-19 and will continue to share updated findings.    "
    },
    {
      "question":
      "Can I catch COVID-19 from the feces of someone with the disease?",
      "answer":
      "The risk of catching COVID-19 from the feces of an infected person appears to be low. While initial investigations suggest the virus may be present in feces in some cases, spread through this route is not a main feature of the outbreak. WHO is assessing ongoing research on the ways COVID-19 is spread and will continue to share new findings. Because this is a risk, however, it is another reason to clean hands regularly, after using the bathroom and before eating."
    },
    {
      "question": "How likely am I to catch COVID-19?",
      "answer":
      "The risk depends on where you  are - and more specifically, whether there is a COVID-19 outbreak unfolding there.\nFor most people in most locations the risk of catching COVID-19 is still low. However, there are now places around the world (cities or areas) where the disease is spreading. For people living in, or visiting, these areas the risk of catching COVID-19 is higher. Governments and health authorities are taking vigorous action every time a new case of COVID-19 is identified. Be sure to comply with any local restrictions on travel, movement or large gatherings. Cooperating with disease control efforts will reduce your risk of catching or spreading COVID-19.\nCOVID-19 outbreaks can be contained and transmission stopped, as has been shown in China and some other countries. Unfortunately, new outbreaks can emerge rapidly. It’s important to be aware of the situation where you are or intend to go. WHO publishes daily updates on the COVID-19 situation worldwide."
    },
    {
      "question": "Who is at risk of developing severe illness?",
      "answer":
      "While we are still learning about how COVID-2019 affects people, older persons and persons with pre-existing medical conditions (such as high blood pressure, heart disease, lung disease, cancer or diabetes)  appear to develop serious illness more often than others. "
    },
    {
      "question": "Should I wear a mask to protect myself?",
      "answer":
      "Only wear a mask if you are ill with COVID-19 symptoms (especially coughing) or looking after someone who may have COVID-19. Disposable face mask can only be used once. If you are not ill or looking after someone who is ill then you are wasting a mask. There is a world-wide shortage of masks, so WHO urges people to use masks wisely.\nWHO advises rational use of medical masks to avoid unnecessary wastage of precious resources and mis-use of masks\nThe most effective ways to protect yourself and others against COVID-19 are to frequently clean your hands, cover your cough with the bend of elbow or tissue and maintain a distance of at least 1 meter (3 feet) from people who are coughing or sneezing"
    },
    {
      "question":
      "Are antibiotics effective in preventing or treating the COVID-19?",
      "answer":
      "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection. "
    }
  ];

  static List questionAnswersAr = [
    {
      "question": "ما هو فيروس كورونا؟",
      "answer":
      "فيروسات كورونا هي فصيلة كبيرة من الفيروسات التي قد تسبب المرض للحيوان أو الإنسان. لدى البشر ، من المعروف أن العديد من فيروسات كورونا تسبب التهابات في الجهاز التنفسي تتراوح من نزلات البرد إلى أمراض أكثر شدة مثل متلازمة الشرق الأوسط التنفسية (ميرس) ومتلازمة الجهاز التنفسي الحاد (سارس). أحدث فيروس كورونا تم اكتشافه يسبب مرض فيروس كورونا COVID-19."
    },
    {
      "question": "ما هو كوفيد 19",
      "answer":
      "COVID-19 هو مرض معد يسببه أحدث فيروس كورونا المكتشف. كان هذا الفيروس والمرض الجديد غير معروفين قبل بدء تفشي المرض في ووهان ، الصين ، في ديسمبر 2019."
    },
    {
      "question": "ما هي أعراض مرض كوفيد -19؟",
      "answer":
      "الأعراض الأكثر شيوعًا لـ COVID-19 هي الحمى والتعب والسعال الجاف. قد يعاني بعض المرضى من الأوجاع والآلام واحتقان الأنف وسيلان الأنف والتهاب الحلق أو الإسهال. عادة ما تكون هذه الأعراض خفيفة وتبدأ تدريجيًا. يصاب بعض الأشخاص بالعدوى ولكن لا تظهر عليهم أي أعراض ولا يشعرون بتوعك. يتعافى معظم الناس (حوالي 80٪) من المرض دون الحاجة إلى علاج خاص. يصاب حوالي 1 من كل 6 أشخاص مصابين بـ COVID-19 بمرض خطير ويصاب بصعوبة في التنفس. كبار السن وأولئك الذين يعانون من مشاكل طبية أساسية مثل ارتفاع ضغط الدم أو مشاكل القلب أو السكري هم أكثر عرضة للإصابة بأمراض خطيرة. يجب على الأشخاص المصابين بالحمى والسعال وصعوبة التنفس التماس العناية الطبية."
    },
    {
      "question": "كيف ينتشر مرض كوفيد -19؟",
      "answer":
      "يمكن للأشخاص التقاط COVID-19 من الآخرين المصابين بالفيروس. يمكن أن ينتشر المرض من شخص لآخر من خلال قطرات صغيرة من الأنف أو الفم والتي تنتشر عندما يسعل أو يزفر الشخص المصاب بـ COVID-19. تسقط هذه القطرات على الأشياء والأسطح حول الشخص. ثم يصاب الأشخاص الآخرون بـ COVID-19 عن طريق لمس هذه الأشياء أو الأسطح ، ثم لمس عيونهم أو أنفهم أو فمهم. يمكن للأشخاص أيضًا التقاط COVID-19 إذا استنشقوا قطرات من شخص مصاب بـ COVID-19 يسعل أو يزفر قطرات. هذا هو السبب في أنه من المهم البقاء على بعد أكثر من متر واحد (3 أقدام) من الشخص المريض. \ n تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول طرق انتشار COVID-19 وستواصل مشاركة النتائج المحدثة."
    },
    {
      "question":
      "هل يمكن للفيروس المسبب لـ COVID-19 أن ينتقل عبر الهواء؟",
      "answer":
      "تشير الدراسات التي أجريت حتى الآن إلى أن الفيروس الذي يسبب COVID-19 ينتقل بشكل أساسي من خلال ملامسة قطرات الجهاز التنفسي وليس عن طريق الهواء"
    },
    {
      "question": "هل يمكن التقاط كوفيد -19 من شخص لا تظهر عليه أعراض؟",
      "answer":
      "الطريقة الرئيسية لانتشار المرض هي من خلال الرذاذ التنفسي الذي يطرده شخص يسعل. خطر الإصابة بـ COVID-19 من شخص ليس لديه أعراض على الإطلاق منخفض للغاية. ومع ذلك ، يعاني العديد من الأشخاص المصابين بـ COVID-19 من أعراض خفيفة فقط. هذا صحيح بشكل خاص في المراحل المبكرة من المرض. لذلك من الممكن الإصابة بـ COVID-19 من شخص يعاني ، على سبيل المثال ، من سعال خفيف ولا يشعر بالمرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول فترة انتقال COVID-19 وستواصل مشاركة النتائج المحدثة. "
    },
    {
      "question":
      "هل يمكنني التقاط COVID-19 من براز شخص مصاب بالمرض؟",
      "answer":
      "يبدو أن خطر الإصابة بـ COVID-19 من براز الشخص المصاب منخفض. بينما تشير التحقيقات الأولية إلى أن الفيروس قد يكون موجودًا في البراز في بعض الحالات ، فإن الانتشار عبر هذا الطريق ليس سمة رئيسية لتفشي المرض. تقوم منظمة الصحة العالمية بتقييم الأبحاث الجارية حول طرق انتشار COVID-19 وستواصل مشاركة النتائج الجديدة. ولأن هذا يمثل خطورة ، فهو سبب آخر لتنظيف اليدين بانتظام بعد استخدام الحمام وقبل تناول الطعام."
    },
    {
      "question": "ما مدى احتمالية إصابتي بـ COVID-19؟",
      "answer":
      "تعتمد المخاطر على مكانك - وبشكل أكثر تحديدًا ، ما إذا كان هناك تفشي لـ COVID-19 يتكشف هناك. \ n بالنسبة لمعظم الناس في معظم المواقع ، لا يزال خطر الإصابة بـ COVID-19 منخفضًا. ومع ذلك ، هناك الآن أماكن حول العالم (مدن أو مناطق) ينتشر فيها المرض. بالنسبة للأشخاص الذين يعيشون في هذه المناطق أو يزورونها ، فإن خطر الإصابة بـ COVID-19 أعلى. تتخذ الحكومات والسلطات الصحية إجراءات صارمة في كل مرة يتم فيها تحديد حالة جديدة من COVID-19. تأكد من الالتزام بأي قيود محلية على السفر أو التنقل أو التجمعات الكبيرة. سيقلل التعاون مع جهود مكافحة الأمراض من خطر الإصابة بـ COVID-19 أو انتشاره. \ n يمكن احتواء تفشي COVID-19 وإيقاف انتقاله ، كما هو موضح في الصين وبعض البلدان الأخرى. لسوء الحظ ، يمكن أن تظهر حالات تفشي جديدة بسرعة. من المهم أن تكون على دراية بالموقف الذي تتواجد فيه أو تنوي الذهاب إليه. تنشر منظمة الصحة العالمية تحديثات يومية حول حالة COVID-19 في جميع أنحاء العالم."
    },
    {
      "question": "من هو المعرض لخطر الإصابة بمرض شديد؟",
      "answer":
      "بينما لا نزال نتعرف على كيفية تأثير COVID-2019 على الأشخاص ، يبدو أن كبار السن والأشخاص الذين يعانون من حالات طبية موجودة مسبقًا (مثل ارتفاع ضغط الدم أو أمراض القلب أو أمراض الرئة أو السرطان أو مرض السكري) يصابون بأمراض خطيرة أكثر من غيرهم."
    },
    {
      "question": "هل يجب أن أرتدي قناعًا لحماية نفسي؟",
      "answer":
      "ارتدِ قناعًا فقط إذا كنت مريضًا بأعراض COVID-19 (خاصة السعال) أو تعتني بشخص قد يكون مصابًا بـ COVID-19. يمكن استخدام قناع الوجه الذي يمكن التخلص منه مرة واحدة فقط. إذا لم تكن مريضًا أو تعتني بشخص مريض ، فأنت تهدر قناعًا. يوجد نقص في الأقنعة على مستوى العالم ، لذلك تحث منظمة الصحة العالمية الأشخاص على استخدام الأقنعة بحكمة. \ n تنصح منظمة الصحة العالمية بالاستخدام الرشيد للأقنعة الطبية لتجنب الهدر غير الضروري للموارد الثمينة وسوء استخدام الأقنعة \ n الطرق الأكثر فعالية لحماية نفسك والآخرين ضد COVID-19 هي تنظيف يديك بشكل متكرر ، وتغطية السعال بثني الكوع أو بمنديل ورقي والحفاظ على مسافة لا تقل عن متر واحد (3 أقدام) من الأشخاص الذين يسعلون أو يعطسون"
    },
    {
      "question":
      "هل المضادات الحيوية فعالة في منع أو علاج COVID-19؟",
      "answer":
      "لا. لا تقضي المضادات الحيوية على الفيروسات ، بل تعمل فقط على الالتهابات البكتيرية. يحدث مرض كوفيد -19 بسبب فيروس ، لذلك لا تعمل المضادات الحيوية. لا ينبغي استخدام المضادات الحيوية كوسيلة للوقاية أو العلاج من COVID-19. يجب استخدامها فقط حسب توجيهات الطبيب لعلاج عدوى بكتيرية."
    }
  ];
}