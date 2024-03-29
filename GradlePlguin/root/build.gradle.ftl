<#import "root://activities/common/kotlin_macros.ftl" as kt>
apply plugin: 'kotlin'
apply plugin: 'kotlin-kapt'
apply plugin: 'maven'
apply plugin: 'groovy'

repositories {
    jcenter()
    mavenCentral()
}

targetCompatibility = JavaVersion.VERSION_1_8
sourceCompatibility = JavaVersion.VERSION_1_8

dependencies {
    implementation gradleApi()
    implementation localGroovy()
    implementation 'org.ow2.asm:asm:7.1'
    implementation 'org.ow2.asm:asm-commons:7.1'
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
    compileOnly 'com.android.tools.build:gradle:3.5.0'
}