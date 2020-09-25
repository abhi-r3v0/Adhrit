.class public final Lo/setImeVisibility;
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
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J>\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u000206J(\u00107\u001a\u00020(2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00103\u001a\u000204H\u0002J\u0006\u00108\u001a\u00020(R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0007\"\u0004\u0008\u001a\u0010\tR\u001a\u0010\u001b\u001a\u00020\u001cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u00069"
    }
    d2 = {
        "Lcom/datadog/android/tracing/internal/TracesFeature;",
        "",
        "()V",
        "TRACES_UPLOAD_THREAD_NAME",
        "",
        "clientToken",
        "getClientToken$dd_sdk_android_release",
        "()Ljava/lang/String;",
        "setClientToken$dd_sdk_android_release",
        "(Ljava/lang/String;)V",
        "endpointUrl",
        "getEndpointUrl$dd_sdk_android_release",
        "setEndpointUrl$dd_sdk_android_release",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getInitialized$dd_sdk_android_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "persistenceStrategy",
        "Lcom/datadog/android/core/internal/domain/PersistenceStrategy;",
        "Ldatadog/opentracing/DDSpan;",
        "getPersistenceStrategy$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/domain/PersistenceStrategy;",
        "setPersistenceStrategy$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/domain/PersistenceStrategy;)V",
        "serviceName",
        "getServiceName$dd_sdk_android_release",
        "setServiceName$dd_sdk_android_release",
        "uploadHandlerThread",
        "Landroid/os/HandlerThread;",
        "getUploadHandlerThread$dd_sdk_android_release",
        "()Landroid/os/HandlerThread;",
        "setUploadHandlerThread$dd_sdk_android_release",
        "(Landroid/os/HandlerThread;)V",
        "uploader",
        "Lcom/datadog/android/core/internal/net/DataUploader;",
        "getUploader$dd_sdk_android_release",
        "()Lcom/datadog/android/core/internal/net/DataUploader;",
        "setUploader$dd_sdk_android_release",
        "(Lcom/datadog/android/core/internal/net/DataUploader;)V",
        "initialize",
        "",
        "appContext",
        "Landroid/content/Context;",
        "config",
        "Lcom/datadog/android/DatadogConfig$FeatureConfig;",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "userInfoProvider",
        "Lcom/datadog/android/log/internal/user/UserInfoProvider;",
        "systemInfoProvider",
        "Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "timeProvider",
        "Lcom/datadog/android/core/internal/time/TimeProvider;",
        "setupUploader",
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
.field public static ICustomTabsCallback:Lo/updateSearchAutoComplete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/updateSearchAutoComplete<",
            "Lo/overwriteServerCache;",
            ">;"
        }
    .end annotation
.end field

.field public static final extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final onMessageChannelReady:Lo/setImeVisibility;

.field public static onNavigationEvent:Ljava/lang/String;

.field public static onPostMessage:Ljava/lang/String;

.field private static onRelationshipValidationResult:Landroid/os/HandlerThread;

.field private static onTransact:Lo/onCloseClicked;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lo/setImeVisibility;

    invoke-direct {v0}, Lo/setImeVisibility;-><init>()V

    sput-object v0, Lo/setImeVisibility;->onMessageChannelReady:Lo/setImeVisibility;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lo/setImeVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 32
    sput-object v0, Lo/setImeVisibility;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "https://public-trace-http-intake.logs.datadoghq.com"

    .line 33
    sput-object v0, Lo/setImeVisibility;->onPostMessage:Ljava/lang/String;

    .line 36
    new-instance v0, Lo/getDecoratedHint;

    invoke-direct {v0}, Lo/getDecoratedHint;-><init>()V

    check-cast v0, Lo/updateSearchAutoComplete;

    sput-object v0, Lo/setImeVisibility;->ICustomTabsCallback:Lo/updateSearchAutoComplete;

    .line 37
    new-instance v0, Lo/onItemHoverEnter$onTransact;

    invoke-direct {v0}, Lo/onItemHoverEnter$onTransact;-><init>()V

    check-cast v0, Lo/onCloseClicked;

    sput-object v0, Lo/setImeVisibility;->onTransact:Lo/onCloseClicked;

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NoOp"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/setImeVisibility;->onRelationshipValidationResult:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/onCloseClicked;
    .locals 1

    .line 37
    sget-object v0, Lo/setImeVisibility;->onTransact:Lo/onCloseClicked;

    return-object v0
.end method

.method public static extraCallback()Lo/updateSearchAutoComplete;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/updateSearchAutoComplete<",
            "Lo/overwriteServerCache;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lo/setImeVisibility;->ICustomTabsCallback:Lo/updateSearchAutoComplete;

    return-object v0
.end method

.method public static onMessageChannelReady()V
    .locals 2

    .line 71
    sget-object v0, Lo/setImeVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lo/setImeVisibility;->onRelationshipValidationResult:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 74
    new-instance v0, Lo/getDecoratedHint;

    invoke-direct {v0}, Lo/getDecoratedHint;-><init>()V

    check-cast v0, Lo/updateSearchAutoComplete;

    sput-object v0, Lo/setImeVisibility;->ICustomTabsCallback:Lo/updateSearchAutoComplete;

    .line 75
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Test"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/setImeVisibility;->onRelationshipValidationResult:Landroid/os/HandlerThread;

    const-string v0, ""

    .line 76
    sput-object v0, Lo/setImeVisibility;->onNavigationEvent:Ljava/lang/String;

    const-string v0, "https://public-trace-http-intake.logs.datadoghq.com"

    .line 77
    sput-object v0, Lo/setImeVisibility;->onPostMessage:Ljava/lang/String;

    .line 80
    sget-object v0, Lo/setImeVisibility;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Lo/propertyName;Lo/onActionViewExpanded;Lo/launchQuerySearch;)V
    .locals 7

    .line 92
    new-instance v0, Lo/setShareIntent;

    sget-object v1, Lo/setImeVisibility;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lo/setShareIntent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/propertyName;)V

    check-cast v0, Lo/onCloseClicked;

    sput-object v0, Lo/setImeVisibility;->onTransact:Lo/onCloseClicked;

    .line 94
    new-instance p0, Lo/updateCloseButton;

    .line 96
    sget-object p1, Lo/setImeVisibility;->ICustomTabsCallback:Lo/updateSearchAutoComplete;

    invoke-interface {p1}, Lo/updateSearchAutoComplete;->onMessageChannelReady()Lo/getChildBoundsWithinSearchView;

    move-result-object v3

    .line 97
    sget-object v4, Lo/setImeVisibility;->onTransact:Lo/onCloseClicked;

    const-string v2, "ddog-traces-upload"

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 94
    invoke-direct/range {v1 .. v6}, Lo/updateCloseButton;-><init>(Ljava/lang/String;Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;Lo/onActionViewExpanded;Lo/launchQuerySearch;)V

    check-cast p0, Landroid/os/HandlerThread;

    .line 101
    sput-object p0, Lo/setImeVisibility;->onRelationshipValidationResult:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
