@Entry
@Component
struct Weather {
  @State message: string = 'Hello World'
  @State public listX: number = -120
  @State cityList: string[] = ['北京', '上海', '广州', '深圳', '成都', '武汉', '南京', '杭州', '苏州', '无锡', '天津', '平顶山', '周口', '郑州']
  @State weatherObj: object = {
    "city": "南京",
    "cityId": 111,
    "cityCode": "101260301",
    "date": "2024-06-28",
    "week": "星期五",
    "temp": "29.7",
    "tempHigh": "10",
    "tempLow": "6",
    "humidity": "100",
    "pressure": "845",
    "windSpeed": "3.5",
    "windDirect": "东风",
    "windPower": "2级",
    "updateTime": "2024-06-28 15:00:00",
    "hourly": [{
      "time": "9:00",
      "weather": "阴",
      "temp": "8",
      "img": 2
    },
      {
        "time": "10:00",
        "weather": "阴",
        "temp": "8",
        "img": 2
      },
      {
        "time": "11:00",
        "weather": "阴",
        "temp": "9",
        "img": 2
      },
      {
        "time": "12:00",
        "weather": "阴",
        "temp": "9",
        "img": 2
      },
      {
        "time": "13:00",
        "weather": "阴",
        "temp": "10",
        "img": 2
      },
      {
        "time": "14:00",
        "weather": "阴",
        "temp": "10",
        "img": 2
      },
      {
        "time": "15:00",
        "weather": "雾",
        "temp": "10",
        "img": 18
      }
    ],
    "weather": "雾",
    "img": "18"
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {

      Flex({ direction: FlexDirection.Column }) {
        Stack({ alignContent: Alignment.Top }) {
          Image('/images/weather.png')
            .width('100%')
            .height('100%')

          Flex({ direction: FlexDirection.Column }) {
            Flex({
              direction: FlexDirection.Row,
              justifyContent: FlexAlign.SpaceBetween,
              alignItems: ItemAlign.Center
            }) {
              Image('/images/set.png')
                .width(20)
                .height(20)
                .onClick(() => {
                  animateTo({ duration: 200 }, () => {
                    this.listX = 0
                  })

                })
              Text('南京')
                .fontColor(Color.White)
                .fontSize(30)
              Image('/images/search.png')
                .width(20)
                .height(20)
            }
            .margin({top:30})
            .padding({ left: 20, right: 20 })
            .width('100%')
            .height('20%')

            Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
              Text(`${this.weatherObj['temp']}` + '℃')
                .fontSize(80)
                .fontColor(Color.White)
              Text(`${this.weatherObj['weather']}` + '，' + `${this.weatherObj['windDirect']}` + `${this.weatherObj['windPower']}`)
                .fontSize(20)
                .fontColor(Color.White)
            }
            .width('100%')
            .height('60%')

            Row() {
            }
            .width('100%')
            .height('20%')
          }
          .width('100%')
          .height('100%')
        }
        .width('100%')
        .height('66%')

        Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center }) {
          Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
            Text('今日')
              .fontColor(Color.Black)
              .fontSize(25)
              .fontWeight(600)

            Text('江宁区 东山镇')
              .fontColor(Color.Black)
              .fontSize(15)

          }
          .width('100%')

          List({ space: 30 }) {
            ForEach(this.weatherObj['hourly'], (item: object) => {
              ListItem() {
                Flex({
                  direction: FlexDirection.Column,
                  justifyContent: FlexAlign.SpaceBetween,
                  alignItems: ItemAlign.Center
                }) {
                  Text(item['time'])
                    .fontColor(Color.Black)
                    .fontSize(15)
                  Image('/images/icon.png')
                    .width(40)
                    .height(40)
                    .objectFit(ImageFit.Auto)
                  Text(item['temp'])
                    .fontColor(Color.Black)
                    .fontSize(15)
                }
              }

            })

          }
          .listDirection(Axis.Horizontal)
          .margin({ top: 40 })
          .height(100)

        }
        .padding(30)
        .width('100%')
        .height('34%')

      }
      .width('100%')
      .height('100%')
      .padding(0)
      .margin(0)

      Flex({ direction: FlexDirection.Row }) {

        List() {
          ForEach(this.cityList, (item: string) => {
            ListItem() {
              Text(item)
                .fontColor(Color.Black)
                .fontSize(18)
                .width(120)
                .textAlign(TextAlign.Center)
            }
            .height(50)
            .onClick(() => {
              console.log("子组件方法")
              animateTo({ duration: 200 }, () => {
                this.listX = -120
              })
            })
          })
        }
        .backgroundColor(Color.White)
        .position({ x: this.listX, y: 0 })
        .divider({ strokeWidth: 2, color: Color.Gray, startMargin: 20, endMargin: 20 }) // 每行之间的分界线
        .width(120)
        .height('100%')

        Image('/images/add.png')
          .width(70)
          .height(70)
          .position({ x: '75%', y: '62%' })
      }

    }
    .padding(0)
    .margin(0)
  }
}

