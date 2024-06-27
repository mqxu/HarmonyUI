@Entry
@Component
export default  struct Discover {
  @State message: string = 'Hello World'

  @Builder NavigationTitle() {
    Row(){
      Text("发现")
        .width('100')
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }

  build() {
    Navigation(){
      List({space:10}){
        ListItemGroup(){
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_0'),titleString:'朋友圈'})
          }
          .backgroundColor(Color.White)
        }
        ListItemGroup(){
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_1'),titleString:'直播'})
          }
          .backgroundColor(Color.White)
        }
        ListItemGroup(){
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_2'),titleString:'扫一扫'})
          }
          .backgroundColor(Color.White)
        }
        ListItemGroup(){
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_3'),titleString:'看一看'})

          }
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_4'),titleString:'搜一搜'})

          }

        }
        .divider({ strokeWidth: 1, color: 'rgb(247,247,247)', startMargin: 0, endMargin: 0 }) // 每行之间的分界线
        .backgroundColor(Color.White)

        ListItemGroup(){
          ListItem(){
            DiscoverRow({imagePath:$r('app.media.discover_5'),titleString:'小程序'})
          }
          .backgroundColor(Color.White)
        }

      }
      .backgroundColor('rgb(237,237,237)')
    }
    .title(this.NavigationTitle())
    .mode(NavigationMode.Stack)
    .titleMode(NavigationTitleMode.Mini)
    .hideBackButton(true)
    // .menus(this.NavigationMenus())
    .size({ width: '100%', height: '100%' })
    .backgroundColor('rgb(237,237,237)')
  }
}

@Component
export  struct DiscoverRow {

  imagePath:Resource
  titleString:string
  build(){
    Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.SpaceBetween,alignItems:ItemAlign.Center}){
      Flex({direction:FlexDirection.Row,alignItems:ItemAlign.Center}){
        Image(this.imagePath)
          .width(22)
          .height(22)
        Text(this.titleString)
          .fontSize(17)
          .margin({left:10})
      }
      .height(50)

      Image($r('app.media.arrow_right'))
        .width(20)
        .height(20)

    }
    .height(50)
    .padding({left:12,right:12})
  }
}