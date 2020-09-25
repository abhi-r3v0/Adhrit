.class public final Lo/setTitleInt;
.super Landroidx/lifecycle/LiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTitleInt$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014J\u0008\u0010\u0014\u001a\u00020\u0013H\u0014J\u0008\u0010\u0015\u001a\u00020\u0013H\u0002J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0002H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/ConnectionLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "",
        "()V",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "networkCallback",
        "Lcom/dreamplug/androidapp/ui/main/ConnectionLiveData$NetworkCallback;",
        "runnable",
        "Ljava/lang/Runnable;",
        "getRunnable",
        "()Ljava/lang/Runnable;",
        "setRunnable",
        "(Ljava/lang/Runnable;)V",
        "onActive",
        "",
        "onInactive",
        "updateConnection",
        "updateData",
        "value",
        "NetworkCallback",
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
.field private static ICustomTabsCallback$Stub:Landroid/net/ConnectivityManager;

.field private static ICustomTabsService:Ljava/lang/Runnable;

.field private static final asBinder:Landroid/os/Handler;

.field private static asInterface:Lo/setTitleInt$ICustomTabsCallback;

.field public static final onTransact:Lo/setTitleInt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/setTitleInt;

    invoke-direct {v0}, Lo/setTitleInt;-><init>()V

    sput-object v0, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 15
    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 2122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const-string v2, "connectivity"

    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/net/ConnectivityManager;

    sput-object v1, Lo/setTitleInt;->ICustomTabsCallback$Stub:Landroid/net/ConnectivityManager;

    .line 20
    new-instance v1, Lo/setTitleInt$ICustomTabsCallback;

    new-instance v2, Lo/setTitleInt$3;

    invoke-direct {v2, v0}, Lo/setTitleInt$3;-><init>(Lo/setTitleInt;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-direct {v1, v2}, Lo/setTitleInt$ICustomTabsCallback;-><init>(Lo/onDisconnectSetValue;)V

    sput-object v1, Lo/setTitleInt;->asInterface:Lo/setTitleInt$ICustomTabsCallback;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lo/setTitleInt;->asBinder:Landroid/os/Handler;

    return-void

    .line 15
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/Runnable;)V
    .locals 0

    const/4 p0, 0x0

    .line 24
    sput-object p0, Lo/setTitleInt;->ICustomTabsService:Ljava/lang/Runnable;

    return-void
.end method

.method private static onMessageChannelReady(Z)V
    .locals 3

    .line 28
    sget-object v0, Lo/setTitleInt;->ICustomTabsService:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 29
    sget-object v1, Lo/setTitleInt;->asBinder:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 30
    sput-object v0, Lo/setTitleInt;->ICustomTabsService:Ljava/lang/Runnable;

    .line 32
    :cond_0
    new-instance v0, Lo/setTitleInt$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/setTitleInt$onNavigationEvent;-><init>(Z)V

    check-cast v0, Ljava/lang/Runnable;

    sput-object v0, Lo/setTitleInt;->ICustomTabsService:Ljava/lang/Runnable;

    .line 36
    sget-object p0, Lo/setTitleInt;->asBinder:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setTitleInt;Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Z)V
    .locals 0

    .line 14
    invoke-static {p0}, Lo/setTitleInt;->onMessageChannelReady(Z)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onNavigationEvent()V

    .line 48
    sget-object v0, Lo/setTitleInt;->ICustomTabsCallback$Stub:Landroid/net/ConnectivityManager;

    sget-object v1, Lo/setTitleInt;->asInterface:Lo/setTitleInt$ICustomTabsCallback;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onPostMessage()V

    .line 1052
    sget-object v0, Lo/snapshot;->ICustomTabsCallback:Lo/snapshot$onNavigationEvent;

    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1052
    :cond_0
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lo/snapshot$onNavigationEvent;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lo/setTitleInt;->onMessageChannelReady(Z)V

    .line 42
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 43
    sget-object v1, Lo/setTitleInt;->ICustomTabsCallback$Stub:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sget-object v2, Lo/setTitleInt;->asInterface:Lo/setTitleInt$ICustomTabsCallback;

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
