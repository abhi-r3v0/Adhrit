.class public final Lo/setPathData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPathName;


# static fields
.field private static onPostMessage:Lo/setPathData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized extraCallback()Lo/setPathData;
    .locals 2

    const-class v0, Lo/setPathData;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lo/setPathData;->onPostMessage:Lo/setPathData;

    if-nez v1, :cond_0

    .line 18
    new-instance v1, Lo/setPathData;

    invoke-direct {v1}, Lo/setPathData;-><init>()V

    sput-object v1, Lo/setPathData;->onPostMessage:Lo/setPathData;

    .line 20
    :cond_0
    sget-object v1, Lo/setPathData;->onPostMessage:Lo/setPathData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
