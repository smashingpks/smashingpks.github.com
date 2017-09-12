---
layout: single
title:  "Android Studio marks flavored class red"
date:   2017-09-12 14:54:43 +0900
categories: android
tags: [android, android studio, flavor, buildVariant]
---
Android Studio 에서 Flavor 를 이용해서 Flavor 별 소스 셋과 라이브러리를 각각 분리해서 사용중이다. 근데 다른 Flavor 로 전환하기 위해서 Build Variant 를 바꿨을 때, Flavor 처리된 소스 셋이 참조된 코드가 붉은 색으로 나오는 경우가 있다. `마우스를 갖다 대면 클래스를 찾을 수 없다고 나오고 Jump 도 안된다.`
<!--more-->

###### Android Studio 정보
>
Android Studio 2.3.3<br />
Build #AI-162.4069837, built on June 6, 2017<br />
JRE: 1.8.0_112-release-b06 x86_64<br />
JVM: OpenJDK 64-Bit Server VM by JetBrains s.r.o


StackOverFlow 를 찾아보면 일반적으로는 Rebuild Project -> Sync Project with Gradle Files 를 해보라고 나온다. 근데 이처럼 해도 여전히 붉은 색으로 표기가 된다. 사실 빌드도 되고 apk 도 추출가능한 상태이긴 하나 눈이 거슬려서 매우 힘이 든다.

Clean 도 해보고 Android Studio 를 껐다가 켜는 등 별짓을 해봤지만 안된다.

그러다가 얻어걸린 해결법은 아래와 같다.

**(Flavor 된 소스 중에서 붉은색으로 표기되는 클래스 파일을 연다 -> 파일을 수정한다 -> 이제 붉은 색 표시가 사라진다.. -> 의미없는 수정사항은 원복!)**
{: .notice--info}
