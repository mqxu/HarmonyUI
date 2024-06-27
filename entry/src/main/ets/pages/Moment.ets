@Observed
class MomentClass {
  public nickName: string;
  public content: string;
  public date: string;
  public showC: boolean;
  public images: string[];

  constructor(nickName: string, content: string, date: string, showC: boolean, images: string[]) {
    this.nickName = nickName;
    this.content = content;
    this.date = date;
    this.showC = showC;
    this.images = images;
  }
}

@Entry
@Component
struct Moment {
  scroller: Scroller = new Scroller()
  @State message: string = 'Hello World'
  @State navHide: boolean = true
  @State @Watch('selectIndexChanged') selectIndex: number = 0
  @State showMenuValue: boolean = false
  // @State @Watch('showPreviewChanged')  showPreviewImage:boolean = false

  @State previewAlpha: boolean = false
  @State momentList: MomentClass[] = [
    new MomentClass('张三', '零星的变得优秀，也能拼凑出星河', '8天前', false, ['/image/moment_1.png']),
    new MomentClass('张三丰', '种自己的花，爱自己的宇宙', '8天前', false, ['/image/grid_0.png', '/image/grid_1.png', '/image/grid_2.png', '/image/grid_1.png']),
    new MomentClass('张三疯', '我野蛮生长，自己便是月亮', '8天前', false, []),
    new MomentClass('张三风', '在谷底也要开花，在海底也要望月', '8天前', false, []),
    new MomentClass('张三峰', '如果自己乱成一团，没人将会成为你的答案。如果自己乱成一团，没人将会成为你的答案。如果自己乱成一团，没人将会成为你的答案。如果自己乱成一团，没人将会成为你的答案', '8天前', false, []),

  ];
  @State bigImageIndex: number = 0
  @State bigImageRowIndex: number = 0
  @State bigImageList: string[] = []

  selectIndexChanged() {
    console.log("selectIndexChanged333")
    this.configCommentMenu()
  }

  actionSheetShow() {
    ActionSheet.show({
      title: null,
      message: null,
      autoCancel: true,
      confirm: {
        value: '取消',
        action: () => {
          console.log('Get Alert Dialog handled')
        }
      },
      cancel: () => {
        console.log('actionSheet canceled')
      },
      alignment: DialogAlignment.Bottom,
      offset: { dx: 0, dy: 0 },
      sheets: [
        {
          title: '拍摄',
          action: () => {
            console.log('apples')
          }
        },
        {
          title: '从手机相册选择',
          action: () => {
            console.log('bananas')
          }
        },
      ]
    })
  }

  configCommentMenu() {
    var arr: MomentClass[] = []
    for (let i = 0; i < this.momentList.length; i++) {
      let element = this.momentList[i];
      if (i == this.selectIndex) {
        element.showC = this.showMenuValue
      } else {
        element.showC = false
      }
      arr.push(element)
    }
    this.momentList = arr;
    console.log("this.momentList:", JSON.stringify(this.momentList))
  }

  closeMenu() {
    var arr: MomentClass[] = []
    for (let i = 0; i < this.momentList.length; i++) {
      let element = this.momentList[i];
      element.showC = false
      arr.push(element)
    }
    this.momentList = arr;
  }

  @Builder NavigationMenus() { // CustomBuilder类型的菜单栏
    Row() {

      Image($r('app.media.camera_black'))
        .size({ width: 25, height: 25 })
        .margin({ left: 5 })
        .onClick(() => {
          this.actionSheetShow()
        })
      // .backgroundColor(Color.Black)
    }.justifyContent(FlexAlign.End)
  }

  @Builder NavigationTitle() {
    Row() {
      Text("朋友圈")
        .width('100')
    }
    .width('80%')

    .justifyContent(FlexAlign.Center)
  }

