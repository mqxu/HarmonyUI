@Entry
@Component
export default struct Home {
  @State message: string = '首页'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor(Color.White)
  }
}