import { YLTabClass } from './YLTabCLass'
import { YLTabbarItem } from './YLTabbarItem'

@Component
export struct YLTabbar {
  tabItemClick: (index) => void
  @State currentIndex: number = 0
  tab: YLTabClass[] = [
    new YLTabClass($r('app.media.tb01'), $r('app.media.tb00'), '首页'),
    new YLTabClass($r('app.media.tb11'), $r('app.media.tb10'), '行程'),
    new YLTabClass($r('app.media.tab_add'), $r('app.media.tab_add'), '', true),
    new YLTabClass($r('app.media.tb21'), $r('app.media.tb20'), '发现'),
    new YLTabClass($r('app.media.tb31'), $r('app.media.tb30'), '我的'),
  ]

  build() {
    Flex() {
      ForEach(this.tab, (item, index: number) => {
        YLTabbarItem({ tabItem: item, isSelected: this.currentIndex === index })
          .offset({ x: item.x, y: item.middleMode ? -25 : 0 })
          .onClick(() => {
            if (index != 2) {
              this.currentIndex = index
            }
            console.log(index + "" + this.currentIndex);
            this.tabItemClick(index);
          })
      })
    }
  }
}