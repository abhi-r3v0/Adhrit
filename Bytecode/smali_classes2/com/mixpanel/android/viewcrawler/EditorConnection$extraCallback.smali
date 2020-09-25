.class public interface abstract Lcom/mixpanel/android/viewcrawler/EditorConnection$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/viewcrawler/EditorConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lorg/json/JSONObject;)V
.end method

.method public abstract extraCallback(Lorg/json/JSONObject;)V
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onMessageChannelReady(Lorg/json/JSONObject;)V
.end method

.method public abstract onNavigationEvent(Lorg/json/JSONObject;)V
.end method

.method public abstract onPostMessage()V
.end method

.method public abstract onPostMessage(Lorg/json/JSONObject;)V
.end method
