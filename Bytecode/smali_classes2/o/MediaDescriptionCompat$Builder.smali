.class public final Lo/MediaDescriptionCompat$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaDescriptionCompat$Builder$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public static ICustomTabsCallback(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    invoke-static {p0, p1}, Lo/MediaDescriptionCompat$Builder$onMessageChannelReady;->onNavigationEvent(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    .line 124
    :cond_0
    invoke-static {p0, p1, p2}, Lo/MediaDescriptionCompat$Builder$onMessageChannelReady;->ICustomTabsCallback(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
