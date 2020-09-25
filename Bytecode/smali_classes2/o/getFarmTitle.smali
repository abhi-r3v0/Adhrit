.class public final Lo/getFarmTitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getFarmTitle$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static extraCallback:Lo/getFarmTitle$onMessageChannelReady;


# instance fields
.field private final onMessageChannelReady:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/getFarmTitle;->onMessageChannelReady:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized onPostMessage()Lo/getFarmTitle$onMessageChannelReady;
    .locals 2

    const-class v0, Lo/getFarmTitle;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lo/getFarmTitle;->extraCallback:Lo/getFarmTitle$onMessageChannelReady;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lo/getPerceivedValueCurrency;

    invoke-direct {v1}, Lo/getPerceivedValueCurrency;-><init>()V

    .line 3
    sput-object v1, Lo/getFarmTitle;->extraCallback:Lo/getFarmTitle$onMessageChannelReady;

    .line 4
    :cond_0
    sget-object v1, Lo/getFarmTitle;->extraCallback:Lo/getFarmTitle$onMessageChannelReady;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getFarmTitle;->onMessageChannelReady:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
