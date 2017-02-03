---
layout: single
title:  "TabActivity 에서 각 Tab 전환을 감지"
date:   2017-02-03 13:31:25 +0900
categories: android tabactivity ontabchangedlistener
---

이제는 deprecated된 TabActivity..\\
TabActivity 대신 Fragment 를 사용하는 방법이 권장되지만 \\
기존의 소스가 복잡히 얽혀서 기존 소스를 사용해야만 할 때는 어쩔 수 없다.

<!--more-->

내 경우에는 TabHost에 여러개의 tab이 달려있고 각각의 tab들은 개별 Activity로 구성되어 있었다.\\
각각의 tab 으로 전환 시에 각 Activity의 onResume 이 호출되지 않으니 \\
일반적이 Activity처럼 onResume 에다가 refresh하는 로직을 구현할 수 없었다.

이럴 때는 tabHost가 있는 Activity에서 OnTabChangeListener를 이용하면 된다.

{% highlight java %}
tabHost.setOnTabChangedListener(new OnTabChangeListener() {
    @Override
    public void onTabChanged(String tabId) {
	    String tabTag = getTabHost().getCurrentTabTag();

	    if (tabTag.equals(TAB_B)) {
		    BActivity bActivity = (BActivity)getLocalActivityManager().getActivity(tabTag);
		    bActivity.refreshUI(); // DB나 서버로 부터 UI업데이트
	    }
    }
});
{% endhighlight %}
