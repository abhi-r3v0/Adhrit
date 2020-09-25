.class final Landroidx/lifecycle/LiveData$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;)V
    .locals 0

    .line 82
    iput-object p1, p0, Landroidx/lifecycle/LiveData$5;->extraCallback:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 87
    iget-object v0, p0, Landroidx/lifecycle/LiveData$5;->extraCallback:Landroidx/lifecycle/LiveData;

    iget-object v0, v0, Landroidx/lifecycle/LiveData;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData$5;->extraCallback:Landroidx/lifecycle/LiveData;

    iget-object v1, v1, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    .line 89
    iget-object v2, p0, Landroidx/lifecycle/LiveData$5;->extraCallback:Landroidx/lifecycle/LiveData;

    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Landroidx/lifecycle/LiveData$5;->extraCallback:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 90
    monitor-exit v0

    throw v1
.end method
