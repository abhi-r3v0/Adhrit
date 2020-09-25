.class public Lo/setSubtitle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setSubtitle$onPostMessage;,
        Lo/setSubtitle$extraCallback;,
        Lo/setSubtitle$onNavigationEvent;,
        Lo/setSubtitle$onMessageChannelReady;,
        Lo/setSubtitle$onTransact;,
        Lo/setSubtitle$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .line 5764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5765
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    .line 5766
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5767
    invoke-static {p0}, Lo/setTitle;->ICustomTabsCallback(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