  build() {
    Stack({ alignContent: Alignment.Top }) {
      Navigation() {

        Stack({ alignContent: Alignment.Top }) {
          List() {
            ListItemGroup() {
              ListItem() {
                Stack({ alignContent: Alignment.BottomEnd }) {
                  Flex() {
                    Image('/image/backImage.png')
                      .width('100%')
                      .height(300)

                  }

                  Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.End, alignItems: ItemAlign.Center }) {
                    Text("陶然然")
                      .fontColor(Color.White)
                      .margin({ right: 5 })
                    Image('/image/me.png')
                      .width(70)
                      .height(70)
                      .borderRadius(8)
                  }
                  .padding({ right: 10 })
                  // .position({x:})
                  .width('100%')
                  .height(70)
                  .margin({ bottom: -20 })
                  // }

                }
                .width('100%')
                .height(300)
              }
              .width('100%')
              .height(300)
            }

            ListItemGroup({ space: 10 }) {

              ForEach(this.momentList, (item, index) => {
                ListItem() {
                  momentrow({
                    index: index,
                    selectIndex: $selectIndex,
                    showMenuValue: $showMenuValue,
                    momentItem: item,
                    imageClick: (rowIndex, index) => {
                      var b = this.momentList[rowIndex]
                      this.bigImageList = b.images

                      this.bigImageIndex = index
                      console.log("bigImageList:", this.bigImageList)

                      animateTo({ duration: 500 }, () => {
                        // 动画闭包内控制Image组件的出现和消失
                        this.previewAlpha = !this.previewAlpha;
                      })
                    }
                  })

                }

              })

            }
            .divider({ strokeWidth: 1, color: 'rgb(247,247,247)', startMargin: 0, endMargin: 0 }) // 每行之间的分界线

            .margin({ top: 30 })
          }
          .onScroll((setNumber: number, state: ScrollState) => {

            this.closeMenu()
          })
          .onItemDragEnter((ItemDragInfo) => {
            console.log('ItemDragInfo:', ItemDragInfo)
          })
          .onScrollIndex((start, end) => {
            if (start == 0 && end == 1) {
              this.navHide = true
            }
            if (start == 1 && end == 1) {
              this.navHide = false
            }

          })
          .width('100%')
          .height('100%')
          .backgroundColor(Color.White)


          Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
            Row() {
              Image($r('app.media.back_white'))
                .width(25)
                .height(25)
            }
            .justifyContent(FlexAlign.Center)
            .alignItems(VerticalAlign.Center)
            .width(50)
            .height(50)
            .margin({ left: 10 })

            Row() {
              Image($r('app.media.camera_white'))
                .width(25)
                .width(25)
                .onClick(() => {
                  this.actionSheetShow()
                })
            }
            .justifyContent(FlexAlign.Center)
            .alignItems(VerticalAlign.Center)
            .width(50)
            .height(50)
            .margin({ right: 10 })

          }
          .visibility(this.navHide ? Visibility.Visible : Visibility.Hidden)
        }
      }
      .title(this.NavigationTitle())
      .mode(NavigationMode.Stack)
      .titleMode(NavigationTitleMode.Mini)
      .hideBackButton(false)
      .menus(this.NavigationMenus())
      .size({ width: '100%', height: '100%' })
      .backgroundColor('rgb(237,237,237)')
      .hideTitleBar(this.navHide)


      if (this.previewAlpha) {
        List({ initialIndex: this.bigImageIndex }) {
          ForEach(this.bigImageList, (imagePath) => {
            ListItem() {
              Image(imagePath)
                .width('100%')
                .height('100%')
                .objectFit(ImageFit.Auto)
            }
          })

        }
        .edgeEffect(EdgeEffect.Spring)
        .listDirection(Axis.Horizontal)
        .width('100%')
        .height('100%')
        .backgroundColor(Color.Black)
        .onClick(() => {
          animateTo({ duration: 500 }, () => {
            // 动画闭包内控制Image组件的出现和消失
            this.previewAlpha = !this.previewAlpha;
          })
        })
        .transition({ type: TransitionType.Insert, translate: { x: 20, y: 20 }, scale: { x: 0, y: 0 } })
        .transition({ type: TransitionType.Delete, opacity: 0, scale: { x: 0, y: 0 } })
      }
    }

  }
}


@Component
struct momentrow {
  index: number
  @State menuWidth: number = 0.001
  @State menuX: number = 120
  @ObjectLink @Watch('onCountUpdated2') momentItem: MomentClass;
  @Link selectIndex: number
  @Link showMenuValue: boolean
  imageClick: (rowIndex, index) => void

