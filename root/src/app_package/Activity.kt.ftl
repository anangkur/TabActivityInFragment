package ${packageName}

import android.databinding.DataBindingUtil
import android.support.v7.app.AppCompatActivity
import android.os.Bundle

class ${mainActivityClass} : AppCompatActivity() {

    private lateinit var mViewbinding: ${mainActivityClass}Binding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        mViewbinding = DataBindingUtil.setContentView(this, R.layout.${mainActivityLayout})
        mViewbinding.apply {
            setupFragment()
        }
    }

    private fun setupFragment() {
        supportFragmentManager.beginTransaction().replace(
            R.id.frame_${mainActivityClass}_container,
            ${mainFragmentClass}()
        ).commit()
    }
}