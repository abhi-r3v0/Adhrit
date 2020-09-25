.class public final Lo/updateItemCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/invalidateAnchorPositionInfo;


# static fields
.field private static onPostMessage:Lo/updateItemCount;


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

.method public static declared-synchronized onPostMessage()Lo/updateItemCount;
    .locals 2

    const-class v0, Lo/updateItemCount;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lo/updateItemCount;->onPostMessage:Lo/updateItemCount;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lo/updateItemCount;

    invoke-direct {v1}, Lo/updateItemCount;-><init>()V

    sput-object v1, Lo/updateItemCount;->onPostMessage:Lo/updateItemCount;

    .line 22
    :cond_0
    sget-object v1, Lo/updateItemCount;->onPostMessage:Lo/updateItemCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
