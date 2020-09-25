.class public final Lo/populateSessionOperatingSystemData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildSingleThreadExecutorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateSessionOperatingSystemData;->forUnauthenticatedAccess()Lo/buildSingleThreadExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$addTokenChangeListener$0(Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-interface {p0, v0}, Lo/buildSingleThreadExecutorService$onPostMessage;->onTokenChange(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 0

    .line 77
    invoke-static {p2}, Lo/layoutDecorated$ICustomTabsCallback;->lambdaFactory$(Lo/buildSingleThreadExecutorService$onPostMessage;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getToken(ZLo/buildSingleThreadExecutorService$onNavigationEvent;)V
    .locals 0

    const/4 p1, 0x0

    .line 71
    invoke-interface {p2, p1}, Lo/buildSingleThreadExecutorService$onNavigationEvent;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public final removeTokenChangeListener(Lo/buildSingleThreadExecutorService$onPostMessage;)V
    .locals 0

    return-void
.end method
