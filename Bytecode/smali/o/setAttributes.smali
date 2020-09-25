.class public final Lo/setAttributes;
.super Lo/getTotalAmount;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getTotalAmount;-><init>()V

    return-void
.end method

.method public static getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0}, Lo/setAttributes;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p1, p0}, Lo/getTotalAmount;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    .line 1001
    :cond_0
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 9
    invoke-virtual {v0, p1, p0, p2, p3}, Lo/getMinAmount;->ICustomTabsCallback(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lo/getTotalAmount;->getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-static {p0}, Lo/getTotalAmount;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-static {p0}, Lo/getTotalAmount;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    .line 43
    invoke-static {p0}, Lo/getTotalAmount;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0}, Lo/getTotalAmount;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lo/getTotalAmount;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-static {p0}, Lo/getTotalAmount;->isUserRecoverableError(I)Z

    move-result p0

    return p0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, p2, v0}, Lo/setAttributes;->showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, p1, v0, p2, p3}, Lo/setAttributes;->showErrorDialogFragment(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0
.end method

.method public static showErrorDialogFragment(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    .line 13
    invoke-static {p1, p0}, Lo/getTotalAmount;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x12

    .line 2001
    :cond_0
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    if-nez p2, :cond_1

    .line 18
    invoke-virtual {v0, p1, p0, p3, p4}, Lo/getMinAmount;->extraCallback(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p0

    return p0

    .line 3001
    :cond_1
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    const-string v1, "d"

    .line 20
    invoke-virtual {v0, p1, p0, v1}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    invoke-static {p2, v0, p3}, Lo/setTotalDue;->onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lo/setTotalDue;

    move-result-object p2

    .line 23
    invoke-static {p1, p0, p2, p4}, Lo/getMinAmount;->extraCallback(Landroid/content/Context;ILo/setTotalDue;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p2, "GooglePlayServicesErrorDialog"

    .line 26
    invoke-static {p1, p0, p2, p4}, Lo/getMinAmount;->onNavigationEvent(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static showErrorNotification(ILandroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4001
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 30
    invoke-static {p1, p0}, Lo/getTotalAmount;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    invoke-static {p1, p0}, Lo/getTotalAmount;->isPlayStorePossiblyUpdating(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, p1, p0}, Lo/getMinAmount;->onNavigationEvent(Landroid/content/Context;I)V

    return-void

    .line 4198
    :cond_1
    :goto_0
    new-instance p0, Lo/getMinAmount$ICustomTabsCallback;

    invoke-direct {p0, v0, p1}, Lo/getMinAmount$ICustomTabsCallback;-><init>(Lo/getMinAmount;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v0, 0x1d4c0

    .line 4199
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
