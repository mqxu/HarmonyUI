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
        Button('菜谱')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Cook'
            })
          })
        Button('弹窗')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Loading'
            })
          })
        Button('朋友圈')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Loading'
            })
          })
        Button('Tabbar')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Tabbar'
            })
          })
        Button('仿微信')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Wechat'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}