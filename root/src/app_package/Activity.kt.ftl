package ${packageName}

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.${mainLayout}.*

class ${mainActivityName} : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${mainLayout})
        setupFragment()
    }

    private fun setupFragment(){
        supportFragmentManager.beginTransaction().replace(
            R.id.frame_${mainLayout}_container, 
            ${mainFragmentName}()
        ).commit()
    }
}