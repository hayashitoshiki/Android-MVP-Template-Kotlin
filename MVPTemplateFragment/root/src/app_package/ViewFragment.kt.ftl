package ${packageName}.view

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${packageName}.contact.${className}Contact

import ${packageName}.R
import org.koin.android.ext.android.inject
import org.koin.core.parameter.parametersOf

/*
 *  DI用クラスに以下の１行を追加してください
 */
factory <${className}Contact.Presenter>{ (v: ${className}Contact.View) ->${className}Presenter(v) }

class ${className}Fragment : Fragment(), ${className}Contact.View {

    private val presenter: ${className}Contact.Presenter by inject { parametersOf(this) }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater.inflate(R.layout.${fragmentName}, container, false)

        return view
     }


}