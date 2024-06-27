@CustomDialog
export struct LoadingDialog {
  controller: CustomDialogController

  build() {
    Stack() {
      Column() {
        Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceBetween }) {
          Text('用户隐私保护提示')
            .fontColor(Color.White)
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .height(52)

          Row() {
            Image($r('app.media.img'))
              .width(68)
              .height(52)
              .margin({ right: 5 })

            Image($r('app.media.close_img'))
              .width(20)
              .height(20)
              .onClick(() => {
                this.controller.close()
              })

          }
          .height(52)
          .alignItems(VerticalAlign.Top)

        }
        .padding({ top: 18, left: 12, right: 12 })
        .width(303)
        .height(70)
        .backgroundColor(Color.Green)
        .borderRadius({ topLeft: 4, topRight: 5 })

        Text('感谢您使用本小程序，您使用前应当阅读并同意《用户隐私保护指引》当您点击同意并继续使用该服务时，即表示您已理解并同意该条款内容。')
          .fontColor('#4a4a4a')
          .fontSize(17)
          .lineHeight(25)
          .margin({ top: 30 })

        Text('同意')
          .width(240)
          .height(40)
          .backgroundColor('#50B452')
          .textAlign(TextAlign.Center)
          .fontColor(Color.White)
          .borderRadius(5)
          .margin({ top: 30 })
          .onClick(() => {
            this.controller.close()
          })

        Text('拒绝')
          .width(240)
          .height(40)
          .backgroundColor('#F7F7F7')
          .textAlign(TextAlign.Center)
          .fontColor('#4a4a4a')
          .borderRadius(5)
          .margin({ top: 20 })
          .onClick(() => {
            this.controller.close()
          })
      }
      .padding({ left: 12, right: 12 })
      .width(303)
      .height(353)
      .backgroundColor($r('app.color.color_white'))
      .borderRadius(5)
    }
  }
}

