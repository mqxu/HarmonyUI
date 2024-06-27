@Entry
@Component
struct QQ {
  @State message: string = 'Hello World'
  // scroller: Scroller = new Scroller()
  private controller: TabsController = new TabsController()

  // private swiperController: SwiperController = new SwiperController();
  // private titleSwiper: SwiperController = new SwiperController();
  // @State screen_width:number = display.getDefaultDisplaySync().width
  @State screen_width: number = 350
  @State currentIndex: number = 0
  @State selectColor: string = 'rgb(0,147,255)'
  @State dividerX: number = (this.screen_width / 6 - 40) / 2

  onPageShow() {
  }

  @Builder NavigationMenus() {
    Row() {
      Image($r('app.media.menu_add'))
        .size({ width: 24, height: 24 })
        .onClick(() => {
        })
    }
    .justifyContent(FlexAlign.End)
    .width('100%')
    .height('100%')
  }

  @Builder NavigationTitle() {
    Row() {
      Text("联系人")
        .width('100')
        .fontSize(18)
        .fontColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }

  @Builder TabTextBuilder(text: string, index: number) {
    Column() {
      Text(text)
        .fontSize(this.currentIndex === index ? 18 : 16)
        .fontColor(this.currentIndex === index ? this.selectColor : '#888')
        .fontWeight(this.currentIndex === index ? 800 : 400)


      Divider()
        .strokeWidth(5)
        .color(this.selectColor)
        .opacity(this.currentIndex === index ? 1 : 0)
        .width(40)
        .lineCap(LineCapStyle.Round)

    }
    .width('101%') //解决Tab连接处白色线条间隙
    .height(45)
    .backgroundColor(Color.White)
    .justifyContent(FlexAlign.Center)

  }

  build() {
    Navigation() {

      List({ space: 10 }) {
        ListItemGroup() {
          ListItem() {
            Flex({
              direction: FlexDirection.Row,
              justifyContent: FlexAlign.SpaceBetween,
              alignItems: ItemAlign.Center
            }) {
              Text("新的朋友")
                .fontColor('rgb(74,74,74)')
                .fontSize(16)
                .margin({ left: 12 })
              Image($r('app.media.arrow_right'))
                .width(8)
                .height(13)
                .margin({ right: 12 })
            }
            .height(50)
          }

          ListItem() {
            Flex({
              direction: FlexDirection.Row,
              justifyContent: FlexAlign.SpaceBetween,
              alignItems: ItemAlign.Center
            }) {
              Text("群通知")
                .fontColor('rgb(74,74,74)')
                .fontSize(16)
                .margin({ left: 12 })
              Image($r('app.media.arrow_right'))
                .width(8)
                .height(13)
                .margin({ right: 12 })
            }
            .height(50)
          }
        }
        .divider({ strokeWidth: 2, color: 'rgb(247,247,247)', startMargin: 12, endMargin: 0 }) // 每行之间的分界线
        .backgroundColor(Color.White)
        //
        ListItemGroup() {
          ListItem() {
            Tabs({ index: this.currentIndex, controller: this.controller }) {
              TabContent() {
                listPage()
              }
              .tabBar(this.TabTextBuilder('好友', 0))

              TabContent() {
                Text('分组')
              }
              .tabBar(this.TabTextBuilder('分组', 1))

              TabContent() {
                Text('群聊')
              }
              .tabBar(this.TabTextBuilder('群聊', 2))

              TabContent() {
                Text('设备')
              }
              .tabBar(this.TabTextBuilder('设备', 3))

              TabContent() {
                Text('通讯录')
              }
              .tabBar(this.TabTextBuilder('通讯录', 4))

              TabContent() {
                Text('订阅号')
              }
              .tabBar(this.TabTextBuilder('订阅号', 5))
            }
            .backgroundColor('rgb(247,247,247)')
            .onChange((index: number) => {
              this.currentIndex = index
            })
            .barWidth('100%')
            .barHeight(45)
            .width('100%')
            .height('100%')
            .scrollable(true)
          }
        }

      }
      .backgroundColor('rgb(247,247,247)')

    }
    .title(this.NavigationTitle())
    .mode(NavigationMode.Stack)
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    .menus(this.NavigationMenus())
    .size({ width: '100%', height: '100%' })
    .backgroundColor(this.selectColor)

    // .backgroundColor('rgb(247,247,247)')
  }
}


@Component
struct listPage {
  @State expands: number[] = []
  @State screen_width: number = 350

  aboutToAppear() {
    for (let index = 0; index < this.data.length; index++) {
      this.expands.push(0)
    }
  }

  @State data: Object[] = [
    {
      groupName: '我的好友',
      list: [
        {
          name: '张三'
        },
        {
          name: '张四'
        },
        {
          name: '张五'
        },

      ]
    },
    {
      groupName: '同学',
      list: [
        {
          name: '李三'
        },
        {
          name: '李四'
        },
        {
          name: '李五'
        },

      ]
    }
  ]

  @Builder itemHead(text: string, index: number) {
    Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
      Image(this.expands[index] == 1 ? $r('app.media.down') : $r('app.media.right'))
        .width(16)
        .height(16)
        .margin({ left: 5 })
      Text(text)
        .fontSize(17)
        .backgroundColor(Color.White)
        .width("100%")
        .padding(3)
    }
    .backgroundColor(Color.White)
    .height(40)
    .onClick(() => {
      if (this.expands[index] == 0) {
        this.expands[index] = 1
      } else {
        this.expands[index] = 0
      }
      console.log("expans:", this.expands, index)
    })

  }

  build() {
    List() {
      ForEach(this.data, (object, index) => {
        ListItemGroup({ header: this.itemHead(object.groupName, index) }) {
          ForEach(this.expands[index] == 1 ? object.list : [], (item, i) => {
            ListItem() {
              Flex({ direction: FlexDirection.Row, alignItems: ItemAlign.Center }) {
                Image($r('app.media.headicon1'))
                  .width(40)
                  .height(40)
                  .borderRadius(20)
                  .margin({ left: 8 })
                Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center }) {
                  Text(item.name)
                    .fontColor(Color.Gray)
                    .fontSize(17)
                  Text('[在线]记忆它总是慢慢的累积！！')
                }
                .margin({ left: 5 })
              }
              .height(60)
              .backgroundColor(Color.White)
            }
          })

        }
      })

    }
    .width(this.screen_width)
    .height('100%')
  }
}