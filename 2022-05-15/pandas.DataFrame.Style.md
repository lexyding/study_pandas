# pandas.DataFrame.Style

## 1. 分享简述

<img src="C:\Users\A\AppData\Roaming\Typora\typora-user-images\image-20220515192224404.png" alt="image-20220515192224404" style="zoom:40%; float:left" />



## 2. 内容

![image-20220515201753096](C:\Users\A\AppData\Roaming\Typora\typora-user-images\image-20220515201753096.png)

### 2.1 dataframe.style

dataframe.style 样式

1. 隐藏

   - pd.style.hide_index()
   - pd.style.hide_columns([])

2. 格式

   - pd.dtypes

   - ``` python
     {'a':'￥{0：,.0f}',#货币符号
      'b':'{:%Y-%m}',#年月
      'c':'{:.2%}',# 百分号
      'd':'{:.f}',# 千分位
      'e':str.upper，#大写
     }
     ```

   - 

   - pd.style_format(format_dict, na_rep='-')

3. 颜色

- 高亮
  - highlight_max()
  - highlight_min()
  - highlight_null()
  - highlight_between()
- 渐变
  - background_gradient()
  - text_gradient()
- 条形图
  - style.bar()
- 自定义
  - style_map()
- 标题
  - style.set_caption
- 导出
  - to_excel
- 颜色方案：
  - https://peiseka.com/xiaoqingxinjianbianse.html
  - *https://matplotlib.org/devdocs/gallery/color/colormap_reference.html*
  - 

