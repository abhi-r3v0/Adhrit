.class public final Lo/populateSessionOperatingSystemData$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildSingleThreadExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateSessionOperatingSystemData;->forAuthenticatedAccess(Lo/getNativeSessionFilesDir;)Lo/buildSingleThreadExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$authProvider:Lo/getNativeSessionFilesDir;


# direct methods
.method constructor <init>(Lo/getNativeSessionFilesDir;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/populateSessionOperatingSystemData$4;->val$authProvider:Lo/getNativeSessionFilesDir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$addTokenChangeListener$2(Lo/buildSingleThreadExecutorService$onPostMessage;Lo/joinMapsEntries;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Lo/joinMapsEntries;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/buildSingleThreadExecutorService$onPostMessage;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$addTokenChangeListener$3(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;Lo/joinMapsEntries;)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Lo/removeAndRecycleScrapInt$ICustomTabsCallback;->lambdaFactory$(Lo/buildSingleThreadExecutorService$onPostMessage;Lo/joinMapsEntries;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$getToken$0(Lo/buildSingleThreadExecutorService$onNavigationEvent;Lo/isClsTrace;)V
    .locals 0

    .line 38
    invoke-virtual {p1}, Lo/isClsTrace;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/buildSingleThreadExecutorService$onNavigationEvent;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getToken$1(Lo/buildSingleThreadExecutorService$onNavigationEvent;Ljava/lang/Exception;)V
    .locals 1

    .line 41
    invoke-static {p1}, Lo/populateSessionOperatingSystemData;->access$000(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-interface {p0, p1}, Lo/buildSingleThreadExecutorService$onNavigationEvent;->onSuccess(Ljava/lang/String;)V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lo/buildSingleThreadExecutorService$onNavigationEvent;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 0

    .line 53
    invoke-static {p1, p2}, Lo/populateEventApplicationData;->lambdaFactory$(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)Lo/getUserMetadata;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lo/populateSessionOperatingSystemData$4;->val$authProvider:Lo/getNativeSessionFilesDir;

    invoke-interface {p2, p1}, Lo/getNativeSessionFilesDir;->addIdTokenListener(Lo/getUserMetadata;)V

    return-void
.end method

.method public final getToken(ZLo/buildSingleThreadExecutorService$onNavigationEvent;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/populateSessionOperatingSystemData$4;->val$authProvider:Lo/getNativeSessionFilesDir;

    invoke-interface {v0, p1}, Lo/getNativeSessionFilesDir;->getAccessToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 37
    invoke-static {p2}, Lo/getPaddingTop$extraCallback;->lambdaFactory$(Lo/buildSingleThreadExecutorService$onNavigationEvent;)Lo/addLifecycleEventListener;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->extraCallback(Lo/addLifecycleEventListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p2}, Lo/setMeasurementCacheEnabled$ICustomTabsCallback;->lambdaFactory$(Lo/buildSingleThreadExecutorService$onNavigationEvent;)Lo/addBackgroundStateChangeListener;

    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Lo/addBackgroundStateChangeListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final removeTokenChangeListener(Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 0

    return-void
.end method
