.class public final Lo/AmexLoginStatus;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final extraCallback:Lo/Properties$$Parcelable;

.field public static final onNavigationEvent:Lo/Properties$$Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "Default"

    invoke-static {v0}, Lo/AmexLoginStatus;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x2

    const v2, 0x7fffffff

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v8}, Lo/Properties;->extraCallback(Ljava/util/concurrent/Executor;)Lo/Properties$$Parcelable;

    move-result-object v0

    sput-object v0, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v1, "Loader"

    invoke-static {v1}, Lo/AmexLoginStatus;->onMessageChannelReady(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v0}, Lo/Properties;->extraCallback(Ljava/util/concurrent/Executor;)Lo/Properties$$Parcelable;

    move-result-object v0

    sput-object v0, Lo/AmexLoginStatus;->extraCallback:Lo/Properties$$Parcelable;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    new-instance v0, Lo/AuthSupportedResponse;

    invoke-direct {v0, p0}, Lo/AuthSupportedResponse;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lo/AmexLoginStatus;->extraCallback:Lo/Properties$$Parcelable;

    invoke-interface {v0, p0}, Lo/Properties$$Parcelable;->ICustomTabsCallback(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-interface {v0, p0}, Lo/Properties$$Parcelable;->ICustomTabsCallback(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/AmexLoginStatus;->onNavigationEvent:Lo/Properties$$Parcelable;

    invoke-interface {v0, p0}, Lo/Properties$$Parcelable;->onNavigationEvent(Ljava/util/concurrent/Callable;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p0

    return-object p0
.end method
