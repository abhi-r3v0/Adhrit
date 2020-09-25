.class public final Lo/setTitleInt$ICustomTabsCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/main/ConnectionLiveData$NetworkCallback;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "liveData",
        "Lkotlin/Function1;",
        "",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getLiveData",
        "()Lkotlin/jvm/functions/Function1;",
        "onAvailable",
        "network",
        "Landroid/net/Network;",
        "onLost",
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
.field private final onNavigationEvent:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Ljava/lang/Boolean;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Boolean;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p1, p0, Lo/setTitleInt$ICustomTabsCallback;->onNavigationEvent:Lo/onDisconnectSetValue;

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 57
    iget-object p1, p0, Lo/setTitleInt$ICustomTabsCallback;->onNavigationEvent:Lo/onDisconnectSetValue;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 61
    sget-object p1, Lo/snapshot;->ICustomTabsCallback:Lo/snapshot$onNavigationEvent;

    sget-object p1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 61
    :cond_0
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lo/snapshot$onNavigationEvent;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 62
    iget-object p1, p0, Lo/setTitleInt$ICustomTabsCallback;->onNavigationEvent:Lo/onDisconnectSetValue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
