# Android-MVP-Template-Kotlin
Android用 MVPテンプレート for Koin
## セットアップ
以下に配置  
Windows  
```C:\Program Files\Android\Android Studio\plugins\android\lib\templates\activities```

Mac  
```$ /Applications/Android Studio.app/Contents/plugins/android/lib/templates/other/```

## 展開構成
```
java
    +--com.exsample.sample
          +--contact  
          |      --SampleContact.kt  
          +--presenter  
          |       --SamplePresenter.kt  
          +--view  
                  --SampleFragment.kt  
res
          +--layolut
                  --fragmrnt_sample.xml
  ```
  
##  生成されるファイル詳細
###  MVPTemplateFragment 
SampleContact.kt  
```
package com.example.sample.contact

interface SampleContact {
    interface View {

    }

    interface Presenter {

    }
}
```

SampleFragment.kt  

```
package com.example.sample.view

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

import com.example.sample.R
import org.koin.android.ext.android.inject
import org.koin.core.parameter.parametersOf
import com.example.sample.contact.SampleContact

/*
 *  DI用クラスに以下の１行を追加してください
 */
factory <SampleContact.Presenter>{ (v: SampleContact.View) -> SamplePresenter(v) }


class SampleFragment : Fragment(), SampleContact.View {

    private val presenter: Sample1Contact.Presenter by inject { parametersOf(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val view = inflater.inflate(R.layout.fragment_sample, container, false)

        return view
    }


}
```

SamplePresenter.kt  
```
package com.example.sample.presenter

import com.example.sample.contact.SampleContact

class SamplePresenter(private val view: SampleContact.View) : SampleContact.Presenter {


}
```

fragment_sample.xml
```
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:ads="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="view.SampleFragment">

    <TextView
        android:id="@+id/textView1"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Fragment"
        android:textSize="24sp" />

</RelativeLayout>
```

## 使い方
➀  
![](https://github.com/teaTreeTree/Android-MVP-Template-Kotlin/blob/master/MVPTemplateFragment/screenshot/01.png)  
➁  
![](https://github.com/teaTreeTree/Android-MVP-Template-Kotlin/blob/master/MVPTemplateFragment/screenshot/02.png)  
➂  
![](https://github.com/teaTreeTree/Android-MVP-Template-Kotlin/blob/master/MVPTemplateFragment/screenshot/03.png)

④  
DI用クラスとして以下のようなDI用クラスを生成  
```
package com.example.tosik.musicdictionary_androlid.di

import android.app.Application
import com.example.tosik.musicdictionary_androlid.contact.*
import com.example.tosik.musicdictionary_androlid.presenter.*
import org.koin.android.ext.koin.androidContext
import org.koin.core.context.startKoin
import org.koin.core.module.Module
import org.koin.dsl.module

class MyApplication: Application() {

    override fun onCreate() {
        super.onCreate()

        startKoin{
            androidContext(applicationContext)
            modules(module)
        }
    }

    // Koinモジュール
    private val module: Module = module  {
        factory <SampleContact.Presenter>{ (v: SampleContact.View) -> SamplePresenter(v) }
    }


}
```
クラス生成毎に```factory <●●●Contact.Presenter>{ (v: ●●●Contact.View) -> ●●●Presenter(v) }```を追加する  
##  環境
AndroidX  
Kotlin  
Koin

##  テンプレートのカスタマイズ
####  クラス
```Android-MVP-Template-Kotlin/MVPTemplateFragment/root/src/app_package```以下該当するクラスを編集  
#### レイアウト
```Android-MVP-Template-Kotlin/MVPTemplateFragment/root/res/layout/fragment_layout.xml.ftl```を編集
