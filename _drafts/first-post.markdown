---
layout: single
title:  "한글테스트"
date:   2017-01-26 11:27:20 +0900
categories: android
---
한글로 작성하는 포스트의 `테스트` 입니다.

어째서 Jekyll을 이제야 알았는지... 너무 좋네요.

You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

<br>

Tables!

<br>

First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column

<br>

# Header
## Header
### Header

###### This is a header

*This text will be italic*

_italic text_

Let's find out if java code snippets work ok as well :

{% highlight java %}
String apple = "apple";
String pineApple = "pineApple";
String pen = "pen";

system.out.println(pen + pineApple + apple + pen);
{% endhighlight %}

<br>

Java Code

```java
String apple = "apple";
String pineApple = "pineApple";
String pen = "pen";
Log.d(TAG,pen + pineApple + apple + pen);

system.out.println(pen + pineApple + apple + pen);
```

<br>

Python Code

```python
def func:
    return ""
```


This is a picture :
<br>
<!-- ![picture]({{ site.url }}/assets/screenshot.png) -->
<img src="http://127.0.0.1:4000/assets/screenshot.png" width="480
">

<br>
<br>
<img src="https://github.com/favicon.ico" width="48">


Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: http://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
