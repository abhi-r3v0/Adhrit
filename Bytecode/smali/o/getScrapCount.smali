.class public final Lo/getScrapCount;
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
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010?\u001a\u00020@J\u001f\u0010A\u001a\u0002HB\"\u0004\u0008\u0000\u0010B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u0002HB0D\u00a2\u0006\u0002\u0010EJ \u0010F\u001a\u00020@2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u00109\u001a\u00020:J\u0010\u0010G\u001a\u00020@2\u0008\u00103\u001a\u0004\u0018\u000104J\u000e\u0010H\u001a\u00020@2\u0006\u0010I\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001c\u001a\u00020\u001d8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0010\u001a\u0004\u0008\u001e\u0010\u001fR\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010#\u001a\n %*\u0004\u0018\u00010$0$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0010\u001a\u0004\u0008&\u0010\'R\u001b\u0010)\u001a\u00020*8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010\u0010\u001a\u0004\u0008+\u0010,R\u001b\u0010.\u001a\u00020/8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u0010\u001a\u0004\u00080\u00101R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>\u00a8\u0006J"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/NetworkManager;",
        "",
        "()V",
        "BASE_URL",
        "",
        "authStateManager",
        "Lcom/dreamplug/network/helper/AuthStateManager;",
        "getAuthStateManager",
        "()Lcom/dreamplug/network/helper/AuthStateManager;",
        "setAuthStateManager",
        "(Lcom/dreamplug/network/helper/AuthStateManager;)V",
        "cache",
        "Lokhttp3/Cache;",
        "getCache",
        "()Lokhttp3/Cache;",
        "cache$delegate",
        "Lkotlin/Lazy;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson$network_release",
        "()Lcom/google/gson/Gson;",
        "gson$delegate",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "getMoshi$network_release",
        "()Lcom/squareup/moshi/Moshi;",
        "moshi$delegate",
        "networkInterface",
        "Lcom/dreamplug/network/helper/NetworkInterface;",
        "sCertificatePinner",
        "Lokhttp3/CertificatePinner;",
        "kotlin.jvm.PlatformType",
        "getSCertificatePinner",
        "()Lokhttp3/CertificatePinner;",
        "sCertificatePinner$delegate",
        "sOkHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getSOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "sOkHttpClient$delegate",
        "sRetrofit",
        "Lretrofit2/Retrofit;",
        "getSRetrofit",
        "()Lretrofit2/Retrofit;",
        "sRetrofit$delegate",
        "serviceCreator",
        "Lcom/dreamplug/network/helper/MockServiceCreatorI;",
        "getServiceCreator",
        "()Lcom/dreamplug/network/helper/MockServiceCreatorI;",
        "setServiceCreator",
        "(Lcom/dreamplug/network/helper/MockServiceCreatorI;)V",
        "sslPinning",
        "",
        "getSslPinning",
        "()Z",
        "setSslPinning",
        "(Z)V",
        "clear",
        "",
        "getRetrofitService",
        "T",
        "cls",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Ljava/lang/Object;",
        "init",
        "overrideServiceCreator",
        "setBaseUrl",
        "baseUrl",
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
.field public static final ICustomTabsCallback:Lo/isSameListener;

.field private static final ICustomTabsCallback$Stub:Lo/isSameListener;

.field private static ICustomTabsCallback$Stub$Proxy:Z

.field private static asBinder:Landroid/content/Context;

.field private static asInterface:Lo/getScrapList;

.field public static final extraCallback:Lo/isSameListener;

.field private static newSession:Lo/bindViewToPosition;

.field public static final onMessageChannelReady:Lo/getScrapCount;

.field public static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/isSameListener;

.field private static onRelationshipValidationResult:Ljava/lang/String;

