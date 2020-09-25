.class public Lo/getCacheDuration;
.super Lo/Sha1FileIdStrategy;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lo/Sha1FileIdStrategy;-><init>()V

    return-void
.end method

.method protected static extraCallback(Landroid/os/Bundle;Landroid/app/NotificationManager;)V
    .locals 3

    const-string v0, "mp_notification_id"

    .line 186
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "mp_tag"

    .line 187
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {p1, p0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void

    .line 193
    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Lo/isExpired;)V
    .locals 4

    .line 166
    invoke-virtual {p2, p1}, Lo/isExpired;->onMessageChannelReady(Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object p1

    .line 2665
    iget-object v0, p2, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    if-nez v0, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 3082
    :cond_0
    iget-object v1, v0, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 170
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MP FCM notification received: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MixpanelAPI.MixpanelFCMMessagingService"

    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 3614
    iget-object v1, p2, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lo/isExpired;->ICustomTabsCallback:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    const-string v1, "MP FCM notification has error"

    .line 174
    invoke-static {v2, v1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "notification"

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 177
    iget-object v1, v0, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5128
    iget-object p2, v0, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, p2, v3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    .line 5602
    :cond_3
    iget p2, p2, Lo/isExpired;->onNavigationEvent:I

    .line 180
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    return-void
.end method

.method static onNavigationEvent()V
    .locals 2

    .line 84
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lo/getCacheDuration$5;

    invoke-direct {v1}, Lo/getCacheDuration$5;-><init>()V

    .line 85
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onPostMessage(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static onNavigationEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 149
    new-instance v0, Lo/isExpired;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/isExpired;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {p0, p1, v0}, Lo/getCacheDuration;->onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Lo/isExpired;)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 130
    new-instance v0, Lo/getCacheDuration$3;

    invoke-direct {v0, p0}, Lo/getCacheDuration$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/Settings;->ICustomTabsCallback(Lo/Settings$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lo/Sha1FileIdStrategy;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    const-string v0, "MixpanelAPI.MixpanelFCMMessagingService"

    const-string v1, "MP FCM on new message received"

    .line 99
    invoke-static {v0, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->toIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1149
    new-instance v1, Lo/isExpired;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/isExpired;-><init>(Landroid/content/Context;)V

    .line 1150
    invoke-static {v0, p1, v1}, Lo/getCacheDuration;->onMessageChannelReady(Landroid/content/Context;Landroid/content/Intent;Lo/isExpired;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lo/Sha1FileIdStrategy;->onNewToken(Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP FCM on new push token: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MixpanelAPI.MixpanelFCMMessagingService"

    invoke-static {v1, v0}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    new-instance v0, Lo/getCacheDuration$3;

    invoke-direct {v0, p1}, Lo/getCacheDuration$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/Settings;->ICustomTabsCallback(Lo/Settings$ICustomTabsCallback;)V

    return-void
.end method
