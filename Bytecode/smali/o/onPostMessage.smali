.class public abstract Lo/onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onPostMessage$onNavigationEvent;,
        Lo/onPostMessage$ICustomTabsCallback;,
        Lo/onPostMessage$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(Ljava/lang/CharSequence;)V
.end method

.method public ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback$Stub()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method asBinder()V
    .locals 0

    return-void
.end method

.method public asInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract extraCallback()I
.end method

.method public extraCallback(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public extraCallback(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMessageChannelReady()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMessageChannelReady(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public abstract onNavigationEvent()V
.end method

.method public onNavigationEvent(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public abstract onNavigationEvent(Ljava/lang/CharSequence;)V
.end method

.method public abstract onNavigationEvent(Z)V
.end method

.method public onNavigationEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPostMessage()V
    .locals 2

    .line 967
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostMessage(Z)V
    .locals 0

    return-void
.end method

.method public onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTransact()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
