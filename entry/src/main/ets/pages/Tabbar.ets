import home from './Home'
import goals from './Goals'
import reccuring from './Reccuring'
import more from './More'

import { YLTabbar } from './YLTab/YLTabbar'

import display from '@ohos.display';


@Entry
@Component
struct Tabbar {
  @State message: string = 'Hello World'
  private tabsController: TabsController = new TabsController()
  @State currentIndex: number = 0;
  @State screen_height: number = px2vp(display.getDefaultDisplaySync().height)
  scroller: Scroller = new Scroller()

  build() {
    Column() {

      Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
        TabContent() {
          home()
        }

        TabContent() {
          goals()
        }

        TabContent() {
          reccuring()
        }

        TabContent() {
          more()
        }
      }
      .vertical(false)
      .backgroundColor('#F1F3F5')
      .barHeight(0)
      .onChange((index) => {
        this.currentIndex = index
      })
      .height('92%')

      YLTabbar({ tabItemClick: (index) => {
        console.log('tabbarIndex:', index);
        this.currentIndex = index
        if (index != 2) {
          if (index > 1) {
            this.currentIndex = index - 1
          }
          this.tabsController.changeIndex(this.currentIndex)
        }

      } })
        .backgroundColor('#F1F3F5')

    }
    .height('100%')
    .justifyContent(FlexAlign.SpaceBetween)
    .backgroundColor(Color.White)

  }
}


// Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
//   TabContent() {
//     home()
//   }.tabBar(this.TabBuilder('首页', 0))
//
//   TabContent() {
//     goal()
//   }.tabBar(this.TabBuilder('发现', 1))
//
//   TabContent() {
//     reccuring()
//   }.tabBar(this.TabBuilder('推荐', 2))
//
//   TabContent() {
//     more()
//   }
//   .tabBar(this.TabBuilder('我的', 3))
// }
// .vertical(false)
// .backgroundColor('#F1F3F5')
// .barHeight(56)
// .onChange((index) => {
//   this.currentIndex = index
// })