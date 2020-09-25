.class public final Lo/getDimensionPixelOffset$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDimensionPixelOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->onPostMessage:Landroid/app/Activity;

    iput-object p2, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 58
    iget-object v0, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->onPostMessage:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    new-instance v1, Lcom/freshchat/consumer/sdk/FreshchatConfig;

    const-string v2, "3b05f391-0c12-47fc-8ba2-be51495b260a"

    const-string v3, "9e672525-ff8a-419e-8497-84d21ce923bf\n"

    invoke-direct {v1, v2, v3}, Lcom/freshchat/consumer/sdk/FreshchatConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->init(Lcom/freshchat/consumer/sdk/FreshchatConfig;)V

    .line 1028
    sget-object v1, Lo/initLifecycle;->ICustomTabsCallback:Lo/initLifecycle;

    invoke-virtual {v1}, Lo/initLifecycle;->extraCallback()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->setPushRegistrationToken(Ljava/lang/String;)V

    .line 1034
    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v1

    const-string v2, "Freshchat.getInstance(context)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/Freshchat;->getUser()Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v1

    const-string v3, "Freshchat.getInstance(context).user"

    invoke-static {v1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v3, Lo/setTrackTintMode;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1035
    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setFirstName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v3

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v4, Lo/setTrackTintMode;->extraCallback:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1035
    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setLastName(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v3

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v4}, Lo/setTrackTintMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    move-result-object v3

    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v4, Lo/setTrackTintMode;->onMessageChannelReady:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "+91"

    .line 1035
    invoke-virtual {v3, v5, v4}, Lcom/freshchat/consumer/sdk/FreshchatUser;->setPhone(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatUser;

    .line 1036
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v3, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1037
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/freshchat/consumer/sdk/Freshchat;->identifyUser(Ljava/lang/String;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Freshchat;

    .line 1039
    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->setUser(Lcom/freshchat/consumer/sdk/FreshchatUser;)Lcom/freshchat/consumer/sdk/Freshchat;

    .line 1040
    new-instance v1, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;-><init>()V

    .line 1041
    invoke-virtual {v1, v6}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setNotificationSoundEnabled(Z)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    .line 1042
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setNotificationSound(Landroid/net/Uri;)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    const v2, 0x7f080474

    .line 1043
    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setSmallIcon(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    const v2, 0x7f100001

    .line 1044
    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setLargeIcon(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    .line 1045
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    sget-object v2, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "active"

    .line 1045
    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_2

    const-class v2, Lcom/dreamplug/androidapp/SplashActivity;

    goto :goto_0

    :cond_2
    const-class v2, Lo/notifyDataSetChanged;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->launchActivityOnFinish(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    .line 1046
    invoke-virtual {v1, v7}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->setPriority(I)Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;

    move-result-object v1

    .line 1047
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/Freshchat;->setNotificationConfig(Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;)Lcom/freshchat/consumer/sdk/Freshchat;

    .line 59
    iget-object v0, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 6007
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_3

    .line 60
    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatMessage;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FreshchatMessage;-><init>()V

    const-string v1, "Help"

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatMessage;->setTag(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatMessage;

    move-result-object v0

    iget-object v1, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatMessage;->setMessage(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatMessage;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->onPostMessage:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/Freshchat;->sendMessage(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatMessage;)V

    .line 63
    :cond_3
    iget-object v0, p0, Lo/getDimensionPixelOffset$ICustomTabsCallback;->onPostMessage:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->showConversations(Landroid/content/Context;)V

    return-void
.end method
