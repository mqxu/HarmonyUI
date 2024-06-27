@Entry
@Component
export default struct Reccuring {
  @State message: string = '发现'

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