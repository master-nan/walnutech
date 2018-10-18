<h1 align="center">walnutech</h1>

## 简介

基于vue的个人网站项目。使用了nuxt以及vuetify，nuxt和vuetify都是vue的通用框架，nuxt主要用于ui渲染提高渲染效率以及seo优化，提供了异步数据加载、中间件支持、布局支持等同时也集成了vue全家桶；vuetify是一个渐进式的ui框架，提供绝大部分组件以及适用于任何应用的解决方案。

- [项目地址](https://github.com/master-nan/walnutech)
- [在线地址](http://walnutech.com)


## 目录

```
--web     网站目录
--client  后台客户端
--server  服务端
```


## 说明

使用了nuxt的解决方案，轻松实现简单项目，基本上nuxt提供的功能都使用了，例如国际化、异步请求axios，vuex状态管理，中间件以及vue mixins等，同时也加入了后台管理，不过后台暂时还未想好加入哪些内容，所以web网站还未从后端获取数据进行渲染，不过index.vue中有例子。后续还会不断完善。

up to 2018.10.18: v1.0.0

- 增加后台数据对接，添加了获取文章以及文章详情页，服务端渲染数据小例子。
- 增加部分页面keywords以及description设置，优化seo
- 修改切换中英文的bug
- 修改中英文切换404页面显示错误的bug
- 修改部分样式



## 最后的最后

如果你喜欢这个项目，或者这个项目对你当前工作有所帮助，请给`star`谢谢!


## 许可证

[MIT](./LICENSE)

Copyright (c) 2018-9 master-nan
