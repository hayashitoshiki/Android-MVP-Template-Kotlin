package ${packageName}.view

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

import ${packageName}.R
import ${packageName}.contact.${className}Contact

class ${className}Fragment : Fragment(), ${className}Contact.View {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
     val view = inflater.inflate(R.layout.${fragmentName}, container, false)

     return view
     }


}