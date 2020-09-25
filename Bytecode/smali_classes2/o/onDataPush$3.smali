.class final Lo/onDataPush$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onDataPush$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDataPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const-string v0, "grpc-shared-destroyer-%d"

    .line 51
    invoke-static {v0}, Lo/getAuthTokenProvider;->onNavigationEvent(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 50
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
