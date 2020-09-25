.class public Lo/getMinAmount;
.super Lo/PaymentItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMinAmount$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Object;

.field public static final extraCallback:Lo/getMinAmount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getMinAmount;->ICustomTabsCallback:Ljava/lang/Object;

    .line 203
    new-instance v0, Lo/getMinAmount;

    invoke-direct {v0}, Lo/getMinAmount;-><init>()V

    sput-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lo/PaymentItem;-><init>()V

    return-void
.end method

.method static extraCallback(Landroid/content/Context;ILo/setTotalDue;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    :cond_2
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 118
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_3
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->onMessageChannelReady(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 121
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_4
    invoke-static {p0, p1}, Lo/CardFinalPaymentData;->extraCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 124
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback()Lo/getMinAmount;
    .locals 1

    .line 1
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    .line 55
    invoke-static {p0, v0}, Lo/CardFinalPaymentData;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    .line 57
    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    .line 59
    invoke-static {p0, v0, v1, p1}, Lo/getMinAmount;->onNavigationEvent(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method static onNavigationEvent(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 126
    instance-of v0, p0, Lo/onSessionEvent;

    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Lo/onSessionEvent;

    .line 129
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 131
    invoke-static {p1, p3}, Lo/setTotalAmount;->extraCallback(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/setTotalAmount;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p0, p2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 135
    invoke-static {p1, p3}, Lo/getCurrency;->onNavigationEvent(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/getCurrency;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p0, p2}, Lo/getCurrency;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 11

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 7198
    new-instance p2, Lo/getMinAmount$ICustomTabsCallback;

    invoke-direct {p2, p0, p1}, Lo/getMinAmount$ICustomTabsCallback;-><init>(Lo/getMinAmount;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    .line 7199
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v1, 0x6

    if-nez p3, :cond_2

    if-ne p2, v1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 145
    :cond_2
    invoke-static {p1, p2}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    if-eq p2, v1, :cond_4

    const/16 v1, 0x13

    if-ne p2, v1, :cond_3

    goto :goto_0

    .line 8055
    :cond_3
    invoke-static {p1, p2}, Lo/CardFinalPaymentData;->ICustomTabsCallback(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8053
    :cond_4
    :goto_0
    invoke-static {p1}, Lo/CardFinalPaymentData;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "common_google_play_services_resolution_required_text"

    .line 8054
    invoke-static {p1, v3, v1}, Lo/CardFinalPaymentData;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    .line 149
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 150
    new-instance v5, Lo/setSubtitle$ICustomTabsCallback;

    invoke-direct {v5, p1}, Lo/setSubtitle$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v5, v0}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Z)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v5

    .line 152
    invoke-virtual {v5, v0}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Z)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v5

    .line 153
    invoke-virtual {v5, v2}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v2

    new-instance v5, Lo/setSubtitle$onNavigationEvent;

    invoke-direct {v5}, Lo/setSubtitle$onNavigationEvent;-><init>()V

    .line 154
    invoke-virtual {v5, v1}, Lo/setSubtitle$onNavigationEvent;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onNavigationEvent;

    move-result-object v5

    invoke-virtual {v2, v5}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v2

    .line 9015
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lo/component17;->onPostMessage(Landroid/content/pm/PackageManager;)Z

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-eqz v5, :cond_c

    .line 10011
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v1, v5, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_b

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {v2, v1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v6}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    .line 12015
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lo/component17;->onPostMessage(Landroid/content/pm/PackageManager;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13015
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v1, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    .line 11023
    invoke-static {p1}, Lo/component17;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 13016
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_a

    .line 161
    sget v1, Lo/OrderPaymentJsonAdapter$extraCallback;->common_full_open_on_phone:I

    sget v5, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_open_on_phone:I

    .line 162
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-virtual {v2, v1, v3, p3}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    goto :goto_6

    .line 164
    :cond_a
    invoke-virtual {v2, p3}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    goto :goto_6

    .line 10026
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_c
    const v5, 0x108008a

    .line 166
    invoke-virtual {v2, v5}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v5

    sget v9, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_notification_ticker:I

    .line 167
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v3

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(J)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v3

    .line 169
    invoke-virtual {v3, p3}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p3

    .line 170
    invoke-virtual {p3, v1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    .line 14016
    :goto_6
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v7, :cond_d

    const/4 p3, 0x1

    goto :goto_7

    :cond_d
    const/4 p3, 0x0

    :goto_7
    if-eqz p3, :cond_12

    .line 15016
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v7, :cond_e

    const/4 p3, 0x1

    goto :goto_8

    :cond_e
    const/4 p3, 0x0

    :goto_8
    if-eqz p3, :cond_11

    .line 15085
    sget-object p3, Lo/getMinAmount;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p3

    .line 15086
    monitor-exit p3

    const-string p3, "com.google.android.gms.availability"

    .line 179
    invoke-virtual {v4, p3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    .line 15093
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 15094
    sget v3, Lo/OrderPaymentJsonAdapter$onMessageChannelReady;->common_google_play_services_notification_channel_name:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_f

    .line 183
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    invoke-direct {v1, p3, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_9

    .line 184
    :cond_f
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 185
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 189
    :cond_10
    :goto_9
    invoke-virtual {v2, p3}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;)Lo/setSubtitle$ICustomTabsCallback;

    goto :goto_a

    .line 15026
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 190
    :cond_12
    :goto_a
    invoke-virtual {v2}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v0, :cond_13

    if-eq p2, v6, :cond_13

    const/4 p3, 0x3

    if-eq p2, p3, :cond_13

    const p2, 0x9b6d

    goto :goto_b

    :cond_13
    const/16 p2, 0x28c4

    .line 193
    sget-object p3, Lo/getTotalAmount;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    :goto_b
    invoke-virtual {v4, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    .line 1098
    invoke-super {p0, p1, p2, v0}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {p1, v0, p3}, Lo/setTotalDue;->onMessageChannelReady(Landroid/app/Activity;Landroid/content/Intent;I)Lo/setTotalDue;

    move-result-object p3

    .line 18
    invoke-static {p1, p2, p3, p4}, Lo/getMinAmount;->extraCallback(Landroid/content/Context;ILo/setTotalDue;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/content/Context;)I
    .locals 0

    .line 95
    invoke-super {p0, p1}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final extraCallback(Landroid/content/Context;I)I
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final extraCallback(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/getMinAmount;->ICustomTabsCallback(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 31
    invoke-static {p1, p2, p3, p4}, Lo/getMinAmount;->onNavigationEvent(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(I)Z
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lo/PaymentItem;->onMessageChannelReady(I)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Landroid/app/Activity;Lo/Transaction;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string p4, "d"

    .line 2098
    invoke-super {p0, p1, p3, p4}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 v0, 0x2

    .line 22
    invoke-static {p2, p4, v0}, Lo/setTotalDue;->ICustomTabsCallback(Lo/Transaction;Landroid/content/Intent;I)Lo/setTotalDue;

    move-result-object p2

    .line 23
    invoke-static {p1, p3, p2, p5}, Lo/getMinAmount;->extraCallback(Landroid/content/Context;ILo/setTotalDue;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 26
    invoke-static {p1, p2, p3, p5}, Lo/getMinAmount;->onNavigationEvent(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lo/PaymentItem;->onNavigationEvent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(I)Ljava/lang/String;
    .locals 0

    .line 104
    invoke-super {p0, p1}, Lo/PaymentItem;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/content/Context;Lo/getFirstName;)Lo/ProfileResponse;
    .locals 2

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lo/ProfileResponse;

    invoke-direct {v1, p2}, Lo/ProfileResponse;-><init>(Lo/getFirstName;)V

    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1, p1}, Lo/ProfileResponse;->ICustomTabsCallback(Landroid/content/Context;)V

    const-string v0, "com.google.android.gms"

    .line 7032
    invoke-static {p1, v0}, Lo/getTotalAmount;->onPostMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    invoke-virtual {p2}, Lo/getFirstName;->onPostMessage()V

    .line 68
    invoke-virtual {v1}, Lo/ProfileResponse;->onPostMessage()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public final onNavigationEvent(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "n"

    .line 3022
    invoke-virtual {p0, p1, p2, v0}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3025
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 36
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lo/getMinAmount;->onPostMessage(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public final onPostMessage(Landroid/content/Context;Lo/setReferenceId;I)Z
    .locals 3

    .line 4019
    iget v0, p2, Lo/setReferenceId;->onNavigationEvent:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4022
    iget-object v0, p2, Lo/setReferenceId;->onMessageChannelReady:Landroid/app/PendingIntent;

    goto :goto_1

    .line 5021
    :cond_1
    iget v0, p2, Lo/setReferenceId;->onNavigationEvent:I

    .line 5099
    invoke-super {p0, p1, v0, v2}, Lo/PaymentItem;->onNavigationEvent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 6021
    iget p2, p2, Lo/setReferenceId;->onNavigationEvent:I

    .line 7003
    invoke-static {p1, v0, p3, v1}, Lcom/google/android/gms/common/api/GoogleApiActivity;->onPostMessage(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p3

    const/high16 v0, 0x8000000

    .line 7004
    invoke-static {p1, v2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lo/getMinAmount;->onPostMessage(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v1

    :cond_2
    return v2
.end method
