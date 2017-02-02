export ANT_HOME=/Users/dhshin-Mac/Documents/apache-ant-1.9.1
#export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
export CATALINA_HOME=/Users/dhshin-Mac/Documents/apache-tomcat-7.0.41
export PATH=${PATH}:${ANT_HOME}/bin:/opt/local/bin:/opt/local/sbin:/Users/dhshin-Mac/android-sdks/platform-tools:/Users/dhshin-Mac/android-sdks/tools:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:${CATALINA_HOME}/bin:/Users/dhshin-Mac/Documents/dex2jar-0.0.9.15/
export PATH=/usr/local/bin:$PATH
#export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export ANDROID=/Users/dhshin-Mac/android-sdks
export ANDROID_HOME=/Users/dhshin-Mac/android-sdks/
export NDK_HOME=/Users/dhshin-Mac/android-sdks/android-ndk-r10d/
export M2_HOME=/usr/local/apache-maven/apache-maven-3.3.1
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:/Users/dhshin-Mac/android-sdks/android-ndk-r10
export PATH=$HOME/macports/bin:$HOME/macports/sbin:$PATH
export PATH=$PATH:/usr/local/Cellar/ruby/2.4.0/bin/
export MANPATH=$HOME/macports/share/man:$MANPATH
export PERL5LIB=$HOME/macports/lib/perl5/5.12.4:$HOME/macports/lib/perl5/vendor_perl/5.12.4:$PERL5LIB
alias jar='java -Dfile.encoding=utf8 sun.tools.jar.Main '
#alias keytool='java -Dfile.encoding=utf8 sun.security.tools.KeyTool '
alias port-home='$HOME/macports/bin/port'
alias port-sys='sudo /opt/local/bin/port'
alias ll='ls -alG'
alias adba='/Users/dhshin-Mac/android-sdks/platform-tools/adb'
alias adbb='/usr/local/bin/adb'
alias psj='ps -ef | grep java'
launchctl setenv ANDROID_HOME "$ANDROID_HOME"
launchctl setenv NDK_HOME "$NDK_HOME"

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
