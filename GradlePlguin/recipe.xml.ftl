<?xml version="1.0"?>
<!-- TODO: check include Cpp support; add driver module template -->
<recipe>
	<mkdir at="${escapeXmlAttribute(projectOut)}/src/main/kotlin/" />
	<mkdir at="${escapeXmlAttribute(projectOut)}/src/main/groovy/" />
	<mkdir at="${escapeXmlAttribute(projectOut)}/src/main/resources/META-INF/gradle-plugins/" />

    <merge from="root/settings.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />

    <instantiate from="root/build.gradle.ftl"
                   to="${escapeXmlAttribute(projectOut)}/build.gradle" />
				   
	<instantiate from="root/src/app_package/plguin.properties.ftl"
                   to="${escapeXmlAttribute(projectOut)}/src/main/resources/META_INF/gradle-lugins/${packageName}.properties" />
	

<#include "root://gradle-projects/common/proguard_recipe.xml.ftl"/>
</recipe>
