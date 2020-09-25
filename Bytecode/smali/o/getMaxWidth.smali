.class public final Lo/getMaxWidth;
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
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u00072\u0006\u0010:\u001a\u00020;J\u0010\u0010<\u001a\u0002082\u0006\u00109\u001a\u00020\u0007H\u0002J\u0010\u0010=\u001a\u0002082\u0006\u00109\u001a\u00020\u0007H\u0002J\u0010\u0010>\u001a\u0002082\u0006\u0010:\u001a\u00020;H\u0002J\u0006\u0010?\u001a\u000208R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\"\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u001dX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020,X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u001a\u00101\u001a\u000202X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106\u00a8\u0006@"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/CoreFeature;",
        "",
        "()V",
        "NETWORK_TIMEOUT_MS",
        "",
        "contextRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/content/Context;",
        "getContextRef$dd_sdk_android_release",
        "()Ljava/lang/ref/WeakReference;",
        "setContextRef$dd_sdk_android_release",
        "(Ljava/lang/ref/WeakReference;)V",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getInitialized$dd_sdk_android_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "getNetworkInfoProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "setNetworkInfoProvider$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;)V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getOkHttpClient$dd_sdk_android_release",
        "()Lokhttp3/OkHttpClient;",
        "setOkHttpClient$dd_sdk_android_release",
        "(Lokhttp3/OkHttpClient;)V",
        "packageName",
        "",
        "getPackageName$dd_sdk_android_release",
        "()Ljava/lang/String;",
        "setPackageName$dd_sdk_android_release",
        "(Ljava/lang/String;)V",
        "packageVersion",
        "getPackageVersion$dd_sdk_android_release",
        "setPackageVersion$dd_sdk_android_release",
        "systemInfoProvider",
        "Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "getSystemInfoProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "setSystemInfoProvider$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/system/SystemInfoProvider;)V",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/MutableTimeProvider;",
        "getTimeProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/time/MutableTimeProvider;",
        "setTimeProvider$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/time/MutableTimeProvider;)V",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/MutableUserInfoProvider;",
        "getUserInfoProvider$dd_sdk_android_release",
        "()Lcom/datadog/android/log/internal/user/MutableUserInfoProvider;",
        "setUserInfoProvider$dd_sdk_android_release",
        "(Lcom/datadog/android/log/internal/user/MutableUserInfoProvider;)V",
        "initialize",
        "",
        "appContext",
        "needsClearTextHttp",
        "",
        "readApplicationInformation",
        "setupInfoProviders",
        "setupOkHttpClient",
        "stop",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static ICustomTabsCallback$Stub:Lo/propertyName;

.field private static asBinder:Ljava/lang/String;

.field private static asInterface:Lo/SearchView$OnCloseListener;

.field private static extraCallback:Lo/onActionViewExpanded;

.field public static onMessageChannelReady:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/launchQuerySearch;

.field public static final onPostMessage:Lo/getMaxWidth;

.field private static onRelationshipValidationResult:Lo/showSoftInputIfNecessary;

.field private static onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lo/getMaxWidth;

    invoke-direct {v0}, Lo/getMaxWidth;-><init>()V

    sput-object v0, Lo/getMaxWidth;->onPostMessage:Lo/getMaxWidth;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/getMaxWidth;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/getMaxWidth;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;-><init>()V

    check-cast v0, Lo/onActionViewExpanded;

    sput-object v0, Lo/getMaxWidth;->extraCallback:Lo/onActionViewExpanded;

    .line 38
    new-instance v0, Lo/onItemHoverEnter$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/onItemHoverEnter$onRelationshipValidationResult;-><init>()V

    check-cast v0, Lo/launchQuerySearch;

    sput-object v0, Lo/getMaxWidth;->onNavigationEvent:Lo/launchQuerySearch;

    .line 39
    new-instance v0, Lo/onShareTargetSelected;

    invoke-direct {v0}, Lo/onShareTargetSelected;-><init>()V

    check-cast v0, Lo/SearchView$OnCloseListener;

    sput-object v0, Lo/getMaxWidth;->asInterface:Lo/SearchView$OnCloseListener;

    .line 41
    new-instance v0, Lo/getSwitchMinWidth;

    invoke-direct {v0}, Lo/getSwitchMinWidth;-><init>()V

    check-cast v0, Lo/showSoftInputIfNecessary;

    sput-object v0, Lo/getMaxWidth;->onRelationshipValidationResult:Lo/showSoftInputIfNecessary;

    .line 43
    new-instance v0, Lo/propertyName$onPostMessage;

    invoke-direct {v0}, Lo/propertyName$onPostMessage;-><init>()V

    .line 8040
    new-instance v1, Lo/propertyName;

    invoke-direct {v1, v0}, Lo/propertyName;-><init>(Lo/propertyName$onPostMessage;)V

    const-string v0, "OkHttpClient.Builder().build()"

    .line 43
    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lo/getMaxWidth;->ICustomTabsCallback$Stub:Lo/propertyName;

    const-string v0, ""

    .line 45
    sput-object v0, Lo/getMaxWidth;->asBinder:Ljava/lang/String;

    .line 46
    sput-object v0, Lo/getMaxWidth;->onTransact:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/SearchView$OnCloseListener;
    .locals 1

    .line 39
    sget-object v0, Lo/getMaxWidth;->asInterface:Lo/SearchView$OnCloseListener;

    return-object v0
