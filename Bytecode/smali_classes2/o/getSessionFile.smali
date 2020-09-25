.class public final Lo/getSessionFile;
.super Ljava/lang/Object;

# interfaces
.implements Lo/NativeSessionFileProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/NativeSessionFileProvider<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final extraCallback:Ljava/lang/Object;

.field public final onMessageChannelReady:Lo/MissingNativeComponent$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MissingNativeComponent$1<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/MissingNativeComponent$1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/MissingNativeComponent$1<",
            "TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getSessionFile;->extraCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/getSessionFile;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo/getSessionFile;->onMessageChannelReady:Lo/MissingNativeComponent$1;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getMinidumpFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMinidumpFile<",
            "TResultT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/getSessionFile;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getSessionFile;->onMessageChannelReady:Lo/MissingNativeComponent$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/getSessionFile;->onNavigationEvent:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/isAttachedToWindow$onMessageChannelReady;

    invoke-direct {v1, p0, p1}, Lo/isAttachedToWindow$onMessageChannelReady;-><init>(Lo/getSessionFile;Lo/getMinidumpFile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
