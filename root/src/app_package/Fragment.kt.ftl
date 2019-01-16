package ${packageName}

import android.os.Bundle
import android.support.design.widget.TabLayout
import android.support.v4.view.ViewPager
import android.support.v4.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import kotlinx.android.synthetic.main.${mainFragmentLayout}.*

class ${mainFragmentName} : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.${mainFragmentLayout}, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setTabLayout(view_pager, tab_layout, 2)
    }

    private fun setTabLayout(viewPager: ViewPager, tabLayout: TabLayout, numTab: Int) {
        tabLayout.setupWithViewPager(viewPager, true)
        val adapter = ViewPagerAdapter(childFragmentManager)
        for (i in 0 until numTab){
            val fragmentTab = ${tabFragmentName}()
            fragmentTab.setTabName("Tab")
            adapter.addFragment(fragmentTab, "Tab")
        }
        viewPager.adapter = adapter
    }
}