<?xml version="1.0"?>
<recipe>

    <#if useSupport><dependency mavenUrl="com.android.support:support-v4:${buildApi}.+"/></#if>

    <dependency mavenUrl="com.google.android.gms:play-services:8.1.0"/>

    <#if includeLayout>
        <instantiate from="root/res/layout/fragment_layout.xml.ftl"
                       to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />

        <open file="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentName)}.xml" />
    </#if>



    <instantiate from="root/src/app_package/ViewFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${className}Fragment.kt" />

    <instantiate from="root/src/app_package/Presenter.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.kt" />

    <instantiate from="root/src/app_package/Contact.kt.ftl"
                  to="${escapeXmlAttribute(srcOut)}/contact/${className}Contact.kt" />

    <open file="${escapeXmlAttribute(srcOut)}/view/${className}Fragment.kt" />

</recipe>
