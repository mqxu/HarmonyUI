export class YLTabClass {
  //选中图标
  selectImage: Resource
  //默认图标
  defaultImage: Resource
  //中间是否凸起
  middleMode: boolean
  //标题
  title: string
  //是否选中
  isSelected: boolean = false

  constructor(selectImage: Resource, defaultImage: Resource, title: string, middleMode = false) {
    this.selectImage = selectImage
    this.defaultImage = defaultImage
    this.title = title
    this.middleMode = middleMode
  }
}