.class public final Lcom/dreamplug/utils/health/Health;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/utils/health/Health$onPostMessage;,
        Lcom/dreamplug/utils/health/Health$onNavigationEvent;,
        Lcom/dreamplug/utils/health/Health$ServiceStatus;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u000b\u000c\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\t\u001a\u00020\u0005R \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/utils/health/Health;",
        "",
        "()V",
        "data",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/dreamplug/utils/health/Health$Service;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
        "getStatus",
        "service",
        "getStatusLiveData",
        "Service",
        "ServiceStatus",
        "Status",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/dreamplug/utils/health/Health$onPostMessage;",
            "Lo/setActive<",
            "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final onMessageChannelReady:Lcom/dreamplug/utils/health/Health;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/dreamplug/utils/health/Health;

    invoke-direct {v0}, Lcom/dreamplug/utils/health/Health;-><init>()V

    sput-object v0, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dreamplug/utils/health/Health;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lcom/dreamplug/utils/health/Health$ServiceStatus;
    .locals 6

    const-string/jumbo v0, "service"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/dreamplug/utils/health/Health;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setActive;

    if-eqz p0, :cond_1

    .line 1320
    iget-object p0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    check-cast p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    if-nez p0, :cond_2

    :cond_1
    new-instance p0, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/utils/health/Health$ServiceStatus;-><init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    return-object p0
.end method

.method public static onMessageChannelReady(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lo/setActive;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/utils/health/Health$onPostMessage;",
            ")",
            "Lo/setActive<",
            "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "service"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/dreamplug/utils/health/Health;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lo/setActive;

    new-instance v7, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/utils/health/Health$ServiceStatus;-><init>(ILjava/util/HashMap;Lcom/dreamplug/utils/health/Health$onNavigationEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v7}, Lo/setActive;-><init>(Ljava/lang/Object;)V

    .line 31
    sget-object v1, Lcom/dreamplug/utils/health/Health;->ICustomTabsCallback:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
