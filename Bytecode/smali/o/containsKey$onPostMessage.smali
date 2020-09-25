.class public final Lo/containsKey$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/containsKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/containsKey$onPostMessage$onMessageChannelReady;,
        Lo/containsKey$onPostMessage$onNavigationEvent;
    }
.end annotation


# direct methods
.method public static onNavigationEvent(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 475
    invoke-static {p0}, Lo/containsKey$onPostMessage$onNavigationEvent;->onPostMessage(Landroid/content/res/Resources$Theme;)V

    return-void

    .line 476
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 477
    invoke-static {p0}, Lo/containsKey$onPostMessage$onMessageChannelReady;->extraCallback(Landroid/content/res/Resources$Theme;)V

    :cond_1
    return-void
.end method
