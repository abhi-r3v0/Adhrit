.class public abstract Lo/setActiveQueueItemId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setActiveQueueItemId$extraCallback;
    }
.end annotation


# static fields
.field private static extraCallback:Lo/setActiveQueueItemId; = null

.field private static final onPostMessage:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "WM-"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized extraCallback(Lo/setActiveQueueItemId;)V
    .locals 1

    const-class v0, Lo/setActiveQueueItemId;

    monitor-enter v0

    .line 45
    :try_start_0
    sput-object p0, Lo/setActiveQueueItemId;->extraCallback:Lo/setActiveQueueItemId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onPostMessage()Lo/setActiveQueueItemId;
    .locals 3

    const-class v0, Lo/setActiveQueueItemId;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lo/setActiveQueueItemId;->extraCallback:Lo/setActiveQueueItemId;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lo/setActiveQueueItemId$extraCallback;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lo/setActiveQueueItemId$extraCallback;-><init>(I)V

    sput-object v1, Lo/setActiveQueueItemId;->extraCallback:Lo/setActiveQueueItemId;

    .line 78
    :cond_0
    sget-object v1, Lo/setActiveQueueItemId;->extraCallback:Lo/setActiveQueueItemId;
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
.method public varargs abstract ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract extraCallback(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method

.method public varargs abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public varargs abstract onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
.end method
