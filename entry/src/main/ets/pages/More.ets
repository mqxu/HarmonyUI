@Entry
@Component
export default struct More {
  @State message: string = '我的'

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