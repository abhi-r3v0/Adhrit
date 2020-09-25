.class public final Lo/getContentInsetEndWithActions;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/CheckoutUtils;",
        "",
        "()V",
        "getConfigs",
        "Lcom/cred/pay/ui/checkout/CheckoutBuilder$CheckoutConfigs;",
        "showSuccess",
        "",
        "getPollingConfig",
        "Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;",
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
.field public static final ICustomTabsCallback:Lo/getContentInsetEndWithActions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lo/getContentInsetEndWithActions;

    invoke-direct {v0}, Lo/getContentInsetEndWithActions;-><init>()V

    sput-object v0, Lo/getContentInsetEndWithActions;->ICustomTabsCallback:Lo/getContentInsetEndWithActions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic extraCallback(Lo/getContentInsetEndWithActions;)Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;
    .locals 0

    const/4 p0, 0x1

    .line 10
    invoke-static {p0}, Lo/getContentInsetEndWithActions;->onMessageChannelReady(Z)Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Z)Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;
    .locals 6

    .line 11
    new-instance v0, Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;

    .line 12
    new-instance v1, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onMessageChannelReady;

    invoke-static {}, Lo/getContentInsetEndWithActions;->onPostMessage()Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;

    move-result-object v2

    sget-object v3, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v3, Lo/isInLayout;->onResult:Lo/onHiddenChanged;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x49

    aget-object v4, v4, v5

    const-string v5, "property"

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v3, v3, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {v3}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getJsonObjectFrom;

    .line 1020
    invoke-interface {v3}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v3

    .line 1000
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/cred/pay/ui/checkout/CheckoutBuilder$onMessageChannelReady;-><init>(Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;D)V

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/cred/pay/ui/checkout/CheckoutBuilder$extraCallback;-><init>(Lcom/cred/pay/ui/checkout/CheckoutBuilder$onMessageChannelReady;Z)V

    return-object v0
.end method

.method private static onPostMessage()Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;
    .locals 5

    .line 18
    new-instance v0, Lo/sessionFile$onPostMessage;

    invoke-direct {v0}, Lo/sessionFile$onPostMessage;-><init>()V

    .line 2247
    new-instance v1, Lo/sessionFile;

    invoke-direct {v1, v0}, Lo/sessionFile;-><init>(Lo/sessionFile$onPostMessage;)V

    .line 18
    const-class v0, Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;

    .line 3072
    sget-object v2, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v3, 0x0

    .line 3098
    invoke-virtual {v1, v0, v2, v3}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v0

    const-string v1, "Moshi.Builder().build().\u2026RemoteConfig::class.java)"

    .line 18
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_0
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v1, Lo/isInLayout;->onItemLoaded:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v4, 0x4f

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 20
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {v0, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v0, Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    new-instance v0, Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v3, v1, v3}, Lcom/cred/pay/ui/checkout/CheckoutBuilder$PolingRemoteConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0
.end method
