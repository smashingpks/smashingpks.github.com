---
layout: single
title:  "Eclipse 에서 Retina font 사용하기(Mac)"
date:   2017-01-31 10:06:20 +0900
categories: mac eclipse
---
Macbook Pro Retina 모델에서 Eclipse를 이용해 개발하는 경우
별다른 설정을 해주지 않았다면 에디터 상에서 폰트의 경계가 클리어 하지 않고 번지게 된다.

> 사실 이 글은 2013년 3월에 작성한 내용인지라 지금 최신 버전의 Eclipse에서는 어찌 동작하는지 모르겠다.


**기껏 Retina display 모델을 구입했는데 흐릿하게 쓸 순 없지 않는가!!**

구글 신님에게 여쭈어 보니
해결법이 [여기](http://4pcbr.com/topic/eclipse_processing_and_retina_displays_fonts_fix)에 나와 있었는데 어느새 404가 되어있다..

아래와 같이 하면 된다.

* Finder 에서 Eclipse 가 설치된 디렉토리로 이동.
* Eclipse 응용 프로그램 파일에서 우클릭.
* 패키지 내용 보기를 선택.
* Contents/Info.plist 를 Xcode 로 연다. (Text Editor 로 열어도 무방)
* 아래 항목을 추가한다.
{% highlight objective-c %}
<key>NSHighResolutionCapable</key>
<true/>
{% endhighlight %}
( Xcode로 파일을 열었는데 text 형식이 아닌 테이블 형태로 열린 경우 `Key : NSHighResolutionCapable, Type : Boolean, Value : YES` 로 추가하면 된다 )

* 만약 기존에 같은 항목(`NShighResolutionCapable`)이 있어도 그냥 위처럼 replace 한다.
* 저장 후 Eclipse 파일을 다른 디렉토리로 복사
* 다른 디렉토리에 있는 Eclipse 파일을 다시 원래 디렉토리로 복사
(덮어쓰지 않고 사본으로 만든다.)
* 원본 Eclipse 파일을 삭제
* 복사된 Eclipse 파일의 이름을 원본과 같게 Eclipse 로 변경.
* 이제 Eclipse 실행 하면 깔끔한 font 를 볼 수 있다.
