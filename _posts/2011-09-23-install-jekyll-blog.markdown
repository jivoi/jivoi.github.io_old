--- 
title: Используем Jekyll + Github для блога 
layout: post
excerpt: Небольшое руководства как запустить блог на github.com и jekyll
syntax-highlighting: yes
tags:
- jekyll
---
Небольшое руководства как запустить блог на github.com и jekyll.

**Команды:** 

{% highlight bash %}
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
rvm install 1.9.2
gem install jekyll
gem install RedCloth
easy_install Pygments
git config --global user.name "user"
git config --global user.email mail@gmail.com
mkdir blog
cd blog
git clone git@github.com:jivoi/jivoi.github.com.git
rake post
rake deploy
{% endhighlight %}

Полезные ссылки:

[https://github.com/mojombo/jekyll/wiki] (https://github.com/mojombo/jekyll/wiki)
