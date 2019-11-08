# Android-MVP-Template-Kotlin
Android用 MVPテンプレート
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
import com.example.sample.contact.SampleContact

class SampleFragment : Fragment(), SampleContact.View {

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
##  環境
AndroidX  
Kotlin

##  テンプレートのカスタマイズ
####  クラス
```Android-MVP-Template-Kotlin/MVPTemplateFragment/root/src/app_package```以下該当するクラスを編集  
#### レイアウト
```Android-MVP-Template-Kotlin/MVPTemplateFragment/root/res/layout/fragment_layout.xml.ftl```を編集

##  更新履歴
・Koin(DIライブラリ)適用版作成 ```use-koin``` ：2019/11/9
