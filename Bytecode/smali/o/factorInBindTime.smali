.class public final Lo/factorInBindTime;
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
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\r\u001a\u0002H\u000e\"\u0006\u0008\u0000\u0010\u000e\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u000fJ\u001f\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0011\u00a2\u0006\u0002\u0010\u0012J\"\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019J\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u001b\"\u0006\u0008\u0000\u0010\u000e\u0018\u0001H\u0086\u0008J\u0012\u0010\u001c\u001a\u00020\u000c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J\u000e\u0010\u001f\u001a\u00020\u000c2\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u000c2\u0006\u0010#\u001a\u00020$R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006%"
    }
    d2 = {
        "Lcom/dreamplug/network/Network;",
        "",
        "()V",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "getMoshi",
        "()Lcom/squareup/moshi/Moshi;",
        "clear",
        "",
        "getRetrofitService",
        "T",
        "()Ljava/lang/Object;",
        "cls",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "init",
        "context",
        "Landroid/content/Context;",
        "networkInterface",
        "Lcom/dreamplug/network/helper/NetworkInterface;",
        "sslPinning",
        "",
        "lazyRetrofitService",
        "Lkotlin/Lazy;",
        "overrideServieCreator",
        "serviceCreator",
        "Lcom/dreamplug/network/helper/MockServiceCreatorI;",
        "setAuthStateManager",
        "authStateManager",
        "Lcom/dreamplug/network/helper/AuthStateManager;",
        "setBaseUrl",
        "baseUrl",
        "",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/factorInBindTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/factorInBindTime;

    invoke-direct {v0}, Lo/factorInBindTime;-><init>()V

    sput-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/sessionFile;
    .locals 1

    .line 19
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 2000
    sget-object v0, Lo/getScrapCount;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sessionFile;

    return-object v0
.end method

.method public static extraCallback()Lo/writeStringNoTag;
    .locals 1

    .line 17
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 1000
    sget-object v0, Lo/getScrapCount;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/writeStringNoTag;

    return-object v0
.end method

.method public static extraCallback(Landroid/content/Context;Lo/bindViewToPosition;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lo/getScrapCount;->ICustomTabsCallback(Landroid/content/Context;Lo/bindViewToPosition;Z)V

    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 1

    .line 48
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->onNavigationEvent()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/getScrapList;)V
    .locals 1

    const-string v0, "authStateManager"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {p0}, Lo/getScrapCount;->onNavigationEvent(Lo/getScrapList;)V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "baseUrl"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {p0}, Lo/getScrapCount;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static onPostMessage(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "cls"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3000
    sget-object v0, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NodeFromJSON;

    .line 2083
    invoke-virtual {v0, p0}, Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
