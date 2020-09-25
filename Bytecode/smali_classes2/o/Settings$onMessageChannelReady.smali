.class public interface abstract Lo/Settings$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onMessageChannelReady"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;)V
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/String;D)V
.end method

.method public abstract ICustomTabsCallback(Lo/SettingsRequest;)V
.end method

.method public abstract extraCallback()V
.end method

.method public abstract extraCallback(Ljava/lang/String;)V
.end method

.method public abstract extraCallback(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract onMessageChannelReady()Z
.end method

.method public abstract onNavigationEvent()Ljava/lang/String;
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;)Lo/Settings$onMessageChannelReady;
.end method

.method public abstract onNavigationEvent(Landroid/app/Activity;)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/String;Lo/AppRequestData;Lorg/json/JSONObject;)V
.end method

.method public abstract onPostMessage()Ljava/lang/String;
.end method

.method public abstract onPostMessage(Lo/AppRequestData;Landroid/app/Activity;)V
.end method

.method public abstract onTransact()V
.end method
