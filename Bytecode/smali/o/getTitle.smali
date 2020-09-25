.class public Lo/getTitle;
.super Lo/fromParcel;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTitle$extraCallback;,
        Lo/getTitle$ICustomTabsCallback;,
        Lo/getTitle$onMessageChannelReady;,
        Lo/getTitle$onPostMessage;
    }
.end annotation


# static fields
.field private static onMessageChannelReady:Lo/getTitle$onMessageChannelReady;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lo/fromParcel;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Activity;)V
    .locals 2

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/app/Activity;Lo/build;)V
    .locals 2

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 385
    new-instance v0, Lo/getTitle$extraCallback;

    invoke-direct {v0, p1}, Lo/getTitle$extraCallback;-><init>(Lo/build;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 387
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_1
    return-void
.end method

.method public static extraCallback(Landroid/app/Activity;)V
    .locals 2

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    :cond_0
    return-void
.end method

.method public static extraCallback(Landroid/app/Activity;Lo/build;)V
    .locals 2

    .line 402
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 404
    new-instance v0, Lo/getTitle$extraCallback;

    invoke-direct {v0, p1}, Lo/getTitle$extraCallback;-><init>(Lo/build;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 406
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Landroid/app/Activity;)V
    .locals 2

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static onNavigationEvent(Landroid/app/Activity;)V
    .locals 2

    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    .line 580
    :cond_0
    invoke-static {p0}, Lo/MediaDescriptionCompat$1;->ICustomTabsCallback(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    return-void
.end method

.method public static onNavigationEvent(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 549
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onPostMessage()Lo/getTitle$onMessageChannelReady;
    .locals 1

    .line 169
    sget-object v0, Lo/getTitle;->onMessageChannelReady:Lo/getTitle$onMessageChannelReady;

    return-object v0
.end method

.method public static onPostMessage(Landroid/app/Activity;)V
    .locals 2

    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static onPostMessage(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public static onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 2

    .line 491
    sget-object v0, Lo/getTitle;->onMessageChannelReady:Lo/getTitle$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 492
    invoke-interface {v0, p0, p1, p2}, Lo/getTitle$onMessageChannelReady;->extraCallback(Landroid/app/Activity;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 497
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 498
    instance-of v0, p0, Lo/getTitle$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 499
    move-object v0, p0

    check-cast v0, Lo/getTitle$ICustomTabsCallback;

    .line 500
    invoke-interface {v0, p2}, Lo/getTitle$ICustomTabsCallback;->validateRequestPermissionsRequestCode(I)V

    .line 502
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 503
    :cond_2
    instance-of v0, p0, Lo/getTitle$onPostMessage;

    if-eqz v0, :cond_3

    .line 504
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 505
    new-instance v1, Lo/getTitle$3;

    invoke-direct {v1, p1, p0, p2}, Lo/getTitle$3;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
