.class public final Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getCurrentPurchaseValue;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static onMessageChannelReady:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/openGameRewards;

.field private final extraCallback:Lo/getAccountSummary;

.field private final onPostMessage:Lo/getRewardsClosingBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lo/openGameRewards;)V
    .locals 4

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lo/getRewardsClosingBalance;

    invoke-direct {v1}, Lo/getRewardsClosingBalance;-><init>()V

    iput-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/getRewardsClosingBalance;

    iput-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/openGameRewards;

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lo/openGameRewards;->onNavigationEvent()Lo/getEventName;

    move-result-object p1

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_1

    new-instance v2, Lo/getAccountSummary;

    invoke-direct {v2, p1}, Lo/getAccountSummary;-><init>(Landroid/content/Context;)V

    :try_start_1
    iget-object p1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/openGameRewards;

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v3

    invoke-interface {p1, v3}, Lo/openGameRewards;->onPostMessage(Lo/getEventName;)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iput-object v1, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->extraCallback:Lo/getAccountSummary;

    return-void
.end method

.method public static extraCallback(Lo/openGameRewards;)Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;
    .locals 3

    sget-object v0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lo/openGameRewards;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;

    invoke-direct {v1, p0}, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;-><init>(Lo/openGameRewards;)V

    sget-object v2, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lo/openGameRewards;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/openGameRewards;

    invoke-interface {v0}, Lo/openGameRewards;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onPostMessage()Lo/openGameRewards;
    .locals 1

    iget-object v0, p0, Lo/FabrikWebViewFragment$MyJavascriptInterface$backPressResult$1$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/openGameRewards;

    return-object v0
.end method