.end method

.method public static ICustomTabsCallback(Z)V
    .locals 5

    if-eqz p0, :cond_0

    .line 117
    sget-object p0, Lo/convertString;->extraCallback:Lo/convertString;

    goto :goto_0

    .line 118
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_1

    sget-object p0, Lo/convertString;->ICustomTabsCallback:Lo/convertString;

    goto :goto_0

    .line 119
    :cond_1
    sget-object p0, Lo/convertString;->onMessageChannelReady:Lo/convertString;

    .line 122
    :goto_0
    new-instance v0, Lo/propertyName$onPostMessage;

    invoke-direct {v0}, Lo/propertyName$onPostMessage;-><init>()V

    .line 123
    new-instance v1, Lo/onItemHoverEnter$onNavigationEvent;

    sget-object v2, Lo/getMaxWidth;->asInterface:Lo/SearchView$OnCloseListener;

    invoke-direct {v1, v2}, Lo/onItemHoverEnter$onNavigationEvent;-><init>(Lo/SearchView$OnCloseListener;)V

    check-cast v1, Lo/annotatedName;

    .line 1994
    iget-object v2, v0, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v1, Lo/onSearchClicked;

    invoke-direct {v1}, Lo/onSearchClicked;-><init>()V

    check-cast v1, Lo/annotatedName;

    .line 2994
    iget-object v2, v0, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    const-string/jumbo v4, "timeout"

    .line 3540
    invoke-static {v4, v2, v3, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lo/propertyName$onPostMessage;->validateRelationship:I

    .line 126
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3626
    invoke-static {v4, v2, v3, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v1

    iput v1, v0, Lo/propertyName$onPostMessage;->INotificationSideChannel:I

    const/4 v1, 0x2

    new-array v1, v1, [Lo/valueChange;

    const/4 v2, 0x0

    .line 127
    sget-object v3, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    aput-object v3, v1, v2

    sget-object v2, Lo/valueChange;->onPostMessage:Lo/valueChange;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "elements"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$asList"

    .line 4076
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5013
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "ArraysUtilJVM.asList(this)"

    .line 4129
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5951
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5954
    sget-object v1, Lo/valueChange;->extraCallback:Lo/valueChange;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lo/valueChange;->onPostMessage:Lo/valueChange;

    .line 5955
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5956
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5959
    :cond_3
    :goto_1
    sget-object v1, Lo/valueChange;->extraCallback:Lo/valueChange;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_4

    goto :goto_2

    .line 5960
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5963
    :cond_5
    :goto_2
    sget-object v1, Lo/valueChange;->ICustomTabsCallback:Lo/valueChange;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    .line 5966
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5971
    sget-object v1, Lo/valueChange;->onMessageChannelReady:Lo/valueChange;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5974
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lo/propertyName$onPostMessage;->onNavigationEvent:Ljava/util/List;

    .line 6019
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v1, "java.util.Collections.singletonList(element)"

    invoke-static {p0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6979
    invoke-static {p0}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lo/propertyName$onPostMessage;->onPostMessage:Ljava/util/List;

    .line 7040
    new-instance p0, Lo/propertyName;

    invoke-direct {p0, v0}, Lo/propertyName;-><init>(Lo/propertyName$onPostMessage;)V

    const-string v0, "OkHttpClient.Builder()\n \u2026ec))\n            .build()"

    .line 129
    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lo/getMaxWidth;->ICustomTabsCallback$Stub:Lo/propertyName;

    return-void

    .line 5967
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5964
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asBinder()V
    .locals 3

    .line 68
    sget-object v0, Lo/getMaxWidth;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lo/getMaxWidth;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 70
    sget-object v1, Lo/getMaxWidth;->extraCallback:Lo/onActionViewExpanded;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lo/onActionViewExpanded;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 71
    sget-object v1, Lo/getMaxWidth;->onNavigationEvent:Lo/launchQuerySearch;

    invoke-interface {v1, v0}, Lo/launchQuerySearch;->onMessageChannelReady(Landroid/content/Context;)V

    .line 73
    :cond_0
    sget-object v0, Lo/getMaxWidth;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 75
    new-instance v0, Lo/onShareTargetSelected;

    invoke-direct {v0}, Lo/onShareTargetSelected;-><init>()V

    check-cast v0, Lo/SearchView$OnCloseListener;

    sput-object v0, Lo/getMaxWidth;->asInterface:Lo/SearchView$OnCloseListener;

    .line 76
    new-instance v0, Lo/onItemHoverEnter$onRelationshipValidationResult;

    invoke-direct {v0}, Lo/onItemHoverEnter$onRelationshipValidationResult;-><init>()V

    check-cast v0, Lo/launchQuerySearch;

    sput-object v0, Lo/getMaxWidth;->onNavigationEvent:Lo/launchQuerySearch;

    .line 77
    new-instance v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;-><init>()V

    check-cast v0, Lo/onActionViewExpanded;

    sput-object v0, Lo/getMaxWidth;->extraCallback:Lo/onActionViewExpanded;

    .line 78
    new-instance v0, Lo/getSwitchMinWidth;

    invoke-direct {v0}, Lo/getSwitchMinWidth;-><init>()V

    check-cast v0, Lo/showSoftInputIfNecessary;

    sput-object v0, Lo/getMaxWidth;->onRelationshipValidationResult:Lo/showSoftInputIfNecessary;

    .line 80
    sget-object v0, Lo/getMaxWidth;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method public static asInterface()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lo/getMaxWidth;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method public static extraCallback()Lo/launchQuerySearch;
    .locals 1

    .line 38
    sget-object v0, Lo/getMaxWidth;->onNavigationEvent:Lo/launchQuerySearch;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/showSoftInputIfNecessary;
    .locals 1

    .line 41
    sget-object v0, Lo/getMaxWidth;->onRelationshipValidationResult:Lo/showSoftInputIfNecessary;

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/content/Context;)V
    .locals 2

    .line 97
    new-instance v0, Lo/forceSuggestionQuery;

    invoke-direct {v0, p0}, Lo/forceSuggestionQuery;-><init>(Landroid/content/Context;)V

    check-cast v0, Lo/SearchView$OnCloseListener;

    sput-object v0, Lo/getMaxWidth;->asInterface:Lo/SearchView$OnCloseListener;

    .line 100
    new-instance v0, Lo/createIntent;

    invoke-direct {v0}, Lo/createIntent;-><init>()V

    check-cast v0, Lo/launchQuerySearch;

    .line 101
    sput-object v0, Lo/getMaxWidth;->onNavigationEvent:Lo/launchQuerySearch;

    invoke-interface {v0, p0}, Lo/launchQuerySearch;->onNavigationEvent(Landroid/content/Context;)V

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 105
    new-instance v0, Lo/rewriteQueryFromSuggestion;

    invoke-direct {v0}, Lo/rewriteQueryFromSuggestion;-><init>()V

    check-cast v0, Lo/onActionViewExpanded;

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lo/onTextFocusChanged;

    invoke-direct {v0}, Lo/onTextFocusChanged;-><init>()V

    check-cast v0, Lo/onActionViewExpanded;

    .line 109
    :goto_0
    sput-object v0, Lo/getMaxWidth;->extraCallback:Lo/onActionViewExpanded;

    invoke-interface {v0, p0}, Lo/onActionViewExpanded;->onPostMessage(Landroid/content/Context;)V

    .line 112
    new-instance p0, Lo/onShareTargetSelected$extraCallback;

    invoke-direct {p0}, Lo/onShareTargetSelected$extraCallback;-><init>()V

    check-cast p0, Lo/showSoftInputIfNecessary;

    sput-object p0, Lo/getMaxWidth;->onRelationshipValidationResult:Lo/showSoftInputIfNecessary;

    return-void
.end method

.method public static onNavigationEvent()Lo/propertyName;
    .locals 1

    .line 43
    sget-object v0, Lo/getMaxWidth;->ICustomTabsCallback$Stub:Lo/propertyName;

    return-object v0
.end method

.method public static onPostMessage()Lo/onActionViewExpanded;
    .locals 1

    .line 37
    sget-object v0, Lo/getMaxWidth;->extraCallback:Lo/onActionViewExpanded;

    return-object v0
.end method

.method public static onPostMessage(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appContext.packageName"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lo/getMaxWidth;->asBinder:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sget-object v0, Lo/getMaxWidth;->asBinder:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 91
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    sput-object v0, Lo/getMaxWidth;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public static onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lo/getMaxWidth;->onTransact:Ljava/lang/String;

    return-object v0
.end method
