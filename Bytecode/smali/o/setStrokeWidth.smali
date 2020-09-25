.class public final Lo/setStrokeWidth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# static fields
.field private static extraCallback:Lo/setStrokeWidth;


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

.method public static declared-synchronized onPostMessage()Lo/setStrokeWidth;
    .locals 2

    const-class v0, Lo/setStrokeWidth;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lo/setStrokeWidth;->extraCallback:Lo/setStrokeWidth;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lo/setStrokeWidth;

    invoke-direct {v1}, Lo/setStrokeWidth;-><init>()V

    sput-object v1, Lo/setStrokeWidth;->extraCallback:Lo/setStrokeWidth;

    .line 22
    :cond_0
    sget-object v1, Lo/setStrokeWidth;->extraCallback:Lo/setStrokeWidth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
