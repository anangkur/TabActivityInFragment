<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mainActivityName}.kt" />

    <instantiate from="src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mainFragmentName}.kt" />

    <instantiate from="src/app_package/FragmentTab.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${tabFragmentName}.kt" />

    <instantiate from="src/app_package/ViewPagerAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ViewPagerAdapter.kt" />

    <instantiate from="res/layout/activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${mainLayout}.xml" />

    <instantiate from="res/layout/fragment.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${mainFragmentLayout}.xml" />

    <instantiate from="res/layout/fragment_tab.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${tabFragmentLayout}.xml" />
    
    <open file="${escapeXmlAttribute(resOut)}/layout/${mainLayout}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${mainFragmentLayout}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${tabFragmentLayout}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${mainActivityName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${mainFragmentName}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${tabFragmentName}.java" />
</recipe>