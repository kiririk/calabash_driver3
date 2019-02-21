# calabash_driver3
autotests for iway driver

1. Установить Oracle JDK 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-installer
sudo apt install oracle-java8-set-default

2. Проверить что система смотрит на Oracle JDK (java, javac, javadoc, jarsigner)
Достаточно java
sudo update-alternatives --config java

3. sudo apt-get install lib32ncurses5 lib32stdc++6

4. sudo apt-get install ruby ruby-dev
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
sudo \curl -L https://get.rvm.io | bash -s stable --ruby

5. Установить SDK
Скачать Command line tools для linux https://developer.android.com/studio/
Распаковать архив с SDK в /home/<user>/android-sdk/

Добавить в .bashrc
export ANDROID_HOME=$HOME/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

Получить список свежих пакетов для SDK 
sdkmanager --list

Установить недостающие пакеты (брать можно последние)
sdkmanager platform-tools
Появится сообщение Warning: File /home/<user>/.android/repositories.cfg could not be loaded.
Нужно создать пустой файл в директории 
touch /home/<user>/.android/repositories.cfg
Продолжаем установку пакетов
sdkmanager tools "platforms;android-28" "build-tools;28.0.0" "platform-tools" (появится принятие лицензии, y)

Проверить что все установлено
sdkmanager --list (в самом верху список установленных пакетов)

keytool -genkey -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"

6. sudo gem install bundler
7. Create Gemfile in project file
# Contents of Gemfile
source "https://rubygems.org"

gem 'calabash-android'
gem 'cucumber'

8. calabash-android gen
9. adb devices
10. calabash-android console apk
11. calabash-android resign apk
12. bundle exec calabash-android run "driver3_release_50.apk"
---
Установка завершена
---

Режим анализа приложения - читать здесь https://habr.com/ru/post/219655/
Для аналики страниц приложения можно использовать uiautomatorviewer
https://github.com/kosiara/calabash-android-example-projects

https://github.com/calabash/calabash-android/tree/master/ruby-gem/lib/calabash-android/steps
