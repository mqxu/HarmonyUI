@Entry
@Component
struct Lottery {
  @Builder NavigationTitle() {
    Row() {
      Text("新年回馈大奖拿不停")
        .width(200)
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Navigation() {
      List({ space: 20 }) {
        ListItemGroup() {
          ListItem() {
            Stack({ alignContent: Alignment.Top }) {
              Image($r('app.media.title_back'))
                .width('100%')
                .height(300)

              Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
                List({ space: 10 }) {
                  ListItem() {
                    bannerListRow()
                  }
                  .width('100%')

                  ListItem() {
                    bannerListRow()
                  }
                  .width('100%')

                }
                .margin({ left: 15, top: 150 })
                .width('50%')
                .height(80)

                Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End }) {
                  Stack({ alignContent: Alignment.Center }) {
                    Row() {
                    }
                    .width(42)
                    .height(20)
                    .backgroundColor('#3E3E3E')
                    .opacity(0.7)
                    .borderRadius({ topLeft: 10, bottomLeft: 10 })

                    Text('规则')
                      .fontColor(Color.White)
                      .fontSize(14)
                  }
                  .margin({ top: 15 })


                  Text('我的奖品')
                    .backgroundColor('#FFD8A3')
                    .fontColor('#AE5A19')
                    .fontSize(15)
                    .width(24)
                    .height(78)
                    .textAlign(TextAlign.Center)
                    .borderRadius({ topLeft: 10, bottomLeft: 10 })
                    .margin({ top: 85 })
                }
              }
              .width('100%')
              .height('100%')
            }
          }
        }
        .width('100%')
        .height(300)

        ListItemGroup({ space: 15 }) {
          ListItem() {
            contentList0()
          }
          .height(58)
          .backgroundColor('#B41B23')

          ListItem() {
            contentList1()
          }
          .padding({ left: 12, right: 12, bottom: 10 })
          .height(88)

          ListItem() {
            contentList2()
          }
          .padding({ left: 12, right: 12, bottom: 10 })
          .height(88)

          ListItem() {
            Text('购买999大礼包享抽奖机会')
              .fontColor('#B67217')
              .fontSize(20)
              .textAlign(TextAlign.Center)
              .width('100%')
              .height(48)
              .borderWidth(1)
              .borderColor('#B67217')
              .borderRadius(24)
          }
          .padding(8)

        }
        .margin({ left: '5%' })
        .width('90%')
        .height(200)
        .backgroundColor(Color.White)
        .borderRadius({ bottomLeft: 10, bottomRight: 10 })

        ListItemGroup({ space: 15 }) {
          ListItem() {
            contentList0()
          }
          .height(58)
          .backgroundColor('#B41B23')

          ListItem() {
            contentList1()
          }
          .padding({ left: 12, right: 12, bottom: 10 })
          .height(88)

          ListItem() {
            contentList2()
          }
          .padding({ left: 12, right: 12, bottom: 10 })
          .height(88)

          ListItem() {
            Text('购买999大礼包享抽奖机会')
              .fontColor('#B67217')
              .fontSize(20)
              .textAlign(TextAlign.Center)
              .width('100%')
              .height(48)
              .borderWidth(1)
              .borderColor('#B67217')
              .borderRadius(24)
          }
          .padding(8)

        }
        .margin({ left: '5%' })
        .width('90%')
        .height(200)
        .backgroundColor(Color.White)
        .borderRadius({ bottomLeft: 10, bottomRight: 10 })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#B41B23')

    }
    .title(this.NavigationTitle())
    .mode(NavigationMode.Stack)
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)

  }
}

@Component
struct bannerListRow {
  build() {
    Stack({ alignContent: Alignment.TopStart }) {
      Row() {

      }
      .width('100%')
      .height(30)
      .backgroundColor(Color.Black)
      .opacity(0.5)
      .borderRadius(15)

      Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {

        Image($r('app.media.headicon'))
          .width(24)
          .height(24)
          .borderRadius(12)

        Text('会飞的鱼抽中华为手机')
          .fontColor(Color.White)
          .fontSize(15)
          .margin({ left: 8 })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
      }
      .width('100%')
      .height(30)
    }
  }
}

@Component
struct contentList1 {
  build() {
    Flex({ direction: FlexDirection.Row }) {

      Stack({ alignContent: Alignment.TopStart }) {
        Image($r('app.media.product_1'))
          .objectFit(ImageFit.ScaleDown)
          .width(88)
          .height(88)

        Image($r('app.media.stackLogo_1'))
          .width(64)
          .height(54)
      }
      .width(88)
      .height(88)


      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        Flex({ direction: FlexDirection.Column }) {
          Text('宝马汽车')
            .fontSize(16)
            .fontColor('#333333')

          Row() {
            Row() {

            }
            .width('50%')
            .height(8)
            .borderRadius(7.5)
            .linearGradient({
              direction: GradientDirection.Right, // 渐变方向
              repeating: false, // 渐变颜色是否重复
              colors: [[0xFF7229, 0.0], [0xFF4608, 1.0]], // 数组末尾元素占比小于1时满足重复着色效果
            })
          }
          .width(200)
          .height(8)
          .backgroundColor('rgb(238,238,238)')
          .borderRadius(7.5)
          .margin({ top: 5 })

          Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
            Text('总需999人次')
              .fontColor('#999999')
              .fontSize(14)
            Text('剩余100人次')
              .fontColor('#999999')
              .fontSize(14)
          }.margin({ top: 5 })
        }

        Text('第999人次直接获得')
          .fontColor("#666666")
          .fontSize(15)
        // .height(20)
        // .margin({bottom:5})
      }
      .margin({ left: 10 })

    }
  }
}

@Component
struct contentList0 {
  build() {
    Stack() {
      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.End }) {
        Row() {

        }
        .height('50%')
        .width('100%')
        .backgroundColor(Color.White)
        .borderRadius({ topLeft: 10, topRight: 10 })
      }

      Stack({ alignContent: Alignment.Center }) {
        Image($r('app.media.head_img'))
          .width(140)
          .height(58)

        Text('¥2000')
          .fontSize(20)
          .fontWeight(700)
          .fontColor("#FFECCB")
          .margin({ top: 22 })
      }
    }
  }
}

@Component
struct contentList2 {
  build() {
    Flex({ direction: FlexDirection.Row }) {

      Stack({ alignContent: Alignment.TopStart }) {
        Image($r('app.media.product_2'))
          .objectFit(ImageFit.ScaleDown)
          .width(88)
          .height(88)

        Image($r('app.media.stackLogo_2'))
          .width(64)
          .height(54)
      }
      .width(88)
      .height(88)


      Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceBetween }) {
        Flex({ direction: FlexDirection.Column }) {
          Text('购买999大礼包享抽奖机会')
            .fontSize(16)
            .fontColor('#333333')


          Flex({ direction: FlexDirection.Row }) {
            Text('您有')
              .fontColor('#999999')
              .fontSize(16)
            Text('10')
              .fontColor(Color.Red)
              .fontSize(16)
            Text('次抽奖机会')
              .fontColor('#999999')
              .fontSize(16)
          }
          .margin({ top: 5 })
        }

        Text('直接抽奖')
          .fontColor(Color.White)
          .width(88)
          .height(24)
          .borderRadius(12)
          .backgroundColor(Color.Red)
          .textAlign(TextAlign.Center)


      }
      .margin({ left: 15 })
    }
  }
}