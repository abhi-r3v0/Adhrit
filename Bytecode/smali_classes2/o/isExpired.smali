.class public final Lo/isExpired;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:Z

.field private asBinder:Lo/getAppSettingsData;

.field private extraCallback:I

.field private onMessageChannelReady:Landroid/content/Context;

.field onNavigationEvent:I

.field onPostMessage:Lo/getExpiresAtMillis;

.field private onRelationshipValidationResult:J

.field private onTransact:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 61
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lo/isExpired;-><init>(Landroid/content/Context;Landroid/app/Notification$Builder;J)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification$Builder;J)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lo/isExpired;->ICustomTabsCallback:Z

    .line 65
    iput-object p1, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    .line 2682
    invoke-static {p1}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object p2

    .line 3485
    iget-object p2, p2, Lo/SessionSettingsData;->extraCommand:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2685
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2687
    :cond_0
    new-instance v0, Lo/CreateAppSpiCall$onMessageChannelReady;

    invoke-direct {v0, p2, p1}, Lo/CreateAppSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 67
    iput-object v0, p0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    .line 68
    iput-wide p3, p0, Lo/isExpired;->onRelationshipValidationResult:J

    long-to-int p1, p3

    .line 69
    iput p1, p0, Lo/isExpired;->extraCallback:I

    .line 70
    iput p1, p0, Lo/isExpired;->onNavigationEvent:I

    return-void
.end method