.field private static final onTransact:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lo/getScrapCount;

    invoke-direct {v0}, Lo/getScrapCount;-><init>()V

    sput-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    .line 24
    sget-object v0, Lo/getScrapCount$onNavigationEvent;->onPostMessage:Lo/getScrapCount$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 24
    sput-object v2, Lo/getScrapCount;->ICustomTabsCallback$Stub:Lo/isSameListener;

    .line 30
    sget-object v0, Lo/getScrapCount$ICustomTabsCallback;->ICustomTabsCallback:Lo/getScrapCount$ICustomTabsCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 30
    sput-object v2, Lo/getScrapCount;->onTransact:Lo/isSameListener;

    .line 34
    sget-object v0, Lo/getScrapCount$ICustomTabsCallback$Stub;->onPostMessage:Lo/getScrapCount$ICustomTabsCallback$Stub;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 34
    sput-object v2, Lo/getScrapCount;->onNavigationEvent:Lo/isSameListener;

    .line 49
    sget-object v0, Lo/getScrapCount$onMessageChannelReady;->ICustomTabsCallback:Lo/getScrapCount$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 49
    sput-object v2, Lo/getScrapCount;->ICustomTabsCallback:Lo/isSameListener;

    .line 51
    sget-object v0, Lo/getScrapCount$extraCallback;->ICustomTabsCallback:Lo/getScrapCount$extraCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 51
    sput-object v2, Lo/getScrapCount;->extraCallback:Lo/isSameListener;

    .line 57
    sget-object v0, Lo/getScrapCount$asInterface;->onPostMessage:Lo/getScrapCount$asInterface;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 57
    sput-object v1, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    const/4 v0, 0x1

    .line 76
    sput-boolean v0, Lo/getScrapCount;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Landroid/content/Context;
    .locals 2

    .line 74
    sget-object v0, Lo/getScrapCount;->asBinder:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lo/bindViewToPosition;Z)V
    .locals 0

    const-string p2, "context"

    invoke-static {p0, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sput-object p0, Lo/getScrapCount;->asBinder:Landroid/content/Context;

    .line 69
    sput-object p1, Lo/getScrapCount;->newSession:Lo/bindViewToPosition;

    const/4 p1, 0x1

    .line 70
    sput-boolean p1, Lo/getScrapCount;->ICustomTabsCallback$Stub$Proxy:Z

    .line 71
    sget-object p1, Lo/invalidateDisplayListInt;->onNavigationEvent:Lo/invalidateDisplayListInt;

    invoke-static {p0}, Lo/invalidateDisplayListInt;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "baseUrl"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sput-object p0, Lo/getScrapCount;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic extraCallback()Lo/bindViewToPosition;
    .locals 1

    .line 22
    sget-object v0, Lo/getScrapCount;->newSession:Lo/bindViewToPosition;

    return-object v0
.end method

.method public static final synthetic extraCallback(Lo/getScrapCount;)Lo/deserializeToClass;
    .locals 0

    .line 7000
    sget-object p0, Lo/getScrapCount;->onTransact:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/deserializeToClass;

    return-object p0
.end method

.method public static onMessageChannelReady()Z
    .locals 1

    .line 76
    sget-boolean v0, Lo/getScrapCount;->ICustomTabsCallback$Stub$Proxy:Z

    return v0
.end method

.method public static onNavigationEvent()V
    .locals 2

    .line 96
    sget-object v0, Lo/RecyclerView$SmoothScroller;->onMessageChannelReady:Lo/RecyclerView$SmoothScroller;

    sget-object v1, Lo/getScrapCount$onPostMessage;->extraCallback:Lo/getScrapCount$onPostMessage;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/RecyclerView$SmoothScroller;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onNavigationEvent(Lo/getScrapList;)V
    .locals 0

    .line 45
    sput-object p0, Lo/getScrapCount;->asInterface:Lo/getScrapList;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getScrapCount;)Lo/expectMap;
    .locals 0

    .line 8000
    sget-object p0, Lo/getScrapCount;->ICustomTabsCallback$Stub:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/expectMap;

    return-object p0
.end method

.method public static onPostMessage()Lo/getScrapList;
    .locals 1

    .line 45
    sget-object v0, Lo/getScrapCount;->asInterface:Lo/getScrapList;

    return-object v0
.end method

.method public static final synthetic onTransact()Ljava/lang/String;
    .locals 2

    .line 22
    sget-object v0, Lo/getScrapCount;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "BASE_URL"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
