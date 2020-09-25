.class final Lo/initProgress$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/initProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field private final extraCallback:Ljava/lang/String;

.field private onMessageChannelReady:I

.field final onNavigationEvent:Lo/initProgress$extraCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/initProgress$extraCallback;Z)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lo/initProgress$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 375
    iput-object p2, p0, Lo/initProgress$onNavigationEvent;->onNavigationEvent:Lo/initProgress$extraCallback;

    .line 376
    iput-boolean p3, p0, Lo/initProgress$onNavigationEvent;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    monitor-enter p0

    .line 381
    :try_start_0
    new-instance v0, Lo/initProgress$onNavigationEvent$3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glide-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/initProgress$onNavigationEvent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/initProgress$onNavigationEvent;->onMessageChannelReady:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/initProgress$onNavigationEvent$3;-><init>(Lo/initProgress$onNavigationEvent;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 399
    iget p1, p0, Lo/initProgress$onNavigationEvent;->onMessageChannelReady:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/initProgress$onNavigationEvent;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
