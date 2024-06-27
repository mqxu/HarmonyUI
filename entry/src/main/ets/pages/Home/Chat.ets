import router from '@ohos.router';
import inputMethod from '@ohos.inputMethod';

@Entry
@Component
export default struct Chat {
  @State index: number = 0

  onPageShow(){
  }

  @Builder NavigationMenus() { // CustomBuilder类型的菜单栏
    Row() {

      Image('/images/we_add.png')
        .size({ width: 24, height: 24 })
        .margin({ left: 5 })
    }.justifyContent(FlexAlign.End)
  }

  @Builder NavigationTitle() {
    Row(){
      Text("猪头")
        .width('100')
    }
    .width('80%')

    .justifyContent(FlexAlign.Center)
  }


  build() {
    Column() {
      Navigation(){

        List({ space: 5, initialIndex: 0 }){
          ListItem(){
            Flex({direction:FlexDirection.Row}){
              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
                Text('燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                  .backgroundColor(Color.White)
                  .fontColor(Color.Black)
                  .padding(10)
                  .borderRadius(6)
                  .lineHeight(20)
                  .margin({left:10})

            }

          }
          .padding({right:55,top:10,bottom:1,left:10})




          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.End}){

              // Flex({direction:FlexDirection.Row}){
                Text('燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                  .backgroundColor('rgb(63,182,57)')
                  .fontColor(Color.Black)
                  .padding(10)
                  .borderRadius(6)
                  .lineHeight(20)
                  .margin({right:10})

              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
            }
            .width('100%')
            .padding({left:55,top:10,bottom:1,right:10})
            // .backgroundColor(Color.Green)

          }


          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.End}){

              // Flex({direction:FlexDirection.Row}){
              Text('燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                .backgroundColor('rgb(63,182,57)')
                .fontColor(Color.Black)
                .padding(10)
                .borderRadius(6)
                .lineHeight(20)
                .margin({right:10})


              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
            }
            .width('100%')
            .padding({left:55,top:10,bottom:1,right:10})
            // .backgroundColor(Color.Green)

          }

          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.Start}){

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
              // Flex({direction:FlexDirection.Row}){
              Text('3燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                .backgroundColor(Color.White)
                .fontColor(Color.Black)
                .padding(10)
                .borderRadius(6)
                .lineHeight(20)
                .margin({left:10})

              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})


            }
            .width('100%')
            .padding({left:10,top:10,bottom:1,right:55})
            // .backgroundColor(Color.Green)

          }

          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.Start,alignItems:ItemAlign.Start}){

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
              // Flex({direction:FlexDirection.Row}){
              Text('4燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                .backgroundColor(Color.White)
                .fontColor(Color.Black)
                .padding(10)
                .borderRadius(6)
                .lineHeight(20)
                .margin({left:10})


              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})


            }
            // .justifyContent(FlexAlign.Start)
            // .alignItems(VerticalAlign.Top)
            // .width('100%')
            .padding({left:10,top:10,bottom:1,right:55})
            // .backgroundColor(Color.Green)
            .margin(0)

          }


          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.Start,alignItems:ItemAlign.Start}){

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
              // Flex({direction:FlexDirection.Row}){
              Text('4燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                .backgroundColor(Color.White)
                .fontColor(Color.Black)
                .padding(10)
                .borderRadius(6)
                .lineHeight(20)
                .margin({left:10})


              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})


            }
            // .justifyContent(FlexAlign.Start)
            // .alignItems(VerticalAlign.Top)
            // .width('100%')
            .padding({left:10,top:10,bottom:1,right:55})
            // .backgroundColor(Color.Green)
            .margin(0)

          }


          ListItem(){
            Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.Start,alignItems:ItemAlign.Start}){

              Image('/images/icon1.png')
                .width(45)
                .height(45)
                .borderRadius(5)
              // Flex({direction:FlexDirection.Row}){
              Text('4燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～燕子你走了我可怎么活啊燕子～～～～燕子～～～～啊啊～～～～～～～')
                .backgroundColor(Color.White)
                .fontColor(Color.Black)
                .padding(10)
                .borderRadius(6)
                .lineHeight(20)
                .margin({left:10})


              // }
              // .borderRadius(6)
              // .padding({left:55})
              // .margin({right:10})


            }
            // .justifyContent(FlexAlign.Start)
            // .alignItems(VerticalAlign.Top)
            // .width('100%')
            .padding({left:10,top:10,bottom:1,right:55})
            // .backgroundColor(Color.Green)
            .margin(0)

          }





        }
        .onScroll(()=>{
          console.log("开始滑动2")
          inputMethod.getController().hideSoftKeyboard()
        })
        .onDragStart(()=>{
          console.log("开始滑动")
          inputMethod.getController().hideSoftKeyboard()
        })
        .listDirection(Axis.Vertical)

        // .divider({ strokeWidth: 2, color: 'rgb(247,247,247)', startMargin: 60, endMargin: 0 }) // 每行之间的分界线
        // .margin({top:10})
        // .padding({left:10,right:10})
        .backgroundColor('rgb(245,245,245)')
        .height('90%')




        Flex({direction:FlexDirection.Row,justifyContent:FlexAlign.SpaceBetween}){
          Image('/images/voice.png')
            .width(30)
            .height(30)
            // .backgroundColor(Color.Black)
            .margin({top:5})

          TextInput()
            .width('62%')
            .height(40)
            .backgroundColor(Color.White)
            .borderRadius(5)

          Image('/images/emoj.png')
            .width(30)
            .height(30)
            // .backgroundColor(Color.Black)
            .margin({top:5})

          Image('/images/more.png')
            .width(30)
            .height(30)
            // .backgroundColor(Color.Black)
            .margin({top:5})
        }
        .padding({top:10,left:15,right:15})
        .width('100%')
        .height(90)
        .backgroundColor('rgb(240,240,240)')



      }
      .title(this.NavigationTitle())
      .mode(NavigationMode.Stack)
      .titleMode(NavigationTitleMode.Mini)
      .hideBackButton(false)
      .menus(this.NavigationMenus())
      .size({ width: '100%', height: '100%' })
      .backgroundColor('rgb(237,237,237)')
    }
    .width('100%')
    .height('100%')
  }
}