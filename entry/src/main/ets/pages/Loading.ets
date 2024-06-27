import { LoadingDialog } from '../components/LoadingDialog'

@Entry
@Component
struct Loading {
  @State loadingTips: string = "加载中..."
  loadingDialogController: CustomDialogController = new CustomDialogController({
    builder: LoadingDialog(),
    autoCancel: false,
    customStyle: true
  })

  onPageShow() {
  }

  build() {
    Row() {
      Column() {
        Button('show')
          .fontColor(Color.White)
          .width(220)
          .height(60)
          .onClick(() => {
            this.loadingDialogController.open()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}