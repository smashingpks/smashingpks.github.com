---
layout: single
title:  "Certificate Pinning in Android"
date:   2017-02-03 21:57:49 +0900
categories: android ssl tls
tags: [android, ssl, certificate pinning, tls, raw]
---
SSL혹은 TLS를 이용해서 Server <-> Android app 간 통신을 보호하고 싶을 때, 일반적인 경우는 인증기관으로부터 SSL 인증서를 구매해서 Server에 SSL 설정을 해두면 app 단에서는 딱히 해줄 일이 없다.\\
(app 에서 해줄 일이라면 Server URL을 https로 지정하고 설정된 SSL통신 포트를 맞춰주는 것 정도다.)
<!--more-->

그런데 서버가 인증기관으로부터 구매한 공인인증서가 아닌 self signed 인증서를 사용하는 경우에는 얘기가 달라진다.

SSL 통신 중에서도 Handshaking 은 크게 2가지 과정으로 이루어 지는데, 첫째는 신뢰해도 되는 서버인지 확인하는 과정이 있고 둘째로는 서버의 host name 인증을 진행한다.

특정 서버와 앱이 HTTPS 통신을 하려면

당연히 윈도우용 라이선스가 맥용 버전과 호환되지 않아 추가 구매를 해야했지만 그래도 너무도 익숙하고 편리하게 잘 사용하고 있는 프로그램이라서 망설임 없이 질렀다.

**(여러분! 우리 모두 정품 소프트웨어 구매해서 씁시다!!)**
{: .notice--warning}

 윈도우용의 경우 `개별 파일 혹은 폴더에서 우클릭해서 left, right를 지정` 해주거나\\
 윈도우 탐색기(Explorer)에서 선택한 `복수의 폴더 혹은 파일에서 우클릭해서 compare를 누르면` \\
 선택한 내용이 좌,우 비교창에 딱하니 뜨는 기능을 아주 유용하게 썼었는데 \\
 맥용 버전의 경우도 비슷한 기능이 있긴 했다.

시스템 환경설정에서 단축키 부분을 보면 아래 그림처럼 Beyond Compare 관련된 명령이 슬그머니 추가되어 있다.

>지금은 기억이 안나지만 설치 과정에서 뭔가 Finder extension 을 추가할거냐 물어봤던것 같기도 하고..

<img src="http://127.0.0.1:4000/assets/bc-finder-extension.png" width="640
">

체크가 안되어 있다면 위처럼 체크를 해주고 우측 끝 부분을 눌러서 단축키를 설정해줄 수도 있다.\\
만약 단축키 설정 없이 위 그림처럼 해줬다면 무슨일이 일어나느냐?

<img src="http://127.0.0.1:4000/assets/bc-finder-extension2.png" width="640
">

위 그림처럼 복수 파일을 파인더에서 선택한 경우 아까 시스템 환경설정 메뉴에서 봤던 옵션중 2가지가 노출이 된다.

하.... 그런데 뭐랄까 맘에 안든다. \\
`우클릭 > 서비스 > 수많은 메뉴 중에 찾아서 left,right 로 지정하거나 compare files 를 누르는 행위` 자체가 맘에 들지 않는다.

맘에 안드는 건 단축키 부분도 마찬가지다.

* Compare Files
* Compare Folders
* Select Left File for Compare
* Select Right File for Compare

내가 만약 위 4가지 옵션에 대한 단축키를 외우고 있지 못한 상태라면?\\
`시스템 환경설정 > 단축키 > 서비스` 까지 들어와야만 단축키를 확인 가능하게 된다.

물론, 이렇게 하다보면 언젠간 외워지긴 하겠지만;; 이것 말고도 각 앱마다 단축키가 다 다르고 맥 기본 단축키들도 많단 말이다.

그래서 위 방법보다는 약간 더 간단한 방법을 찾았다.\\
바로 [Keyboard Maestro](http://www.keyboardmaestro.com/main/) 를 이용하는 방법이다.\\
이 앱도 유료지만 다재다능하게 생산성 향상을 도와주는 앱이다.

사실 혹시나 하는 마음으로 Keyboard Maestro 로 매크로를 만들어 본건데 이처럼 간단할 줄이야..\\
아래 그림처럼 매크로를 만들면 단축키 하나로 모든것이 해결된다. \\
파일이나 폴더를 하나만 선택하던 여러개를 선택하던 Beyond Compare 알아서 열어준다.

<img src="http://127.0.0.1:4000/assets/bc-compare.png" width="640
">

사용한 action은 `Open the Finder Selection` 이고 이걸 추가하면 기본적으로 \\
`Open the Finder Selection with: Front Application`으로 지정되어 있는데 \\
이걸 Beyond Compare로 바꿔주기만 하면 된다.

이 패턴으로 다른 앱들도 매크로를 만들어서 쓰면 좋겠다는 생각이 든다.
