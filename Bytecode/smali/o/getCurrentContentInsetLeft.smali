.class public final Lo/getCurrentContentInsetLeft;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0006\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\r0\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/PaymentUtils;",
        "",
        "()V",
        "getBlacklistedUpiApps",
        "",
        "",
        "getConfigs",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$RemoteConfigs;",
        "getShortTimeoutStrategy",
        "Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;",
        "getTrustedUpiAppsForPolling",
        "getUpiCommandTimeouts",
        "",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getCurrentContentInsetLeft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/getCurrentContentInsetLeft;

    invoke-direct {v0}, Lo/getCurrentContentInsetLeft;-><init>()V

    sput-object v0, Lo/getCurrentContentInsetLeft;->ICustomTabsCallback:Lo/getCurrentContentInsetLeft;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlin.collections.Map<K, V>"

    .line 49
    new-instance v1, Lo/sessionFile$onPostMessage;

    invoke-direct {v1}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 13247
    new-instance v2, Lo/sessionFile;

    invoke-direct {v2, v1}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 49
    const-class v1, Ljava/util/Map;

    check-cast v1, Ljava/lang/reflect/Type;

    .line 14068
    sget-object v3, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v4, 0x0

    .line 14098
    invoke-virtual {v2, v1, v3, v4}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v1

    const-string v2, "Moshi.Builder().build().\u2026Double>>(Map::class.java)"

    .line 49
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :try_start_0
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 15000
    sget-object v2, Lo/isInLayout;->INotificationSideChannel$Stub:Lo/isDetached;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x27

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "{}"

    .line 51
    :cond_0
    invoke-virtual {v1, v2}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    .line 15040
    sget-object v1, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 16040
    sget-object v1, Lo/forcePersistenceManager;->extraCallback:Lo/forcePersistenceManager;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/Map;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static extraCallback()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 7247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 29
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 8068
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 8098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "Moshi.Builder().build().\u2026tring>>(List::class.java)"

    .line 29
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 9000
    sget-object v1, Lo/isInLayout;->notify:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "[]"

    .line 31
    :cond_0
    invoke-virtual {v0, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 9070
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10070
    :catch_0
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static onMessageChannelReady()Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;
    .locals 6

    .line 59
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 16247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 59
    const-class v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    .line 17072
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 17098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "Moshi.Builder().build().\u2026lingStrategy::class.java)"

    .line 59
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 61
    :try_start_0
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 18000
    sget-object v2, Lo/isInLayout;->requestPostMessageChannel:Lo/isDetached;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string/jumbo v2, "{}"

    .line 61
    :cond_0
    invoke-virtual {v0, v2}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    invoke-direct {v0, v3, v3, v1, v3}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    new-instance v0, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    invoke-direct {v0, v3, v3, v1, v3}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static onNavigationEvent()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 10247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 39
    const-class v0, Ljava/util/List;

    check-cast v0, Ljava/lang/reflect/Type;

    .line 11068
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 11098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "Moshi.Builder().build().\u2026tring>>(List::class.java)"

    .line 39
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :try_start_0
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 12000
    sget-object v1, Lo/isInLayout;->INotificationSideChannel$Stub$Proxy:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "[]"

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 12070
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13070
    :catch_0
    sget-object v0, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v0, Ljava/util/List;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static onPostMessage()Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;
    .locals 13

    .line 11
    new-instance v11, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    .line 12
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->warmup:Lo/isRemoving;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    .line 13
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->ICustomTabsService$Stub:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 14
    new-instance v2, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    .line 15
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v0, Lo/isInLayout;->ICustomTabsCallback$Stub$Proxy:Lo/isRemoving;

    sget-object v3, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 16
    sget-object v3, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v3, Lo/isInLayout;->extraCommand:Lo/isRemoving;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v6, 0x17

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-int v4, v3

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-direct {v2, v0, v3}, Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;-><init>(Ljava/lang/Long;Ljava/lang/Integer;)V

    .line 18
    invoke-static {}, Lo/getCurrentContentInsetLeft;->onMessageChannelReady()Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;

    move-result-object v3

    .line 19
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object v0, Lo/isInLayout;->mayLaunchUrl:Lo/isRemoving;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v6, 0x19

    aget-object v4, v4, v6

    invoke-virtual {v0, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    long-to-int v4, v6

    .line 20
    invoke-static {}, Lo/getCurrentContentInsetLeft;->extraCallback()Ljava/util/List;

    move-result-object v6

    .line 21
    invoke-static {}, Lo/getCurrentContentInsetLeft;->onNavigationEvent()Ljava/util/List;

    move-result-object v7

    .line 22
    invoke-static {}, Lo/getCurrentContentInsetLeft;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v8

    .line 23
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 6000
    sget-object v0, Lo/isInLayout;->getStateLabel:Lo/isAdded;

    sget-object v9, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v10, 0x61

    aget-object v9, v9, v10

    invoke-virtual {v0, v9}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 24
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 7000
    sget-object v0, Lo/isInLayout;->MediaBrowserCompat$MediaBrowserImplBase:Lo/isAdded;

    sget-object v10, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v12, 0x62

    aget-object v10, v10, v12

    invoke-virtual {v0, v10}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object v0, v11

    .line 11
    invoke-direct/range {v0 .. v10}, Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;-><init>(ILcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;Lcom/cred/pay/ui/CredPaymentUiBuilder$PollingStrategy;IZLjava/util/List;Ljava/util/List;Ljava/util/Map;ZZ)V

    return-object v11
.end method
