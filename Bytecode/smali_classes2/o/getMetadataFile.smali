.class public final Lo/getMetadataFile;
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
.field public final ICustomTabsCallback:Ljava/lang/Object;

.field private final onMessageChannelReady:Ljava/util/concurrent/Executor;

.field public final onPostMessage:Lo/getAppFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getAppFile<",
            "-TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/getAppFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lo/getAppFile<",
            "-TResultT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/getMetadataFile;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/getMetadataFile;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo/getMetadataFile;->onPostMessage:Lo/getAppFile;

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

    invoke-virtual {p1}, Lo/getMinidumpFile;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/getMetadataFile;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/getMetadataFile;->onPostMessage:Lo/getAppFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/getMetadataFile;->onMessageChannelReady:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/addOnItemTouchListener$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/addOnItemTouchListener$onPostMessage;-><init>(Lo/getMetadataFile;Lo/getMinidumpFile;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_1
    return-void
.end method
