import router from '@ohos.router'

@Entry
@Component
export default struct Home {
  @State index: number = 0
  @State menuOpacity: number = 0

  onPageHide() {
    this.menuOpacity = 0
  }

  @Builder NavigationMenus() {
    Row() {
      Image('/images/we_add.png')
        .size({ width: 24, height: 24 })
        .margin({ left: 5 })
        .onClick(() => {
          animateTo({
            duration: 200,
          }, () => {
            if (this.menuOpacity == 0) {
              this.menuOpacity = 1
            } else if (this.menuOpacity == 1) {
              this.menuOpacity = 0
            }

          })
        })
    }.justifyContent(FlexAlign.End)
  }

  @Builder NavigationTitle() {
    Row() {
      Text("微信")
        .width('100')
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Column() {
      Navigation() {

        Stack({ alignContent: Alignment.TopEnd }) {

          Column() {
            TextInput({ placeholder: '搜索' })
              .width('92%')
              .height(40)
              .backgroundColor(Color.White)
              .margin(0)
              .borderRadius(5)
              .textAlign(TextAlign.Center)

            List() {

              ListItem() {
                MessageRow({
                  imagePath: '/images/icon1.png',
                  nickName: '张三',
                  messageContent: '彼岸花开，开到荼蘼',
                  messageTime: '12:13'
                })
              }
              .onClick(() => {
                router.pushUrl({ url: 'pages/Home/Chat' })
              })

              ListItem() {
                MessageRow({
                  imagePath: '/images/icon2.png',
                  nickName: '张三丰',
                  messageContent: '欢迎关注鸿蒙开发公众号',
                  messageTime: '12:13'
                })
              }
              .onClick(() => {
                router.pushUrl({ url: 'pages/Home/Chat' })
              })

              ListItem() {
                MessageRow({
                  imagePath: '/images/icon3.png',
                  nickName: '张三疯',
                  messageContent: '你猜这是为什么',
                  messageTime: '12:13'
                })
              }
              .onClick(() => {
                router.pushUrl({ url: 'pages/Home/Chat' })
              })

            }
            .divider({ strokeWidth: 2, color: 'rgb(247,247,247)', startMargin: 60, endMargin: 0 }) // 每行之间的分界线
            .margin({ top: 17 })
            .padding({ left: 17, right: 17 })
            .backgroundColor(Color.White)
            .height('100%')
          }

          Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center }) {
            Path()
              .width(20)
              .height(20)
              .commands('M25 0 L50 50 L0 50 Z')
              .fill('rgb(76,76,76)')
              .stroke('rgb(76,76,76)')
              .padding(0)
              .margin(0)
              .position({ x: 95, y: 0 })

            List() {
              ListItem() {
                MenuRow({ imagePath: '/images/menu_group.png', titleString: '发起群聊' })
              }

              ListItem() {
                MenuRow({ imagePath: '/images/menu_add.png', titleString: '添加朋友' })
              }

              ListItem() {
                MenuRow({ imagePath: '/images/menu_scan.png', titleString: '扫一扫' })
              }

              ListItem() {
                MenuRow({ imagePath: '/images/menu_purchase.png', titleString: '收付款' })
              }
            }
            .margin(0)
            .borderRadius(5)

            .padding({ left: 12 })
            .divider({ strokeWidth: 1, color: 'rgb(130,130,130)', startMargin: 20, endMargin: 0 }) // 每行之间的分界线
            .backgroundColor('rgb(76,76,76)')
            .width(130)
            .height(180)

          }
          .opacity(this.menuOpacity)
          .width(130)
          .height(200)
          .margin({ right: 10, top: -10 })
        }

      }
      .title(this.NavigationTitle())
      .mode(NavigationMode.Stack)
      .titleMode(NavigationTitleMode.Mini)
      .hideBackButton(true)
      .menus(this.NavigationMenus())
      .size({ width: '100%', height: '100%' })
      .backgroundColor('rgb(237,237,237)')
    }
    .width('100%')
    .height('100%')
  }
}

@Component
struct MenuRow {
  imagePath: string
  titleString: string

  build() {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
      Image(this.imagePath)
        .width(21)
        .height(21)

      Text(this.titleString)
        .fontColor(Color.White)
        .fontSize(18)
        .margin({ left: 8 })
    }
    .height(45)
  }
}

@Component
struct MessageRow {
  imagePath: string
  nickName: string
  messageTime: string
  messageContent: string

  build() {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
      Image(this.imagePath)
        .width(60)
        .height(60)
        .borderRadius(5)
      Flex({ direction: FlexDirection.Column }) {
        Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
          Text(this.nickName)
            .fontColor('rgb(15,15,15)')
            .fontSize(20)

          Text(this.messageTime)
            .fontColor('rgb(210,210,210)')
            .fontSize(13)
        }

        Text(this.messageContent)
          .fontColor('rgb(190,190,190)')
          .fontSize(17)
          .margin({ top: 10 })
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)


      }
      .height(55)
      .margin({ left: 10 })
    }
    .height(80)
  }
}