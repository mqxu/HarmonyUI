import router from '@ohos.router'

@Entry
@Component
export default  struct Contacts {
  @State message: string = 'Hello World'

  @State fList: object[] = [{'letter':"L",'data':[{'name':'张三','avtar':'/images/icon2.png'}]},
    {'letter':"W",'data':[{'name':'张三丰','avtar':'/images/icon3.png'}]},
    {'letter':"Z",'data':[{'name':'张三疯','avtar':'/images/icon1.png'}]}]

  @State letters: string[] = ['L','W','Z']


  @Builder NavigationMenus() { // CustomBuilder类型的菜单栏
    Row() {

      Image('/images/contact_add.png')
        .size({ width: 24, height: 24 })
        .margin({ left: 5 })
        .onClick(()=>{

        })
    }.justifyContent(FlexAlign.End)
  }

  @Builder NavigationTitle() {
    Row(){
      Text("通讯录")
        .width('100')
    }
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }

  @Builder itemHead(text:string) {
    Text(text)
      .fontSize(14)
      .backgroundColor(Color.White)
      .width("100%")
      .padding(3)
  }

  build() {
    Column() {
      Navigation(){

        Stack({ alignContent: Alignment.End }){
        //
          Column(){
            TextInput({ placeholder: '搜索' })
              .width('92%')
              .height(40)
              .backgroundColor(Color.White)
              .margin(0)
              .borderRadius(5)
              .textAlign(TextAlign.Center)

            List(){

              ListItem(){
                ContactsRow({imagePath:'/images/contact_0.png',titleString:'新的朋友'})

              }

              ListItem(){
                ContactsRow({imagePath:'/images/contact_1.png',titleString:'仅聊天的朋友'})

              }

              ListItem(){
                ContactsRow({imagePath:'/images/contact_2.png',titleString:'群聊'})


              }

              ListItem(){
                ContactsRow({imagePath:'/images/contact_3.png',titleString:'标签'})


              }

              ListItem(){
                ContactsRow({imagePath:'/images/contact_4.png',titleString:'公众号'})

              }

              ListItem(){
                ContactsRow({imagePath:'/images/contact_5.png',titleString:'企业微信联系人'})

              }
              
              ForEach(this.fList,(item:object,index:number)=>{
                ListItemGroup({header:this.itemHead(item['letter'])}){

                  ForEach(item['data'],(p:object,i:number)=>{
                    ListItem(){
                      Flex({direction:FlexDirection.Row,alignItems:ItemAlign.Center}){
                        Image(p['avtar'])
                          .width(45)
                          .height(45)
                          .borderRadius(5)
                        Text(p['name'])
                          .fontSize(18)
                          .margin({left:10})
                      }
                      .height(55)
                    }
                    .onClick(()=>{
                      router.pushUrl({url:'pages/Contact/PersonalPage',params: {
                        person: p
                      }})
                    })
                  })

                }
                .margin({top:10})



              })

            }
            .divider({ strokeWidth: 2, color: 'rgb(247,247,247)', startMargin: 60, endMargin: 0 }) // 每行之间的分界线
            .margin({top:17})
            .padding({left:15,right:15})
            .backgroundColor(Color.White)
            .height('100%')



        
          }


        AlphabetIndexer({ arrayValue: this.letters, selected: 0 })
          .color(Color.Black)
          .selectedColor(0xFFFFFF) // 选中项文本颜色
          .popupColor(0xFFFAF0) // 弹出框文本颜色
          .selectedBackgroundColor('rgb(1,196,194)') // 选中项背景颜色
          .popupBackground(0xD2B48C) // 弹出框背景颜色
          .usingPopup(true) // 是否显示弹出框
          .selectedFont({ size: 13, weight: FontWeight.Bolder }) // 选中项字体样式
          .popupFont({ size: 30, weight: FontWeight.Bolder }) // 弹出框内容的字体样式
          .itemSize(20) // 每一项的尺寸大小
          .alignStyle(IndexerAlign.Left) // 弹出框在索引条左侧弹出
          .onSelect((index: number) => {
            console.info(this.letters[index] + ' Selected!')
          })
          .onPopupSelect((index: number) => {
            console.info('onPopupSelected:' + index)
          })

      }
      .width('100%')
      .height('100%')





        // }




      }
      .title(this.NavigationTitle())
      .mode(NavigationMode.Stack)
      .titleMode(NavigationTitleMode.Mini)
      .hideBackButton(true)
      .menus(this.NavigationMenus())
      .size({ width: '100%', height: '100%' })
      .backgroundColor('rgb(237,237,237)')
    }
    // .bindMenu(this.MyMenu())
    .width('100%')
    .height('100%')
  }
}

@Component
 struct ContactsRow {

  imagePath:string
  titleString:string

  build(){
    Flex({direction:FlexDirection.Row,alignItems:ItemAlign.Center}){
      Image(this.imagePath)
        .width(41)
        .height(41)
      Text(this.titleString)
        .fontSize(18)
        .margin({left:10})
    }
    .height(55)
  }
}