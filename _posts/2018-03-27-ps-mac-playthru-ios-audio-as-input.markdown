---
layout: single
title:  "iPhone 의 Audio Output 을 Mac 에서 Audio Input 으로"
date:   2018-03-27 15:22:46 +0900
categories: mac iOS
---

Android 에서 iPhone 으로 갈아탄 후 연속성 기능이나 테더링시의 편리함 등으로 생산성이 약간 올라간 것 같다.
<br />(물론, 버그 때문에 짜증나는 부분도 많다.)

일하던 중 가끔씩 쉴 때 소셜미디어나 유튜브 등을 볼 때가 있다. 딱히 눈치보는 건 아니지만 사무실에서는 Mac 으로 동영상을 잘 보지않게 된다.

iPhone 으로 동영상이나 음악을 듣고 싶을 때는 또 스피커로 빵빵 틀 수가 없으니 이어폰을 꼽거나 블루투스 이어폰 페어링을 해서 들어야 하는데..

이렇게 되면 또 Mac 에서 나는 소리를 들을 수가 없다...

서로 연동이 잘되는 Mac 과 iPhone 이 이게 안될리 없지 하고 좀 찾다보니 Mac 기본 앱인 `오디오 기기` 앱과 써드파티 앱인 `LineIn` 앱을 이용해서 Mac 과 iPhone 소리를 모두 듣는 방법을 알게돼서 공유함.

1. [LineIn](https://www.macupdate.com/app/mac/11333/linein) 을 설치
2. `오디오 기기` 앱을 실행<br />
    iPhone 을 USB 케이블로 Mac 에 연결하면 기본적으로 아래 그림처럼 최 하단에 iPhone 이 보인다.<br /><br />
    <img src="/assets/audio_inactive.png" width="640"><br /><br />
3. `활성화` 버튼을 누르면 iPhone 이 오디오 기기 리스트에 추가된다.<br /><br />
    <img src="/assets/audio_active.png" width="640"><br /><br />
4. 이제 `LineIn` 앱을 실행시켜준다.<br />
   Input 과 Output 소스를 선택할 수 있는데 아래 그림처럼 Input 을 iPhone 으로 지정해주고 Output 은 원하는 장치를 선택해준다.<br /><br />
    <img src="/assets/lineIn_select.png" width="640"><br /><br />

5. 마지막으로 `Play Thru` 버튼을 눌러주면 끝

이렇게 해주면 Mac, iPhone 의 소리를 한꺼번에 들을 수 있다!!
