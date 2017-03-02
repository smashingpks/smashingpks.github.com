---
layout: single
title:  "Port forwarding with SSH Tunneling"
date: 2017-03-02 21:34:33 +0900
categories: ssh mysql
tags: [ssh, ssh tunnel, mariadb, mysql]
---
일반적으로 웹서비스를 운영하기 위해서는 WAS와 DB를 필요로 한다. 이들은 한 서버에 존재할 수도 있고 각각 다른 서버에 위치할 수도 있다. 만약 인터넷에서 웹서버로 직접 접근이 가능한 경우 악성 공격에 쉽게 노출이 되기 때문에 일반적으로는 게이트웨이 서버를 앞에 두고 WAS, DB는 내부망에 위치한 다른 서버에 두는 경우가 많다.
<!--more-->

내 PC <--- 인터넷 ---> 게이트웨이 <-> WAS,DB 구조가 되면 내 PC에서 Database client tool 을 통해 직접 서버 DB에 접근할 수 없게된다. 물론 ssh를 통해서 게이트웨이 서버 접속 후 로컬 ip로 DB에 접속하면 되지만 이렇게 되면 Command line 으로만 사용할 수 있기 때문에 데이터를 눈으로 확인하거나 쿼리등을 날리기가 좀 불편하다.

그런데 만약 게이트웨이 서버에 ssh로 접속이 가능하다면 위 구조에서도 내 PC의 Database client tool로 직접 DB 서버에 접근하는 방법이 있다.
바로 `SSH Tunneling` 을 이용하는 방법이다. SSH 와 SSH Tunneling 은 꽤 큰 주제라서 자세히 다루기는 힘들고 이 포스팅에서는 단순히 내부망  서버에 설치된 mariadb(mysql)에 SSH Tunneling 을 이용해서 접속하는 방법을 기록하려고 한다.\\
(SSH Tunneling에 대해 비교적 쉽게 설명해둔 [사이트](https://chamibuddhika.wordpress.com/2012/03/21/ssh-tunnelling-explained/)를 참고)

현재 환경이 아래와 같은 상황일 때

* 게이트웨이 서버 : my.gateway.com, ssh port:22, ssh id : myid
* DB 서버 : 192.168.0.50, mysql port : 3306


```bash
myMac:home me$ ssh -L 9001:192.168.0.50:3306 myid@my.gateway.com
```

위처럼 입력한 후 myid 에 대한 password를 입력하면 끝이다.

살짝만 풀어서 얘기하면 myid 라는 ssh 계정으로 my.gateway.com 에 ssh 로 접근을 해서 192.168.0.50(내부망의 mysql 이 설치된 다른 pc 의 ip)의 3306(mysql 통신 기본 포트)포트를 내 로컬 PC의 9001 포트로 SSH Tunnel 을 이용해서 포트 포워딩 해준 것이다.

만약 ssh port 가 22가 아니고 예를들어 9022번이라면 아래처럼 해주면 된다.

```bash
myMac:home me$ ssh -L 9001:192.168.0.50:3306 myid@my.gateway.com -p 9022
```


이렇게 해주고 나서 Database Tool 을 붙일 때 아래처럼 설정해주면 된다.

* host : localhost
* port : 9001
* db_name : 사용하려는 DB 이름
* db_id : mysql 계정
* db_pw : mysql 계정의 패스워드

만약 Command line으로 붙고 싶다면 아래처럼 해도 된다.(mysql 계정이 mydbid 일 경우)

```bash
myMac:home me$ mysql -u mydbid -h 127.0.0.1 --port=9001 -p
```

-h 뒤에는 localhost 대신에 127.0.0.1로 해줘야만 정상 작동한다.
{: .notice--warning}

단, ssh 접속이 끊어지는 경우 tool 에서 연결도 당연히 끊긴다.
