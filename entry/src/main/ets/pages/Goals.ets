@Entry
@Component
export default  struct Goals {
  @State message: string = '行程'

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