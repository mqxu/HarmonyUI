import { YLTabClass } from './YLTabCLass'

@Component
export struct YLTabbarItem {
  tabItem: YLTabClass
  @Prop isSelected: boolean

  build() {
    Column() {
      //根据isSelected字段设置图标，如果isSelected为true设置选中图标，否则为默认图标
      Image(this.isSelected ? this.tabItem.selectImage : this.tabItem.defaultImage)
        //如果是中间凸起按钮图片尺寸为45，否则是42
        .size({ width: this.tabItem.middleMode ? 45 : 22, height: this.tabItem.middleMode ? 45 : 22 })

      //为中间按钮外的其他按钮设置标题
      if (!this.tabItem.middleMode) {
        Text(this.tabItem.title)
          .fontSize(12)
          .margin({ top: 6 })
          .fontColor(this.isSelected ? '#3C8DFF' : '#B7B7B7')
      }
    }
    .width("100%")
    .height(56)
    .justifyContent(FlexAlign.Center)
  }
}