  calcGridColum() {
    if (this.momentItem.images.length == 0) {
      return 0
    } else if (this.momentItem.images.length == 1) {
      return 200
    } else if (this.momentItem.images.length > 1 && this.momentItem.images.length <= 3) {
      return 100
    } else if (this.momentItem.images.length > 3 && this.momentItem.images.length <= 6) {
      return 200
    } else {
      return 300
    }
  }

  calcGridRow() {
    if (this.momentItem.images.length == 1) {
      return 150
    } else {
      return 300
    }
  }

  calcRowsTemplate() {
    if (this.momentItem.images.length <= 3) {
      return '1fr'
    } else if (this.momentItem.images.length > 3 && this.momentItem.images.length <= 6) {
      return '1fr 1fr'
    } else {
      return '1fr 1fr 1fr'
    }
  }

  calcColumnsTemplate() {
    if (this.momentItem.images.length <= 1) {
      return '1fr'
    } else if (this.momentItem.images.length == 2) {
      return '1fr 1fr'
    } else {
      return '1fr 1fr 1fr'
    }
  }

  onCountUpdated2(propName: string): void {
    if (this.momentItem.showC) {
      this.menuWidth = 120
      this.menuX = 0
    } else {
      this.menuWidth = 0.001
      this.menuX = 120
    }

  }

  build() {
    // Stack({alignContent:Alignment.Bottom}){
    Flex({ direction: FlexDirection.Row }) {
      Image('/image/head.png')
        .width(50)
        .height(50)
        .borderRadius(5)
        .backgroundColor(Color.Red)
        .margin({ left: 10 })

      Flex({ direction: FlexDirection.Column }) {
        Text(this.momentItem.nickName)
          .fontColor('rgb(95,105,134)')
          .fontSize(18)
          .fontWeight(700)
        Text(this.momentItem.content)
          .fontColor('rgb(30,30,30)')
          .fontSize(17)
          .margin({ top: 8 })
          .lineHeight(25)
          .width(330)

        Grid() {
          ForEach(this.momentItem.images, (imagePath: string, index: number) => {
            GridItem() {
              Image(imagePath)
                .onClick(() => {
                  this.imageClick(this.index, index)
                })
            }
          })
        }
        .columnsTemplate(this.calcColumnsTemplate())
        .rowsTemplate(this.calcRowsTemplate())
        .width(this.calcGridRow())
        .height(this.calcGridColum())
        .columnsGap(7)
        .rowsGap(7)
        .margin({ top: 5 })

        Stack({ alignContent: Alignment.End }) {
          Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
            Text(this.momentItem.date)
              .fontColor('rgb(185,185,185)')
              .fontSize(13)
            Text('••')
              .width(35)
              .height(18)
              .borderRadius(5)
              .fontSize(12)
              .fontWeight(900)
              .textAlign(TextAlign.Center)
              .fontColor('rgb(90,109,150)')
              .backgroundColor('rgb(247,247,247)')
              .onClick(() => {

                animateTo({
                  duration: 300,
                  onFinish: () => {
                    this.momentItem.showC = !this.momentItem.showC
                  }
                }, () => {
                  if (!this.momentItem.showC) {
                    this.menuX = 0
                    this.menuWidth = 120
                  } else {
                    this.menuX = 120
                    this.menuWidth = 0.001
                  }

                })

                this.selectIndex = this.index
                this.showMenuValue = this.momentItem.showC
              })
          }
          .padding({ right: 20 })
          .height(40)


          Flex({ direction: FlexDirection.Row, }) {
            Flex({ direction: FlexDirection.Row }) {
              Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
                Image($r('app.media.like'))
                  .width(18)
                  .height(18)
                Text('赞')
                  .fontColor(Color.White)
                  .fontSize(14)
                  .textAlign(TextAlign.Center)
              }
              .width(60)
              .height(40)

              Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.Center, alignItems: ItemAlign.Center }) {
                Image($r('app.media.commen'))
                  .width(18)
                  .height(18)
                Text('评论')
                  .fontColor(Color.White)
                  .fontSize(14)
                  .textAlign(TextAlign.Center)
              }
              .width(60)
              .height(40)

            }
            .borderRadius(4)
            .width(this.menuWidth)
            .height(40)
            .position({ x: this.menuX })
            .backgroundColor('rgb(22,22,22)')

          }
          .margin({ right: 60 })
          .width(120)
          .height(40)

        }
        .height(40)
      }
      .margin({ left: 10 })

    }
  }
}

