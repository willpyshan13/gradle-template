<?xml version="1.0"?>
<globals>
    <#include "root://gradle-projects/common/globals.xml.ftl" />
    <#include "root://gradle-projects/common/globals_android_module.xml.ftl" />
    <global id="isLibraryProject" type="boolean" value="${(isLibraryProject!false)?string}" />
    <global id="isApplicationProject" type="boolean" value="${(!(isLibraryProject!false))?string}" />
    <#include "root://activities/common/kotlin_globals.xml.ftl" />
</globals>


<#macro fileHeader>
/**
 * Desc:
 * 
 * Date: ${.now?string["yyyy-MM-dd HH:mm"]}
 * Copyright: Copyright (c) 2018-2019
 * Company: 
 * Updater:
 * Update Time:
 * Update Comments:
 *
 * @Author: [pengysh]
 */
</#macro>