.method private ICustomTabsCallback(Lo/getExpiresAtMillis$onNavigationEvent;)Landroid/os/Bundle;
    .locals 3

    .line 480
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mp_tap_target"

    const-string v2, "notification"

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 50174
    iget-object v1, p1, Lo/getExpiresAtMillis$onNavigationEvent;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    .line 482
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mp_tap_action_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 50175
    iget-object p1, p1, Lo/getExpiresAtMillis$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "mp_tap_action_uri"

    .line 483
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 484
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50176
    iget-object p1, p1, Lo/getExpiresAtMillis;->mayLaunchUrl:Ljava/lang/String;

    const-string v1, "mp_message_id"

    .line 484
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 485
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50177
    iget-object p1, p1, Lo/getExpiresAtMillis;->postMessage:Ljava/lang/String;

    const-string v1, "mp_campaign_id"

    .line 485
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 486
    iget p1, p0, Lo/isExpired;->onNavigationEvent:I

    const-string v1, "mp_notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 487
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50178
    iget-boolean p1, p1, Lo/getExpiresAtMillis;->ICustomTabsService:Z

    const-string v1, "mp_is_sticky"

    .line 487
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 488
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50179
    iget-object p1, p1, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    const-string v1, "mp_tag"

    .line 488
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 50180
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50184
    iget-object p1, p1, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 50181
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50185
    iget-object p1, p1, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_0

    .line 50183
    :cond_0
    iget p1, p0, Lo/isExpired;->onNavigationEvent:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "mp_canonical_notification_id"

    .line 489
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 490
    iget-object p1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50186
    iget-object p1, p1, Lo/getExpiresAtMillis;->validateRelationship:Ljava/lang/String;

    const-string v1, "mp"

    .line 490
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 654
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 655
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "UTC"

    .line 656
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 658
    :cond_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/getExpiresAtMillis$ICustomTabsCallback;",
            ">;"
        }
    .end annotation

    const-string v0, "MixpanelAPI.MixpanelPushNotification"

    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 356
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 357
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 358
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "lbl"

    .line 361
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ontap"

    .line 364
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lo/isExpired;->onPostMessage(Ljava/lang/String;)Lo/getExpiresAtMillis$onNavigationEvent;

    move-result-object v5

    const-string v6, "id"

    .line 367
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_1

    .line 372
    :cond_0
    new-instance v6, Lo/getExpiresAtMillis$ICustomTabsCallback;

    invoke-direct {v6, v4, v5, v3}, Lo/getExpiresAtMillis$ICustomTabsCallback;-><init>(Ljava/lang/String;Lo/getExpiresAtMillis$onNavigationEvent;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    const-string v3, "Null button data received. No buttons will be rendered."

    .line 370
    invoke-static {v0, v3}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Exception parsing buttons payload"

    .line 376
    invoke-static {v0, v2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method

.method private extraCallback()V
    .locals 9

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 345
    :goto_0
    iget-object v1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50155
    iget-object v1, v1, Lo/getExpiresAtMillis;->onTransact:Ljava/util/List;

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50156
    iget-object v1, v1, Lo/getExpiresAtMillis;->onTransact:Ljava/util/List;

    .line 346
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getExpiresAtMillis$ICustomTabsCallback;

    .line 347
    iget-object v2, p0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    .line 50157
    iget-object v3, v1, Lo/getExpiresAtMillis$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    .line 50158
    iget-object v4, v1, Lo/getExpiresAtMillis$ICustomTabsCallback;->onNavigationEvent:Lo/getExpiresAtMillis$onNavigationEvent;

    .line 50159
    iget-object v1, v1, Lo/getExpiresAtMillis$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 50160
    new-instance v5, Landroid/app/Notification$Action$Builder;

    const/4 v6, -0x1

    .line 50168
    invoke-direct {p0, v4}, Lo/isExpired;->ICustomTabsCallback(Lo/getExpiresAtMillis$onNavigationEvent;)Landroid/os/Bundle;

    move-result-object v4

    const-string v7, "mp_tap_target"

    const-string v8, "button"

    .line 50169
    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "mp_button_id"

    .line 50170
    invoke-virtual {v4, v7, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "mp_button_label"

    .line 50171
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 50164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v7, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    const-class v8, Lo/SettingsData;

    .line 50165
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 50166
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x40000000    # 2.0f

    .line 50167
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 50162
    iget-object v4, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    iget v7, p0, Lo/isExpired;->extraCallback:I

    add-int/2addr v7, v0

    const/high16 v8, 0x10000000

    invoke-static {v4, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50160
    invoke-direct {v5, v6, v3, v1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 347
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMessageChannelReady()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 577
    :try_start_0
    iget-object v0, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 673
    new-instance v0, Lcom/mixpanel/android/util/ImageStore;

    iget-object v1, p0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    const-string v2, "MixpanelPushNotification"

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/util/ImageStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/mixpanel/android/util/ImageStore;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Lcom/mixpanel/android/util/ImageStore$CantGetImageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private onPostMessage(Ljava/lang/String;)Lo/getExpiresAtMillis$onNavigationEvent;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 387
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 388
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 390
    sget-object v2, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uri"

    .line 391
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    new-instance v2, Lo/getExpiresAtMillis$onNavigationEvent;

    invoke-static {p1}, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/getExpiresAtMillis$onPostMessage;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_0
    new-instance v2, Lo/getExpiresAtMillis$onNavigationEvent;

    invoke-static {p1}, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Lo/getExpiresAtMillis$onPostMessage;

    move-result-object p1

    invoke-direct {v2, p1}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;)V

    .line 50173
    :goto_0
    iget-object p1, v2, Lo/getExpiresAtMillis$onNavigationEvent;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lo/getExpiresAtMillis$onPostMessage;->onNavigationEvent:Lo/getExpiresAtMillis$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 398
    iput-boolean p1, p0, Lo/isExpired;->ICustomTabsCallback:Z

    .line 399
    new-instance p1, Lo/getExpiresAtMillis$onNavigationEvent;

    sget-object v1, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

    invoke-direct {p1, v1}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_0
    const-string p1, "MixpanelAPI.MixpanelPushNotification"

    const-string v1, "Exception occurred while parsing ontap"

    .line 402
    invoke-static {p1, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method final onMessageChannelReady(Landroid/content/Intent;)Landroid/app/Notification;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "mp_message"

    .line 4114
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mp_icnm"

    .line 4115
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp_icnm_l"

    .line 4116
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp_icnm_w"

    .line 4117
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mp_img"

    .line 4118
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mp_cta"

    .line 4119
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mp_ontap"

    .line 4120
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mp_title"

    .line 4121
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mp_subtxt"

    .line 4122
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mp_color"

    .line 4123
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mp_buttons"

    .line 4124
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "mp_campaign_id"

    .line 4125
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "mp_message_id"

    move-object/from16 v16, v13

    .line 4126
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v15

    const-string v15, "mp"

    move-object/from16 v18, v7

    .line 4127
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v19, v15

    const-string v15, "mp_bdgcnt"

    .line 4128
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v8

    const-string v8, "mp_channel_id"

    .line 4129
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v9

    const-string v9, "mp_tag"

    .line 4130
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v5

    const-string v5, "mp_groupkey"

    .line 4131
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "mp_ticker"

    .line 4132
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v3

    const-string v3, "mp_sticky"

    .line 4133
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    const-string v3, "mp_time"

    .line 4134
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v10

    const-string v10, "mp_visibility"

    .line 4135
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v26, v11

    const-string v11, "mp_silent"

    .line 4136
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4138
    new-instance v11, Lo/getExpiresAtMillis;

    invoke-direct {v11}, Lo/getExpiresAtMillis;-><init>()V

    iput-object v11, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 5086
    iput-object v2, v11, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 4140
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6048
    iput-object v4, v2, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 4141
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6063
    iput-object v6, v2, Lo/getExpiresAtMillis;->onPostMessage:Ljava/lang/String;

    .line 4142
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6132
    iput-object v9, v2, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    .line 4144
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6148
    iput-object v5, v2, Lo/getExpiresAtMillis;->warmup:Ljava/lang/String;

    .line 4145
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6164
    iput-object v3, v2, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    .line 4146
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6187
    iput-object v14, v2, Lo/getExpiresAtMillis;->postMessage:Ljava/lang/String;

    .line 4147
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 6191
    iput-object v13, v2, Lo/getExpiresAtMillis;->mayLaunchUrl:Ljava/lang/String;

    .line 4148
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    invoke-direct {v0, v12}, Lo/isExpired;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 7109
    iput-object v3, v2, Lo/getExpiresAtMillis;->onTransact:Ljava/util/List;

    .line 4149
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 7195
    iput-object v7, v2, Lo/getExpiresAtMillis;->validateRelationship:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v15, :cond_0

    .line 4154
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v4, :cond_1

    :catch_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    .line 4162
    :cond_1
    :goto_0
    iget-object v5, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 8116
    iput v4, v5, Lo/getExpiresAtMillis;->onMessageChannelReady:I

    const/4 v4, 0x1

    if-eqz v10, :cond_8

    .line 4166
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0x204d7536

    if-eq v5, v6, :cond_4

    const v6, 0x74ce9c36

    if-eq v5, v6, :cond_3

    const v6, 0x790c387d

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "VISIBILITY_SECRET"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const-string v5, "VISIBILITY_PUBLIC"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const-string v5, "VISIBILITY_PRIVATE"

    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_7

    if-eq v5, v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, -0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x0

    .line 4178
    :goto_4
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 8172
    iput v5, v6, Lo/getExpiresAtMillis;->ICustomTabsCallback$Stub$Proxy:I

    if-eqz v8, :cond_9

    .line 4181
    iget-object v5, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 9124
    iput-object v8, v5, Lo/getExpiresAtMillis;->asInterface:Ljava/lang/String;

    :cond_9
    if-eqz v26, :cond_a

    .line 4187
    :try_start_1
    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :cond_a
    const/4 v5, -0x1

    .line 4190
    :goto_5
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 10102
    iput v5, v6, Lo/getExpiresAtMillis;->onNavigationEvent:I

    const/4 v5, 0x0

    if-eqz v25, :cond_b

    .line 4192
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_b

    move-object v10, v5

    goto :goto_6

    :cond_b
    move-object/from16 v10, v25

    .line 4195
    :goto_6
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 11078
    iput-object v10, v6, Lo/getExpiresAtMillis;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    const-string v6, "true"

    if-eqz v1, :cond_c

    .line 4197
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 4198
    :goto_7
    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 11180
    iput-boolean v1, v7, Lo/getExpiresAtMillis;->requestPostMessageChannel:Z

    if-eqz v24, :cond_d

    move-object/from16 v1, v24

    .line 4200
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    .line 4201
    :goto_8
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 12156
    iput-boolean v1, v6, Lo/getExpiresAtMillis;->ICustomTabsService:Z

    if-eqz v23, :cond_e

    .line 4205
    iget-object v1, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    move-object/from16 v6, v23

    invoke-interface {v1, v6}, Lo/getAppSettingsData;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4206
    iget-object v1, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    invoke-interface {v1, v6}, Lo/getAppSettingsData;->extraCallback(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    :cond_e
    const/4 v1, -0x1

    :goto_9
    if-ne v1, v2, :cond_10

    .line 12593
    invoke-direct/range {p0 .. p0}, Lo/isExpired;->onMessageChannelReady()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 12595
    iget v1, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    goto :goto_a

    :cond_f
    const v1, 0x1080093

    .line 4212
    :cond_10
    :goto_a
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 13040
    iput v1, v6, Lo/getExpiresAtMillis;->extraCallback:I

    if-eqz v22, :cond_11

    .line 4216
    iget-object v1, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    move-object/from16 v6, v22

    invoke-interface {v1, v6}, Lo/getAppSettingsData;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4217
    iget-object v1, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    invoke-interface {v1, v6}, Lo/getAppSettingsData;->extraCallback(Ljava/lang/String;)I

    move-result v1

    goto :goto_b

    :cond_11
    const/4 v1, -0x1

    .line 4220
    :goto_b
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 13056
    iput v1, v6, Lo/getExpiresAtMillis;->ICustomTabsCallback:I

    if-eqz v21, :cond_13

    .line 4222
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_c

    :cond_12
    move-object/from16 v9, v21

    goto :goto_e

    .line 13584
    :cond_13
    :goto_c
    invoke-direct/range {p0 .. p0}, Lo/isExpired;->onMessageChannelReady()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 13586
    iget-object v6, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_d

    :cond_14
    const-string v1, "A message for you"

    :goto_d
    move-object v9, v1

    .line 4225
    :goto_e
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 14070
    iput-object v9, v1, Lo/getExpiresAtMillis;->asBinder:Ljava/lang/CharSequence;

    move-object/from16 v1, v20

    .line 4227
    invoke-direct {v0, v1}, Lo/isExpired;->onPostMessage(Ljava/lang/String;)Lo/getExpiresAtMillis$onNavigationEvent;

    move-result-object v1

    if-nez v1, :cond_16

    if-eqz v18, :cond_15

    .line 14414
    new-instance v1, Lo/getExpiresAtMillis$onNavigationEvent;

    sget-object v6, Lo/getExpiresAtMillis$onPostMessage;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    move-object/from16 v7, v18

    invoke-direct {v1, v6, v7}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;Ljava/lang/String;)V

    goto :goto_f

    :cond_15
    move-object v1, v5

    :cond_16
    :goto_f
    if-nez v1, :cond_17

    .line 14421
    new-instance v1, Lo/getExpiresAtMillis$onNavigationEvent;

    sget-object v6, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

    invoke-direct {v1, v6}, Lo/getExpiresAtMillis$onNavigationEvent;-><init>(Lo/getExpiresAtMillis$onPostMessage;)V

    .line 4234
    :cond_17
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 15185
    iput-object v1, v6, Lo/getExpiresAtMillis;->extraCommand:Lo/getExpiresAtMillis$onNavigationEvent;

    .line 15618
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 16189
    iget-object v1, v1, Lo/getExpiresAtMillis;->postMessage:Ljava/lang/String;

    .line 15619
    iget-object v6, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 16193
    iget-object v6, v6, Lo/getExpiresAtMillis;->mayLaunchUrl:Ljava/lang/String;

    .line 15620
    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 16197
    iget-object v7, v7, Lo/getExpiresAtMillis;->validateRelationship:Ljava/lang/String;

    if-eqz v1, :cond_1c

    if-eqz v6, :cond_1c

    .line 15623
    iget-object v8, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    .line 15625
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 15626
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 16606
    iget-object v11, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 17128
    iget-object v11, v11, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v11, :cond_18

    .line 16607
    iget-object v11, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 18128
    iget-object v11, v11, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_10

    .line 16609
    :cond_18
    iget v11, v0, Lo/isExpired;->onNavigationEvent:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 15627
    :goto_10
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string v13, "$push_notification_received"

    move-object v12, v7

    .line 15623
    invoke-static/range {v8 .. v14}, Lo/Settings;->extraCallback(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 15633
    iget-object v8, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v8, v7}, Lo/Settings;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Lo/Settings;

    move-result-object v8

    if-eqz v8, :cond_1c

    .line 18965
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-lt v9, v10, :cond_19

    .line 18966
    iget-object v9, v8, Lo/Settings;->warmup:Lo/FeaturesSettingsData;

    if-eqz v9, :cond_1a

    .line 18967
    iget-object v8, v8, Lo/Settings;->warmup:Lo/FeaturesSettingsData;

    .line 19121
    iget-boolean v8, v8, Lo/FeaturesSettingsData;->onNavigationEvent:Z

    goto :goto_11

    :cond_19
    const-string v8, "MixpanelAPI.API"

    const-string v9, "Your build version is below 14. This method will always return false."

    .line 18970
    invoke-static {v8, v9}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const/4 v8, 0x0

    :goto_11
    if-eqz v8, :cond_1c

    .line 15635
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v8, "message_type"

    const-string v9, "push"

    .line 15637
    invoke-virtual {v14, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :catch_2
    nop

    .line 15639
    :goto_12
    iget-object v8, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    .line 15641
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 15642
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 19606
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 20128
    iget-object v1, v1, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_1b

    .line 19607
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 21128
    iget-object v1, v1, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_13

    .line 19609
    :cond_1b
    iget v1, v0, Lo/isExpired;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_13
    move-object v11, v1

    const-string v13, "$campaign_received"

    move-object v12, v7

    .line 15639
    invoke-static/range {v8 .. v14}, Lo/Settings;->extraCallback(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    :cond_1c
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    if-nez v1, :cond_1d

    return-object v5

    .line 21176
    :cond_1d
    iget-boolean v1, v1, Lo/getExpiresAtMillis;->requestPostMessageChannel:Z

    const-string v6, "MixpanelAPI.MixpanelPushNotification"

    if-eqz v1, :cond_1e

    const-string v1, "Notification will not be shown because \'mp_silent = true\'"

    .line 82
    invoke-static {v6, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 86
    :cond_1e
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 22082
    iget-object v1, v1, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v1, :cond_1f

    const-string v1, "Notification will not be shown because \'mp_message\' was null"

    .line 87
    invoke-static {v6, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 91
    :cond_1f
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 23082
    iget-object v1, v1, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    const-string v7, ""

    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "Notification will not be shown because \'mp_message\' was empty"

    .line 92
    invoke-static {v6, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 23240
    :cond_20
    iget-object v1, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    iget v5, v0, Lo/isExpired;->extraCallback:I

    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 24183
    iget-object v7, v7, Lo/getExpiresAtMillis;->extraCommand:Lo/getExpiresAtMillis$onNavigationEvent;

    .line 24444
    invoke-direct {v0, v7}, Lo/isExpired;->ICustomTabsCallback(Lo/getExpiresAtMillis$onNavigationEvent;)Landroid/os/Bundle;

    move-result-object v7

    .line 24445
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.mixpanel.push_notification_tap"

    .line 24446
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    const-class v10, Lo/SettingsData;

    .line 24447
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 24448
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x40000000    # 2.0f

    .line 24449
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x10000000

    .line 23240
    invoke-static {v1, v5, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 23247
    iget-object v5, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    .line 24454
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 24455
    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 25193
    iget-object v8, v8, Lo/getExpiresAtMillis;->mayLaunchUrl:Ljava/lang/String;

    move-object/from16 v9, v17

    .line 24455
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24456
    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 26189
    iget-object v8, v8, Lo/getExpiresAtMillis;->postMessage:Ljava/lang/String;

    move-object/from16 v9, v16

    .line 24456
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 26606
    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 27128
    iget-object v8, v8, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    if-eqz v8, :cond_21

    .line 26607
    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 28128
    iget-object v8, v8, Lo/getExpiresAtMillis;->getInterfaceDescriptor:Ljava/lang/String;

    goto :goto_14

    .line 26609
    :cond_21
    iget v8, v0, Lo/isExpired;->onNavigationEvent:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :goto_14
    const-string v9, "mp_canonical_notification_id"

    .line 24457
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24458
    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 28197
    iget-object v8, v8, Lo/getExpiresAtMillis;->validateRelationship:Ljava/lang/String;

    move-object/from16 v9, v19

    .line 24458
    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 24460
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.mixpanel.push_notification_dismissed"

    .line 24461
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    const-class v10, Lo/getSettingsVersion;

    .line 24462
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 24463
    invoke-virtual {v8, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 23247
    invoke-static {v5, v3, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 23254
    iget-object v5, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 29066
    iget-object v7, v7, Lo/getExpiresAtMillis;->asBinder:Ljava/lang/CharSequence;

    .line 23255
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 29082
    iget-object v7, v7, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 23256
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 23257
    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 29144
    iget-object v7, v7, Lo/getExpiresAtMillis;->warmup:Ljava/lang/String;

    if-nez v7, :cond_22

    .line 23257
    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 30082
    iget-object v7, v7, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    goto :goto_15

    .line 23257
    :cond_22
    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 30144
    iget-object v7, v7, Lo/getExpiresAtMillis;->warmup:Ljava/lang/String;

    .line 23257
    :goto_15
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 23258
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 23259
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 30282
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_23

    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 31052
    iget v1, v1, Lo/getExpiresAtMillis;->ICustomTabsCallback:I

    if-eq v1, v2, :cond_23

    .line 30283
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v5, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 32052
    iget v5, v5, Lo/getExpiresAtMillis;->ICustomTabsCallback:I

    .line 30283
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_16

    .line 30285
    :cond_23
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v5, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 33036
    iget v5, v5, Lo/getExpiresAtMillis;->extraCallback:I

    .line 30285
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 33290
    :goto_16
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 34044
    iget-object v1, v1, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    const-string v5, "http"

    if-eqz v1, :cond_26

    .line 33291
    iget-object v1, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 35044
    iget-object v7, v7, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 33291
    invoke-interface {v1, v7}, Lo/getAppSettingsData;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 33292
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v7, v0, Lo/isExpired;->asBinder:Lo/getAppSettingsData;

    iget-object v8, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 36044
    iget-object v8, v8, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 33292
    invoke-interface {v7, v8}, Lo/getAppSettingsData;->extraCallback(Ljava/lang/String;)I

    move-result v7

    .line 36669
    iget-object v8, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 33292
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_17

    .line 33293
    :cond_24
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 37044
    iget-object v1, v1, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 33293
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 33294
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 38044
    iget-object v1, v1, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 33294
    invoke-direct {v0, v1}, Lo/isExpired;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 33296
    iget-object v7, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_17

    .line 33299
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "large icon data was sent but did match a resource name or a valid url: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 39044
    iget-object v7, v7, Lo/getExpiresAtMillis;->updateVisuals:Ljava/lang/String;

    .line 33299
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 39305
    :cond_26
    :goto_17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v1, v7, :cond_29

    .line 39306
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 40060
    iget-object v1, v1, Lo/getExpiresAtMillis;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 39306
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 41060
    iget-object v1, v1, Lo/getExpiresAtMillis;->onPostMessage:Ljava/lang/String;

    .line 39306
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 39308
    :try_start_3
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 42060
    iget-object v1, v1, Lo/getExpiresAtMillis;->onPostMessage:Ljava/lang/String;

    .line 39308
    invoke-direct {v0, v1}, Lo/isExpired;->onMessageChannelReady(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_27

    .line 39310
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 42082
    iget-object v1, v1, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 42324
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_29

    .line 42325
    iget-object v5, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_18

    .line 42330
    :cond_27
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_29

    .line 42331
    iget-object v5, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    new-instance v8, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_18

    :catch_3
    nop

    .line 39315
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 43082
    iget-object v1, v1, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 43324
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_29

    .line 43325
    iget-object v5, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_18

    .line 39318
    :cond_28
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 44082
    iget-object v1, v1, Lo/getExpiresAtMillis;->onRelationshipValidationResult:Ljava/lang/String;

    .line 44324
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_29

    .line 44325
    iget-object v5, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 44336
    :cond_29
    :goto_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_2a

    .line 44337
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 45098
    iget v1, v1, Lo/getExpiresAtMillis;->onNavigationEvent:I

    if-eq v1, v2, :cond_2a

    .line 44338
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 46098
    iget v2, v2, Lo/getExpiresAtMillis;->onNavigationEvent:I

    .line 44338
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 23265
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lo/isExpired;->extraCallback()V

    .line 46521
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2c

    .line 46522
    iget-object v1, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    const-string v2, "notification"

    .line 46523
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 46525
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 47120
    iget-object v2, v2, Lo/getExpiresAtMillis;->asInterface:Ljava/lang/String;

    if-nez v2, :cond_2b

    .line 46525
    iget-object v2, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v2}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v2

    .line 47459
    iget-object v2, v2, Lo/SessionSettingsData;->cancel:Ljava/lang/String;

    goto :goto_19

    .line 46525
    :cond_2b
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 48120
    iget-object v2, v2, Lo/getExpiresAtMillis;->asInterface:Ljava/lang/String;

    .line 46526
    :goto_19
    iget-object v5, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v5}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v5

    .line 48463
    iget-object v5, v5, Lo/SessionSettingsData;->cancelAll:Ljava/lang/String;

    .line 46528
    new-instance v8, Landroid/app/NotificationChannel;

    const/4 v9, 0x3

    invoke-direct {v8, v2, v5, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 46529
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 46531
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_1a

    .line 46533
    :cond_2c
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lo/isExpired;->onMessageChannelReady:Landroid/content/Context;

    invoke-static {v2}, Lo/SessionSettingsData;->ICustomTabsCallback(Landroid/content/Context;)Lo/SessionSettingsData;

    move-result-object v2

    .line 49443
    iget v2, v2, Lo/SessionSettingsData;->ICustomTabsService$Stub:I

    .line 46533
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 49538
    :goto_1a
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50112
    iget v1, v1, Lo/getExpiresAtMillis;->onMessageChannelReady:I

    if-lez v1, :cond_2d

    .line 49539
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50113
    iget v2, v2, Lo/getExpiresAtMillis;->onMessageChannelReady:I

    .line 49539
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 50114
    :cond_2d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2e

    .line 50115
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 50118
    :cond_2e
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50138
    iget-object v1, v1, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    if-nez v1, :cond_2f

    .line 50119
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-wide v4, v0, Lo/isExpired;->onRelationshipValidationResult:J

    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    goto :goto_1b

    .line 50121
    :cond_2f
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50139
    iget-object v1, v1, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssz"

    .line 50121
    invoke-static {v2, v1}, Lo/isExpired;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_30

    .line 50124
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50140
    iget-object v1, v1, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 50124
    invoke-static {v2, v1}, Lo/isExpired;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :cond_30
    if-nez v1, :cond_31

    .line 50128
    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50141
    iget-object v1, v1, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 50128
    invoke-static {v2, v1}, Lo/isExpired;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :cond_31
    if-nez v1, :cond_32

    .line 50132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse date string into datetime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50142
    iget-object v2, v2, Lo/getExpiresAtMillis;->newSession:Ljava/lang/String;

    .line 50132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 50134
    :cond_32
    iget-object v2, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 50143
    :goto_1b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_33

    .line 50144
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50147
    iget v2, v2, Lo/getExpiresAtMillis;->ICustomTabsCallback$Stub$Proxy:I

    .line 50144
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 50148
    :cond_33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_34

    iget-object v1, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50152
    iget-object v1, v1, Lo/getExpiresAtMillis;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    if-eqz v1, :cond_34

    .line 50149
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50153
    iget-object v2, v2, Lo/getExpiresAtMillis;->ICustomTabsCallback$Stub:Ljava/lang/CharSequence;

    .line 50149
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 99
    :cond_34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_35

    .line 100
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1c

    .line 102
    :cond_35
    iget-object v1, v0, Lo/isExpired;->onTransact:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 105
    :goto_1c
    iget-object v2, v0, Lo/isExpired;->onPostMessage:Lo/getExpiresAtMillis;

    .line 50154
    iget-boolean v2, v2, Lo/getExpiresAtMillis;->ICustomTabsService:Z

    if-nez v2, :cond_36

    .line 106
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v7

    iput v2, v1, Landroid/app/Notification;->flags:I

    :cond_36
    return-object v1
.end method
