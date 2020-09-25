.class public final Lo/getNamedThreadFactory$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/buildSingleThreadExecutorService$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getNamedThreadFactory;->lambda$wrapAuthTokenProvider$0(Lo/buildSingleThreadExecutorService;Ljava/util/concurrent/ScheduledExecutorService;ZLo/isAutomaticDataCollectionEnabled$onPostMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

.field final synthetic val$executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lo/isAutomaticDataCollectionEnabled$onPostMessage;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lo/getNamedThreadFactory$2;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lo/getNamedThreadFactory$2;->val$callback:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onError$1(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 282
    invoke-interface {p0, p1}, Lo/isAutomaticDataCollectionEnabled$onPostMessage;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)V
    .locals 0

    .line 277
    invoke-interface {p0, p1}, Lo/isAutomaticDataCollectionEnabled$onPostMessage;->onSuccess(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lo/getNamedThreadFactory$2;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/getNamedThreadFactory$2;->val$callback:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

    invoke-static {v1, p1}, Lo/isViewPartiallyVisible$onMessageChannelReady;->lambdaFactory$(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 277
    iget-object v0, p0, Lo/getNamedThreadFactory$2;->val$executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lo/getNamedThreadFactory$2;->val$callback:Lo/isAutomaticDataCollectionEnabled$onPostMessage;

    invoke-static {v1, p1}, Lo/getDecoratedBottom$onNavigationEvent;->lambdaFactory$(Lo/isAutomaticDataCollectionEnabled$onPostMessage;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
