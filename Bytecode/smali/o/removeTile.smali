.class public final Lo/removeTile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/recycleTile;


# static fields
.field private static onMessageChannelReady:Lo/removeTile;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized extraCallback()Lo/removeTile;
    .locals 2

    const-class v0, Lo/removeTile;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lo/removeTile;->onMessageChannelReady:Lo/removeTile;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lo/removeTile;

    invoke-direct {v1}, Lo/removeTile;-><init>()V

    sput-object v1, Lo/removeTile;->onMessageChannelReady:Lo/removeTile;

    .line 22
    :cond_0
    sget-object v1, Lo/removeTile;->onMessageChannelReady:Lo/removeTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
