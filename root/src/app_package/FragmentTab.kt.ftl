package ${packageName}

import android.os.Bundle
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${tabFragmentLayout}.*

class ${tabFragmentClass}: Fragment(){

    private lateinit var mViewBinding: ${tabFragmentClass}Binding
    private lateinit var tabName: String

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        mViewBinding = ${tabFragmentClass}Binding.inflate(inflater, container, false)
        mViewBinding.setLifecycleOwner(this@${tabFragmentClass})
        return mViewBinding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        tv_tabname.text = tabName
    }

    fun setTabName(tabName: String){
        this.tabName = tabName
    }
}