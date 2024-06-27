@Entry
@Component
struct Cook {
  private cooks = [{
    "id": 8,
    "classid": 2,
    "name": "醋溜白菜",
    "peoplenum": "1-2人",
    "preparetime": "10-20分钟",
    "cookingtime": "10-20分钟",
    "content": "醋溜白菜，是北方人经常吃的一道菜，尤其是在多年前的冬天。那时，没有大棚菜，冬天，家家每天佐餐的基本上都是冬储大白菜，聪明的家庭主妇总是想方设法将这单调的菜变成多种菜式，于是，醋溜白菜被频繁的端上餐桌。<br />美食不分贵贱，用最平凡的原料、最简单的调料和最普通的手法做出美味的菜肴来才是美食的真谛。 <br />这次，我做的醋溜白菜，近似鲁菜的做法，使个这道菜酸甜浓郁、开胃下饭、老少咸宜。",
    "pic": "/images/cook1.jpg",
    "tag": "减肥,家常菜,排毒,补钙"
  }, {
    "id": 96,
    "classid": 2,
    "name": "醋熘白菜",
    "peoplenum": "1-2人",
    "preparetime": "10分钟内",
    "cookingtime": "10分钟内",
    "content": "大白菜是过去物资匮乏年代冬天里的当家菜，虽然现在冬天蔬菜品种一点也不少了，但是人们一到冬天就不自觉的习惯性的要储存几颗，至少下雪刮大风出不去门的话家里有菜也不着急没得吃。我家离早市非常近，所以我不储存，但是我家冬天也不少吃白菜，无论炒着吃做包子饺子馅儿都很爱吃，尤其我家老公更是说每天吃炖白菜也不会腻烦，嘿嘿。一般我把白菜分三部分吃，最外面的几片留起来做馅儿吃，然后里面的部分叶子做汤，帮子就做醋熘白菜或者炒白菜丝，一点不浪费吧，哈哈。",
    "pic": "/images/cook2.jpg",
    "tag": "下饭菜,减肥,开胃,补钙"
  }, {
    "id": 215,
    "classid": 3,
    "name": "开水白菜",
    "peoplenum": "1-2人",
    "preparetime": "10分钟内",
    "cookingtime": "10-20分钟",
    "content": "开水白菜是四川传统名菜，原系川菜名厨黄敬临在清宫御膳房时创制。后来黄敬临将此菜制法带回四川，广为流传。30多年前，川菜大师罗国荣调来北京饭店掌厨，又将“开水白菜”的烹调技术带回北京，从而成为北京饭店高档筵席上的一味佳肴。<br />千万别以为“开水”就是“白开水”， 开水白菜名说开水，实则是巧用清汤，其关键在于吊汤，汤要味浓而清，清如开水一般，成菜乍看如清水泡着几棵白菜心，一星油花也不见，但吃在嘴里，清鲜淡雅，香味浓醇，汤味浓厚，不油不腻，却清香爽口。<br />因为汤清澈见底，视之如开水，故名之“开水白菜”。",
    "pic": "/images/cook3.jpg",
    "tag": "健脾,家常菜,排毒,瘦身"
  }, {
    "id": 449,
    "classid": 3,
    "name": "冬笋丝炒咸白菜",
    "peoplenum": "3-4人",
    "preparetime": "10分钟内",
    "cookingtime": "10分钟内",
    "content": "哥哥腌制的咸白菜，没有等到变色我就嚷嚷要吃了，哥哥就给了一点，叫我先拿着吃，等几天再去拿，喜欢自家腌制的咸白菜，买的好咸受不了，咸白菜配冬笋和红萝卜一起烹制的，真的好鲜美，有了它，早上会多喝一碗粥呢。",
    "pic": "/images/cook4.jpg",
    "tag": "冬季,炒,私房菜,减肥,瘦身,肥胖",
  }, {
    "id": 526,
    "classid": 3,
    "name": "香菇冬笋炒白菜梗",
    "peoplenum": "1-2人",
    "preparetime": "10-20分钟",
    "cookingtime": "10-20分钟",
    "content": "一天，突然想把白菜的菜叶与菜梗分别做汤和炒蔬菜，白菜叶直接放入肉汤煮，白菜梗做了一道炒蔬，拿出前一天留下的香菇与冬笋，再泡些黑木耳，一道制作非常简单，吃口却是鲜美爽脆的香菇冬笋炒白菜梗出炉了，其实这道菜也是因为我懒得去买菜而凑合出来的。",
    "pic": "/images/cook5.jpg",
    "tag": "冬季,家常菜,晚餐,炒锅,瘦身"
  }, {
    "id": 631,
    "classid": 4,
    "name": "腊肠炒金针蘑白菜",
    "peoplenum": "1-2人",
    "preparetime": "10-20分钟",
    "cookingtime": "10分钟内",
    "content": "金针菇中含锌量比较高，有促进儿童智力发育和健脑的作用，在许多国家被誉为“益智菇”和“增智菇”。（来源于网络）",
    "pic": "/images/cook6.jpg",
    "tag": "家常菜,通乳,排毒,特禀质,骨质疏松,咸香,10分钟内,炒,动脉硬化,孕妇,青少年,老人,白领,便秘,健忘,晚餐,冬季,营养,增强抵抗力,消脂,补钙,提高免疫力,全菜系,1-2人,益智,待客菜,健脑益智,健脑,催乳,下奶,增强记忆力,炒锅,抗过敏",
  }, {
    "id": 732,
    "classid": 5,
    "name": "大白菜黄豆煲猪蹄",
    "peoplenum": "1-2人",
    "preparetime": "10-20分钟",
    "cookingtime": "1-2小时",
    "content": "冬季养生滋补，一般都会用煲汤来补身。<br />各种营养食材根据其特有的效果在一起煲汤，给我们的身体增加营补给。<br />我家每天中午都会煲汤，根据季节的变换换着花样。<br />猪蹄汤既营养又滋补，而且不会油腻，是我家大小都爱的，这道汤适合冬季滋补，加入一些黄豆和冬季当家菜大白菜，可补充身体的蛋白质和钙质，即滋补又能美容。",
    "pic": "/images/cook7.jpg",
    "tag": "汤,丰胸,催乳,通乳,下奶,乳腺增生,内分泌失调"
  }]

  build() {
    Column() {
      List({ space: 10 }) {
        ForEach(this.cooks, (item) => {
          ListItem() {
            Flex({ direction: FlexDirection.Row }) {
              Image(`${item["pic"]}`)
                .width(120)
                .height(100)
                .objectFit(ImageFit.Fill)
                .borderRadius(5.0) //圆角需要float类型

              Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
                Flex({ direction: FlexDirection.Column }) {
                  Text(`${item['name']}`)
                    .fontSize(18)
                    .fontColor(Color.Black)
                    .textAlign(TextAlign.Start)
                  Text(`${item['content']}}`)
                    .fontColor(Color.Gray)
                    .fontSize(15)
                    .maxLines(2)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                }

                Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
                  Text(`${item['cookingtime']}`)
                    .fontSize(13)
                    .fontColor(Color.Gray)
                    .textAlign(TextAlign.Start)

                  Button("查看")
                    .fontSize('14fp')
                    .height(26)
                    .width(60)
                }
              }
              .margin({ left: 10 })
              .height(100)
            }
            .padding({ left: 10, right: 10 })
          }
        })
      }
    }.padding('10rp')
  }
}