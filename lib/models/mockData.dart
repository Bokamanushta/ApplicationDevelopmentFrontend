import 'package:utm_x_change/models/ShoppingCard.dart';
import 'package:utm_x_change/models/checkListData.dart';
import 'package:utm_x_change/models/checklist.dart';
import 'package:utm_x_change/models/dodont.dart';
import 'package:utm_x_change/models/place.dart';

List<CheckListTemplate> myList = [
  CheckListTemplate(
    documentList: [
      CheckListData(title: 'Passport',value: false),
      CheckListData(title: 'Copy of Passprt details page',value: false),
      CheckListData(title: 'Entry Stamp to Malaysia(post-arrival)',value: false),
      CheckListData(title: 'Single Entry Visa(SEV)',value: false),
      CheckListData(title: 'Visa ApprovalLetter',value: false),
      CheckListData(title: 'UTM OfferLette',value: false),
      CheckListData(title: 'Accommodation documents',value: false),
    ],
    title: 'Documents',
    imageLocation: 'assets/images/documnets.png',
  ),
  CheckListTemplate(documentList: [
    CheckListData(title: 'Personal Clothes',value: false),
    CheckListData(title: 'Toiletries for your first fewdays',value: false),
    CheckListData(title: 'Medicines',value: false),
    CheckListData(
        title:
            'National and traditional dress for formal occasionandactivities',value: false),
    CheckListData(
        title:
            'Bring MYR currency incase there are any delays in setting up a bank account',value: false),
    CheckListData(title: 'Smart phone and Laptop/Notebook',value: false)
  ], 
  title: 'Personal Things', 
  imageLocation: 'assets/images/personal_9.png',
  ),
  CheckListTemplate(documentList: [
    CheckListData(
        title:
            'Keep the copy of your passport in a separate and safe place incase the document is lost or stolen. You may also leave the copy to your family and friend to be extra safe',value: false),
    CheckListData(
        title:
            'Avoid bringing valuable items with you such as jewelry and keepsakes. If you are certain you would like to bring valuable items with you, make sure they are insured and always stored securely.',value: false),
  ],
  title: 'Tips',
  imageLocation: 'assets/images/tips.png',
  ),
];

List<Place> placeList = [
  Place(
      title: 'LEGOLAND MALAYSIA',
      description:
          'Legoland Malaysia, Johor Bahru is the first theme park in Asia and sixth in the world upon its establishment. It is full packed of family fun with more than 40 rides, shows and attractions. Almost everything is hands-on, so you can push, pedal and program, or steer, squirt and splash, your way through a truly interactive experience. Come and enjoy all the amazing kid-friendly features made by the LEGO bricks. Even the flowers are made of LEGO Bricks! Legoland Malaysia is only 20 minutes from Pulai Springs Resort. Visit us at http://www.pulaisprings.com/packages/legoland-malaysia-hotel-packages to view our Legoland Malaysia Holiday Packages. It will be worth it!',
      distance: '26.5 KM',
      imageLocation: 'assets/images/legoland.png',
      review: '4.9'),
  Place(
      title: 'PUTERI HARBOUR',
      description:
          'Puteri Harbour is home to the southernmost marina on the mainland of continent Asia, making it a must visit destination on the world sailing map. Located at the narrow-most point between Singapore and Johor; known as the Puteri Narrows, Malaysia – lies the breathtaking Marinas at Puteri Harbour. The Public Marina, Private Marina & Mega Yacht Marina can accomodate yachts with LOA up to 90 . Other outdoor activities Puteri Harbour offers are River cruise and firefly trips from Puteri Harbour to Sungai Perapat or Sungai Pendas, Pulau Merambung, Kukup, RAMSAR Sungai Pulai and Danga Bay. Fishing and diving trips at Pulau Pisang or any customer preferred areas. Watersports – canoe, kayak, paddle boats, water polo. Joy ride, Banana boat and wakeboard, Bicycle rental, Boating and sailing courses',
      distance: '27.6 KM',
      imageLocation: 'assets/images/puteri_harbour.jpg',
      review: '4.8'),
  Place(
      title: 'JOHOR PREMIUM OUTLET',
      description:
          'Let’s go shopping!  JPO is a collection of 130 designer and name brand outlet stores. Good news for the shopping lovers where JPO Collection of finest brands in unique outdoor settings and offers impressive savings of 25% to 65% every day. ',
      distance: '12.8 KM',
      imageLocation: 'assets/images/jpo.jpg',
      review: '4.5'),
  Place(
      title: 'R&F TANJUNG PUTERI',
      description:
          'Tanjung Puteri Waterfront in the heart of Johor Bahru city is a 157-acre mixed development straddling both sides of the Causeway to Singapore. Enjoy a relaxing stroll along the waterfront replete with world-class coastal amenities- this setting of Tanjung Puteri’s Cultural district will be sure to kindle your passion for creativity.',
      distance: '29.5 KM',
      imageLocation: 'assets/images/R&F TANJUNG PUTERI.jpg',
      review: '4.7'),
];

