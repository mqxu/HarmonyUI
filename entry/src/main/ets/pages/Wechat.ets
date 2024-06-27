import home from './Home/Home';
import contacts from './Contact/Contacts';
import Discover from './Discover/Discover';
import My from './My/My';


@Entry
@Component
struct Wechat {
  @State message: string = 'Hello World'
  private controller: TabsController = new TabsController()
  @State currentIndex: number = 0
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = 'rgb(0,196,104)'
  @State tabTitles: string[] = ['微信', '通讯录', '发现', '我']

  @Builder TabBuilder(index: number) {
    Column() {
      Image(this.currentIndex === index ? `/images/wetab${index}1.png` : `/images/wetab${index}0.png`)
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
        .objectFit(ImageFit.Contain)
      Text(this.tabTitles[index])
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, controller: this.controller }) {
        TabContent() {
          home()
        }.tabBar(this.TabBuilder(0))

        TabContent() {
          contacts()
        }.tabBar(this.TabBuilder(1))

        TabContent() {
          Discover()
        }.tabBar(this.TabBuilder(2))

        TabContent() {
          My()
        }.tabBar(this.TabBuilder(3))
      }
      .vertical(false)
      .barHeight(56)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      .width('100%')
      .height('100%')
      .backgroundColor('#F1F3F5')
    }
    .width('100%')
    .height('100%')

  }
}

