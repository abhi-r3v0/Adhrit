.class public final Lo/hasFlexibleChildInBothOrientations;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hasFlexibleChildInBothOrientations$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002JO\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u001e\u0010\u0013\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00100\u0015\u0012\u0004\u0012\u00020\u000b0\u0014\u00a2\u0006\u0002\u0010\u0016R\"\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/sms/SimUtils;",
        "",
        "()V",
        "simList",
        "",
        "Lcom/dreamplug/fabrik/ui/sms/SimData;",
        "getSimList",
        "()Ljava/util/List;",
        "setSimList",
        "(Ljava/util/List;)V",
        "sendSms",
        "",
        "destAddress",
        "",
        "message",
        "subId",
        "",
        "enableDeliveryAction",
        "",
        "result",
        "Lkotlin/Function1;",
        "Lkotlin/Pair;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)V",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setExactMeasureSpecsFrom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    .line 21
    sget-object v0, Lo/setThumbTextPadding;->onPostMessage:Lo/setThumbTextPadding;

    invoke-static {}, Lo/setThumbTextPadding;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 5122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 22
    :cond_0
    check-cast v0, Landroid/content/Context;

    .line 89
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-static {v0, v1}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xa

    .line 90
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 91
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 24
    new-instance v3, Lo/setExactMeasureSpecsFrom;

    const-string v4, "it"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v6, "it.displayName"

    invoke-static {v2, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v2}, Lo/setExactMeasureSpecsFrom;-><init>(IILjava/lang/CharSequence;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 94
    new-instance v0, Lo/hasFlexibleChildInBothOrientations$onNavigationEvent;

    invoke-direct {v0}, Lo/hasFlexibleChildInBothOrientations$onNavigationEvent;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v1, v0}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lo/hasFlexibleChildInBothOrientations;->onPostMessage:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLo/onDisconnectSetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Z",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "destAddress"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object p2

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p2

    :goto_1
    move-object v0, p2

    .line 39
    sget-object p2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p2

    const-string v1, "context"

    if-nez p2, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 39
    :cond_2
    check-cast p2, Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "SMS_SENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p2, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const-string v2, "PendingIntent.getBroadca\u2026tent(SMS_SENT_ACTION), 0)"

    invoke-static {p2, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 2122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 40
    :cond_3
    check-cast v2, Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "SMS_DELIVERED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v5, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v2, "PendingIntent.getBroadca\u2026SMS_DELIVERED_ACTION), 0)"

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 3122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 42
    :cond_4
    new-instance v4, Lo/hasFlexibleChildInBothOrientations$ICustomTabsCallback;

    invoke-direct {v4, p4}, Lo/hasFlexibleChildInBothOrientations$ICustomTabsCallback;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v4, Landroid/content/BroadcastReceiver;

    .line 61
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz p3, :cond_6

    .line 65
    sget-object p3, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 4122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p3

    if-nez p3, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 65
    :cond_5
    new-instance v1, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;

    invoke-direct {v1, p4}, Lo/hasFlexibleChildInBothOrientations$onMessageChannelReady;-><init>(Lo/onDisconnectSetValue;)V

    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 78
    new-instance p4, Landroid/content/IntentFilter;

    invoke-direct {p4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3, v1, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    .line 80
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method
