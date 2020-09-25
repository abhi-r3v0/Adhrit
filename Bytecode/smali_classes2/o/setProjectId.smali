.class public abstract Lo/setProjectId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setProjectId$onNavigationEvent;,
        Lo/setProjectId$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final onMessageChannelReady:Ljava/lang/Object;

.field public onNavigationEvent:Lo/setProjectId$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setProjectId$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setProjectId;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Lo/setStorageBucket;)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setStorageBucket;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNavigationEvent()V
    .locals 2

    .line 3
    iget-object v0, p0, Lo/setProjectId;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lo/setProjectId;->onNavigationEvent:Lo/setProjectId$onNavigationEvent;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lo/setProjectId;->onNavigationEvent:Lo/setProjectId$onNavigationEvent;

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
