.class public interface abstract Lo/INotificationSideChannel$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomTabsCallback"
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/INotificationSideChannel;)V
.end method

.method public abstract extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z
.end method

.method public abstract onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
.end method

.method public abstract onPostMessage(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
.end method