List<DoDont> dodontList = [
  DoDont(
    title: 'Do learn Malaysian dining etiquette',
    description:
        "Since there are three major ethnicities among Malaysians, each restaurant will have different utensils. A Malay stall will give you a fork and a spoon. A Chinese-Malaysian restaurant will give you chopsticks and a spoon. An Indian-Malaysian establishment will probably offer a fork and spoon. Most Indians will eat without utensils by using their RIGHT hand. Only their right hand. The left is reserved for the bad/dirty things like cleaning after going to the bathroom, so they keep it separate. And before you get all grossed out… I’m sure they wash both hands after going to the bathroom, but still, the right hand prevails for all the clean and good stuff. If you are unsure what to do, watch the locals. Do what they do. It’s not easy to eat rice and curry with your fingers, but it’s fun to try.",
    type: 'do',
  ),
  DoDont(
    title: 'Do dress respectfully',
    description:
        "Malaysians are moderate people. The Malay women wear a hair covering called a tudong. Usually with jeans, long pants, or a long skirt. Malaysian woman in floral tudong in tea plantation The Chinese and Indian Malaysians wear mainstream western clothes (unless they are dressed for a cultural event). Some of the Chinese women wear very short-shorts (aka cheek-peekers), and no one seems to care or notice for that matter. However, as a western woman, it’s very different. If I wore the same thing, I’d be gawked at by both sexes. It’s a dichotomy, but it’s true. I’ve worn a loose shirt with a cut out back and had a woman I know stop me and say, “Oh, you so sexy,” and giggled as she walked away in her cheek-peekers, leaving little to the imagination. As a traveler, you are free to wear anything you want. However, it’s always best to be more conservative than not. Just because side or underboob is a thing in America, doesn’t mean it’s a thing here. In fact, it’s not. And displaying any bit of your boob is pretty disrespectful. But if nothing else, it will undoubtedly draw a lot of attention, probably not the kind you want.",
    type: 'do',
  ),
  DoDont(
    title: 'Do get used to a few gross habits',
    description:
        "By all means, this isn’t all Malaysians, not even most, but it happens. For some reason, slurping, burping and snorting out loud, even in restaurants, happens here. We were brought up never to slurp, burp or bring up a hairball at the table. But apparently there are people here who didn’t get that memo. There are times when we’ll be sitting down for a meal, and the guy next to me will start making these noises. I can only liken it to a cat bringing up a hairball from the depths of its gut. It is foul, but it happens. Don’t get me started on the nose-picking. Another thing we were taught not to do in public. But here, if you’ve got something up there, get it out. By all means necessary. That means knuckles deep, people. You’ve been warned.",
    type: 'do',
  ),
  DoDont(
    title: 'Do Use Air Asia',
    description:
        "It’s not the nicest airline you’ll ever fly, certainly not the fanciest, but Air Asia is the cheapest. It’s a low-cost carrier that dominates the region. You can fly all over Southeast Asia for pennies. Seriously. It’s rare to spend more than 100 dollar unless you’re flying further afield.",
    type: 'do',
  ),
  DoDont(
    title: 'Do eat the local food',
    description:
        "Eat at the food stalls and the hawker centers. It’s the best food you’ll eat while you are here. That’s where you’ll find the freshest and most authentic food outside of a friend’s kitchen. And it’s only a few dollars per plate. It is more common and less expensive for people to eat out than to cook at home. The stalls are cooking through their food every day. There are rarely leftovers, and stalls close when they run out of food, you know it’s being made fresh every day.",
    type: 'do',
  ),
  DoDont(
    title: 'Do learn a few words of Bahasa',
    description:
        "Since almost everyone speaks English, learning the niceties just makes you a better traveler. At the very least, learn thank you = terima kasih (pronounced ter-eema kah-say).",
    type: 'do',
  ),
  DoDont(
    title: 'Do talk slowly and use fewer words',
    description:
        "English may be the third or fourth language for some Malaysians. Understandably, they may not be fluent. So, if you are speaking with someone and having a little trouble, try speaking slower (not louder) and using fewer words. Instead of saying, “Excuse me, can you tell me how to get to the temple? Say, “Where is the temple?” I know this seems obvious, but when we first got here, we’d just start chatting away with people and then realize they have no idea what we are talking about. As soon as we slowed down and took out some words, presto-chango, we were chatting away!",
    type: 'do',
  ),
  DoDont(
    title: 'Do carry Kleenex',
    description:
        "This is a big thing to be aware of in Malaysia. Real talk! You’ll need it, and you won’t be given it here unless you buy it. You won’t get it at the food stalls. And more often than not, you won’t find it in the bathrooms. So be prepared. There is nothing worse than busting into a public toilet because you are at Defcon 1, only to realize there is no paper in the stall. You’ve already started your… erm… business. Now what? I am not the only one (and you know who you are) who has left their undies in the garbage after using them as toilet paper. It ain’t pretty people, but it happens. Take it from me. You can buy Kleenex here, you don’t need to travel with it, but make sure you get is asap. You can thank me later after you’ve saved a pair of undies.",
    type: 'do',
  ),
  DoDont(
    title: 'Do negotiate',
    description:
        "If you are staying somewhere longer than a week, negotiate. If you’re at a shop without prices, negotiate. If you are at a market (not a veggie market) but a tchotchke market, negotiate. The only rule of thumb there is DO NOT negotiate if something is less than a dollar. That just makes you look like an asshole. Take it from me – it’s coming from this asshole. I did that once in Bali. Their money has too many zeros at the end, like millions, and it totally confuses me. I once got all frustrated and thought I was being overcharged only to find out later it was .75cents! 75 cents people, I felt like such a dick! If you are uncomfortable haggling or negotiating, say something like, “Best price, lah?” Or is that the “Welcome to Malaysia price?” The lah makes you sound like you’ve been in Malaysia for a while. It’s part of the local vernacular, like how Canadians say “eh.”",
    type: 'do',
  ),
  DoDont(
    title: 'Do tread lightly',
    description:
        "If you wear your shoes indoors, what’s the dif between your home and the sidewalk? ZERO. Do not enter a home wearing your shoes. The bottoms of your shoes are filthy, and no one wants that in their homes. Do as the Asians do and take them off before you enter. The same goes for all temples and mosques, no matter the religion. It’s one of the Malaysian taboos.",
    type: 'do',
  ),
  DoDont(
    title: 'Do visit a mosque',
    description:
        "Most mosques are very traveler friendly and offer free tours. They want to educate you and are happy to share their customs and religion with you. They will provide you proper attire. Try not to go on a Friday because it is their day of prayer, and you will have limited times when you can enter the mosque.",
    type: 'do',
  ),
  DoDont(
    title: 'Do try durian',
    description:
        "You may hate it, but it’s like going to Italy and not trying the pizza. Like apples, durians have different varietals. There are Red Prawn, Musang King, D41, and Ganja (yes ganja) durians, and they all have very distinct flavor profiles. Some are more bitter, some creamier, others are sweet and taste like caramel. It all depends on the kind you choose. If you go to a durian stall and tell them what kind of flavors you like (sweet, bitter, sour), they will guide you to try a durian that is best suited to your palate. It is also good to go with a few other people so you can try different types. At most stands, you have to buy the whole durian, if you go alone, you won’t be able to taste that many. You can’t bring it back to your hotel. It is one of the things banned in Malaysian hotels because the smell can be off-putting for some foreigners.",
    type: 'do',
  ),
  DoDont(
    title: 'Do let your bank know you are traveling to Malaysia',
    description:
        "This is good advice anytime you travel, to any country. If you think ahead and let them know, you won’t have to do it from here. Because when you use a credit card here, your bank will stop the payment from going through. They always do.",
    type: 'do',
  ),
  DoDont(
    title: 'Do get used to the Yell-A-Phone',
    description:
        "Some Malaysians aren’t the quietest of people. Sometimes you’ll hear them on their cell phones before you see them. Mark coined the phrase yell-a-phone because there is always someone screaming into their cell phone unnecessarily.",
    type: 'do',
  ),
  DoDont(
    title: 'Don’t confuse the terms Malay and Malaysian',
    description:
        "Everyone who is from Malaysia is a Malaysian. But not every Malaysian is a Malay. Malays are the largest ethnic group in the country. They are Muslim and speak Bahasa Melayu as their first language. The Chinese and Indians, who came to Malaysia in the late 1700s, are Malaysians. They refer to themselves as Chinese Malaysian or Indian Malaysian. They are not Muslim, Bahasa isn’t their first language, and therefore they are not Malay.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t go there to party',
    description:
        "If you are looking for a party, look elsewhere. As a Muslim nation, however moderate it is, booze it taxed heavily here. You’ll spend more money on drinks than on your accommodations or food. If you are looking for that kind of holiday, try anywhere else in Southeast Asia, but not Malaysia. The one exception is Langkawi Island. If you want to party and drink alcohol, go there. It is a duty-free island, everything is cheap.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t take taxis – Grab yourself a ride',
    description:
        "Malaysia doesn’t use Uber, instead, we have Grab. It works the same, but you can pay cash if you want. Taxis suck, they don’t use meters, and are too expensive, so avoid them at all costs. Other than buses, Grab is the cheapest and easiest way to get around.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t shake hands with a Malay woman',
    description:
        "Man to man handshakes are common. However, if you are meeting a Muslim woman, do not reach out to shake her hand. Physical contact between members of the opposite sex is not encouraged. If she initiates the handshake, that is a different story, but generally speaking, females won’t. Also, after Muslims shake your hand, they will touch their heart meaning, I greet you from my heart. It symbolizes the connection and understanding between you.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t swap spit in public',
    description:
        "Keep the face sucking to yourself, it’s frowned upon in public. A quick peck or hand-holding is ok, but more than that will make the locals uncomfortable or feel disrespected. No Bueno.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t point with your forefinger',
    description:
        "Using your forefinger to point is considered rude, I have no idea why, but use your thumb instead. Make a loose fist, and place your thumb over the bent knuckle of your pointer finger and point away.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t Tip',
    description:
        "Tipping is not part of the culture. And Malaysia isn’t service-driven; they don’t rely on tips to make a living. Believe me when I tell you, customer service or any service for that matter, isn’t that common here. You won’t get great service at any hawker stall, but you’re not paying for it either at one dollar a plate. You’ll get better service at a fancy restaurant, but even still, no tipping is necessary. Coming from America where it is part of our culture and basically expected, it was a big change for us. When we first moved here, we left RM1 on a table and walked out. The waiter came running after us to give it back. The more tourism that Malaysia sees, the more tips are accepted. No one expects them, but they are appreciated for good service. If you round up a few cents to the beer lady for pouring your beers all night long, she’s happy. We rarely tip unless it is well deserved, and even then, it’s only a few ringgit. We also think about how hard someone is working and how much that 1RM 1/4 dollar means to us vs. them.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t get offended',
    description:
        "For some reason, asking personal questions is not considered invasive in Malaysia. When we first moved here, we were at a wine shop (priorities, people), and the wine seller asked us, “Where do you live?” A reasonable question, right? When we responded, she followed up with, “Ahhh, so expensive lah. You must make a lot of money. How much is your rent?”",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t raise your voice',
    description:
        "Malaysians are not confrontational. No matter how frustrated you are, never get elevated. It won’t go over well, and you’ll look like an ugly tourist. Take a deep breath and revisit the situation. Shouting resolves nothing here.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t do drugs',
    description:
        " No…just no. They don’t take kindly to it and have no problem punishing you for it. So, no. Don’t do it. If you use CBD or smoke weed, even if it’s legal in your country, it is def one of the things not to bring to Malaysia when you come. There has, however, been talk about legalizing it for medical use since Thailand passed that legislation in 2019. There were also chats last year about decriminalizing personal use but who knows if or when that might happen.",
    type: 'dont',
  ),
  DoDont(
    title: 'Don’t expect pork bacon',
    description:
        "That bacon you’re eating, it’s not pork. Since the majority of the population is Muslim, they don’t eat pork. Many restaurants in Malaysia are halal, which means there is no pork. It also means the meat that is served has been slaughtered in a specific way and then blessed. It is very similar to kosher meat. Unless you are in a Chinese restaurant, that bacon you are eating is beef or turkey.",
    type: 'dont',
  ),
];

