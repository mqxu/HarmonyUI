import router from '@ohos.router'

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column({ space: 10 }) {
        Button('天气预报')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Weather'
            })
          })
        Button('抽奖')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Lottery'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}