.class public Lcom/freshchat/consumer/sdk/h/b;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/h/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/h/b;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static N(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->ee()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Exception parsing the string as uri for notification sound: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x2

    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static O(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;I)Landroid/app/Notification;
    .locals 7

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/h/a;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(J)Lo/setSubtitle$ICustomTabsCallback;

    :cond_0
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/h/b;->f(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    new-instance v4, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    move-result-object v4

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/af;->aw(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/FreshchatImageLoader;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v4}, Lcom/freshchat/consumer/sdk/FreshchatImageLoader;->get(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_1
    new-instance v4, Lo/setSubtitle$onMessageChannelReady;

    invoke-direct {v4}, Lo/setSubtitle$onMessageChannelReady;-><init>()V

    invoke-virtual {v4, v3}, Lo/setSubtitle$onMessageChannelReady;->extraCallback(Landroid/graphics/Bitmap;)Lo/setSubtitle$onMessageChannelReady;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/setSubtitle$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onMessageChannelReady;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v3, Lo/setSubtitle$onNavigationEvent;

    invoke-direct {v3}, Lo/setSubtitle$onNavigationEvent;-><init>()V

    invoke-virtual {v3, v2}, Lo/setSubtitle$onNavigationEvent;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onNavigationEvent;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isNotificationInterceptionEnabled()Z

    move-result v2

    const/high16 v3, 0x10000000

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/freshchat/consumer/sdk/receiver/FreshchatReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.freshchat.consumer.sdk.actions.NotificationClicked"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->v(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "FRESHCHAT_DEEPLINK"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, p2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;Lcom/freshchat/consumer/sdk/b/e;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p2, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_1
    invoke-virtual {v1, p0}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    invoke-virtual {v1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;Lcom/freshchat/consumer/sdk/b/e;)Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/DeeplinkInterstitialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/b/e;->bU()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dm()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "LAUNCH_APP_ON_CLICK"

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class p2, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v2

    const-string p2, "CHANNEL_ID"

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;J)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "UNFETCHED_CHANNEL"

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p2, p0, v2

    if-lez p2, :cond_3

    const-string p2, "NOTIFICATION_CLICKED"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "MARKETING_ID"

    invoke-virtual {v0, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_3
    const-string p0, "LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 4

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/freshchat/consumer/sdk/h/b;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p0, Lcom/google/firebase/messaging/RemoteMessage;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/h/a;)Lo/setSubtitle$ICustomTabsCallback;
    .locals 6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bQ()I

    move-result v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->n(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->o(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/h/b;->d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2}, Lcom/freshchat/consumer/sdk/h/b;->f(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lo/setSubtitle$ICustomTabsCallback;

    invoke-direct {v5, p0}, Lo/setSubtitle$ICustomTabsCallback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1, v2}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Landroid/graphics/Bitmap;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Z)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v0

    new-instance v1, Lo/setSubtitle$onNavigationEvent;

    invoke-direct {v1}, Lo/setSubtitle$onNavigationEvent;-><init>()V

    invoke-virtual {v1, v4}, Lo/setSubtitle$onNavigationEvent;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onNavigationEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$color;->freshchat_notification_accent_color:I

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(I)Lo/setSubtitle$ICustomTabsCallback;

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->isNotificationSoundEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->N(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Landroid/net/Uri;)Lo/setSubtitle$ICustomTabsCallback;

    :cond_1
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eN()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->P(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string p1, "fc_campaign_notif_ch"

    goto :goto_1

    :cond_3
    const-string p1, "fc_conv_notif_ch"

    :goto_1
    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/h/b;->s(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Z)V

    :cond_4
    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Ljava/lang/String;Lo/setSubtitle$ICustomTabsCallback;)V

    :cond_5
    return-object v0
.end method

.method public static a(Landroid/content/Context;JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/freshchat/consumer/sdk/h/b;->b(JJ)I

    move-result p1

    if-lez p1, :cond_0

    const-string p2, "notification"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;)V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->h(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getImportance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->D(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->isNotificationSoundEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getNotificationSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getNotificationSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->L(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getActivityToLaunchOnFinish()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getActivityToLaunchOnFinish()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->F(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getLargeIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->j(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->getSmallIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/b/e;->i(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatNotificationConfig;->isNotificationInterceptionEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/b/e;->u(Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V
    .locals 9

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getConversationId()J

    move-result-wide v4

    const/4 v6, 0x6

    sget-object v7, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;JJILcom/freshchat/consumer/sdk/service/e/d$a;Z)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    return-void

    :cond_2
    sget-object v0, Lcom/freshchat/consumer/sdk/h/b;->TAG:Ljava/lang/String;

    const-string v1, "Received message from a new unfetched channel"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->j(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/b$a;->ge:Lcom/freshchat/consumer/sdk/service/e/b$a;

    new-instance v1, Lcom/freshchat/consumer/sdk/h/b$1;

    invoke-direct {v1, p0, p1}, Lcom/freshchat/consumer/sdk/h/b$1;-><init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/service/e/b$a;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lo/setSubtitle$ICustomTabsCallback;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eN()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->P(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lo/setSubtitle$ICustomTabsCallback;

    const-string v0, "ICustomTabsCallback"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(JZ)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->H()J

    move-result-wide v1

    cmp-long p2, p0, v1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;J)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/freshchat/consumer/sdk/c/c;->e(J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    const-wide/16 v1, 0x0

    cmp-long p0, p2, v1

    if-lez p0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/freshchat/consumer/sdk/c/g;->j(J)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/c/g;->X(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Message;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/freshchat/consumer/sdk/h/b;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Ignoring duplicate message "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(JJ)I
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aB(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_0
    cmp-long p2, p0, v0

    if-lez p2, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_4

    const-string v0, "notif_type"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->e(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/freshchat/consumer/sdk/h/a;

    invoke-direct {v1, p1}, Lcom/freshchat/consumer/sdk/h/a;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/h/a;->getConversationId()J

    move-result-wide v4

    invoke-static {p0, v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/j/bg;->d(Landroid/content/Context;JJ)V

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/h/a;->do()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/freshchat/consumer/sdk/j/as;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/h/b;->c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unknown notification category "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FRESHCHAT"

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p0, v1}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V
    .locals 6

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/h/b;->b(JJ)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;I)Landroid/app/Notification;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->dm()Z

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/freshchat/consumer/sdk/h/b;->a(JZ)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->g(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/a;->aJ(Landroid/content/Context;)V

    sget-object v1, Lcom/freshchat/consumer/sdk/h/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Notified with Id "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for channel id: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", marketing id: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/freshchat/consumer/sdk/j/aa;->e(Landroid/content/Context;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fI()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "fc_campaign_notif_ch"

    goto :goto_0

    :cond_1
    const-string v0, "fc_conv_notif_ch"

    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_campaign_notification_channel_name:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_conversation_notification_channel_name:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/as;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/b/e;->gw()I

    move-result v2

    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v0, p1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/h/b;->N(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to create notification channel for the app with channel id : "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic b(JZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/freshchat/consumer/sdk/h/b;->a(JZ)Z

    move-result p0

    return p0
.end method

.method public static bj(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/freshchat/consumer/sdk/c/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/c/c;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/freshchat/consumer/sdk/c/g;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/c/g;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/freshchat/consumer/sdk/c/c;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freshchat/consumer/sdk/beans/Channel;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/aa;->aB(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/c/g;->i(J)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/aa;->aB(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V
    .locals 7

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getChannelId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/freshchat/consumer/sdk/h/b;->b(JJ)I

    move-result v5

    invoke-static {p0, v0, p1}, Lcom/freshchat/consumer/sdk/h/b;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/b/e;Lcom/freshchat/consumer/sdk/h/a;)Lo/setSubtitle$ICustomTabsCallback;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "CHANNEL_ID"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-static {p0, v5, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    invoke-virtual {p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback()Landroid/app/Notification;

    move-result-object v6

    sget-object p1, Lcom/freshchat/consumer/sdk/service/e/d$a;->gj:Lcom/freshchat/consumer/sdk/service/e/d$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/h/b$2;

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/freshchat/consumer/sdk/h/b$2;-><init>(JLandroid/content/Context;ILandroid/app/Notification;)V

    const/4 v1, 0x6

    invoke-static {p0, v1, p1, v0}, Lcom/freshchat/consumer/sdk/j/b;->a(Landroid/content/Context;ILcom/freshchat/consumer/sdk/service/e/d$a;Lcom/freshchat/consumer/sdk/service/a;)V

    return-void
.end method

.method private static d(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getMarketingId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_promotional_message_notification_title:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_support_message_notification_title:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_placeholder_app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->ao(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static dq()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.messaging.RemoteMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic e(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/h/b;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Lcom/freshchat/consumer/sdk/h/a;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->fK()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_chat_resolution_survey_question:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/h/a;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private static n(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bR()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bR()I

    move-result p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/freshchat/consumer/sdk/R$style;->Theme_Freshchat_SelectedTheme:I

    sget v1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatContactUsIcon:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->a(Landroid/content/Context;IIZ)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/freshchat/consumer/sdk/R$drawable;->freshchat_ic_action_contact_us:I

    :goto_0
    return p0
.end method

.method private static o(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bS()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/e;->bS()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/g;->ab(Landroid/content/Context;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    sget v2, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_notification_large_icon_size:I

    invoke-static {p0, v1, v2}, Lcom/freshchat/consumer/sdk/j/af;->b(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FRESHCHAT_WARNING"

    invoke-static {v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static s(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception detecting presence of notification channel for channel id :"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FRESHCHAT"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method