List<ShoppingCard> shopCards = [
  ShoppingCard(
      title: 'AEON',
      address: 'Taman university, Skudai, Johor',
      type: 'Shapping Mall',
      distnace: '18 KM',
      priceRannge: 'Medium'),
  ShoppingCard(
      title: 'U-Mall',
      address: 'Taman pulai utama, Skudai, Johor',
      type: 'Shapping Mall',
      distnace: '18 KM',
      priceRannge: 'Low to Medium'),
  ShoppingCard(
      title: 'Eco Shop',
      address: 'Taman university, Skudai, Johor',
      type: 'Grocery Mall',
      distnace: '16 KM',
      priceRannge: 'Low to Medium'),
  ShoppingCard(
      title: 'Johor Bahru City Sqaure',
      address: 'Office Tower, Johor Bahru City Square',
      type: 'Shapping Mall',
      distnace: '18 KM',
      priceRannge: 'Medium to High'),
  ShoppingCard(
      title: 'Paradigm Mall',
      address: 'Jalan bartingkat, Skudai, Johor',
      type: 'Shapping Mall',
      distnace: '18 KM',
      priceRannge: 'Medium to High'),
  ShoppingCard(
      title: 'Shopee',
      address: 'https://shopee.com.my/',
      type: 'Online Shopping',
      distnace: '0 KM',
      priceRannge: 'Low to High'),
  ShoppingCard(
      title: 'Lazada',
      address: 'https://lazada.com.my/',
      type: 'Online Shopping',
      distnace: '0 KM',
      priceRannge: 'Low to High'),
];
