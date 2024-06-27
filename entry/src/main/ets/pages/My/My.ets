import contantrow, { DiscoverRow } from '../Discover/Discover'

@Entry
@Component
export default struct My {
  @State message: string = 'Hello World'

  build() {
    Navigation() {
      List({ space: 10 }) {
        ListItemGroup() {
          ListItem() {
            Flex({ direction: FlexDirection.Column }) {
              Flex({
                direction: FlexDirection.Row,
                justifyContent: FlexAlign.SpaceBetween,
                alignItems: ItemAlign.Center
              }) {
                Flex({ direction: FlexDirection.Row }) {
                  Image('/images/me.png')
                    .width(65)
                    .height(65)
                    .borderRadius(8)

                  Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.Center }) {
                    Text('陶然然')
                      .fontSize(19)
                      .fontWeight(700)
                    Text('微信号：InfinityX7')
                      .fontSize(17)
                      .fontColor(Color.Gray)
                      .margin({ top: 13 })
                  }
                  .height(65)
                  .margin({ left: 15 })
                }


                Image($r('app.media.arrow_right'))
                  .width(20)
                  .height(20)
                // .margin({top:30})
              }

              Button('+ 状态')
                .fontColor(Color.Gray)
                .margin({ left: 80, top: 5 })
                .width(70)
                .height(30)
                .borderWidth(1)
                .borderColor('rgb(237,237,237)')
                .backgroundColor(Color.White)
            }

          }
          .backgroundColor(Color.White)
          .padding({ left: 20, right: 15, bottom: 20 })

        }

        ListItemGroup() {
          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_service'), titleString: '服务' })
          }
        }
        .backgroundColor(Color.White)

        ListItemGroup() {
          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_collect'), titleString: '收藏' })
          }

          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_moment'), titleString: '朋友圈' })
          }

          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_card'), titleString: '卡包' })
          }

          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_emoj'), titleString: '表情' })
          }
        }
        .backgroundColor(Color.White)

        ListItemGroup() {
          ListItem() {
            DiscoverRow({ imagePath: $r('app.media.my_set'), titleString: '设置' })
          }
        }
        .backgroundColor(Color.White)

      }
      .height('100%')
      .backgroundColor('rgb(237,237,237)')
    }
    .backgroundColor(Color.White)
  }
}