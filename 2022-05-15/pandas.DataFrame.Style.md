# pandas.DataFrame.Style

## 1. 分享简述

<img src="E:\Github\study_pandas\2022-05-15\01.png" alt="01" style="zoom: 33%;float:left" />

<img src=".\02.png" alt="02" style="zoom: 50%;float:left" />



<img src=".\05.png" alt="05" style="zoom: 33%;float:left" />



## 2. 数据处理

### 2.1 NaN 的两种情况

- 时间未到或者为完结（维持NaN)
- 时间到了，却全部流失（需要补零）

![image-20220517104205940](.\06.png)

### 2.2 dataframe.style

#### 隐藏

- pd.style.hide_index()
- pd.style.hide_columns([])

#### 更多格式

- pd.dtypes

- https://blog.csdn.net/weixin_39791387/article/details/118194441

- ``` python
  {'a':'￥{0：,.0f}',#货币符号
   'b':'{:%Y-%m-%d}',#年月
   'c':'{:.2%}',# 百分号
   'd':'{:.f}',# 千分位
   'e':str.upper，#大写}
  ```

#### 填充缺失值 

- pd.style_format(format_dict, na_rep='-')

#### 可视化

- 高亮

  > - 设置最值，会有周概念，涉及 axis 参数
  > - highlight_between() 可以空值最大值最小值范围， left, right

  - highlight_max()
  - highlight_min()
  - highlight_null()
  - highlight_between()



- 整体设置

  > - 如果是连续数据，可以设置最大值最小值控制颜色深浅变化极值范围，涉及 vmax, vmin
  > - 可以通过 high， low 设置颜色显示范围
  > - 如果不指定 subset 字段，会对整表生效
  > - 可以指定 gmap 可以根据指定字段映射整表

  - background_gradient()
  - text_gradient()



- 条形图

  > - 通过 color 控制颜色， 可多值
  > - aligh 可以控制条形图 0 点位置

  - style.bar()



- 自定义
  - apply
  - applymap

- 复用

  > - 保存格式对象
  > - 复用

  - style.export
  - df.style.use

- 标题
  - style.set_caption



- 导出
  - to_excel



- 颜色方案：
  - https://peiseka.com/xiaoqingxinjianbianse.html
  - *https://matplotlib.org/devdocs/gallery/color/colormap_reference.html*
  - 

