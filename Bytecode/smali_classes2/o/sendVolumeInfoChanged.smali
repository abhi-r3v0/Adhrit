.class public final Lo/sendVolumeInfoChanged;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/update;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendVolumeInfoChanged$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/update$onPostMessage;

.field private asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

.field private final extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Ljava/lang/Object;

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/update$onPostMessage;Z)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/sendVolumeInfoChanged;->onNavigationEvent:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lo/sendVolumeInfoChanged;->onMessageChannelReady:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lo/sendVolumeInfoChanged;->ICustomTabsCallback:Lo/update$onPostMessage;

    .line 57
    iput-boolean p4, p0, Lo/sendVolumeInfoChanged;->extraCallback:Z

    .line 58
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/sendVolumeInfoChanged;->onPostMessage:Ljava/lang/Object;

    return-void
.end method

.method private extraCallback()Lo/sendVolumeInfoChanged$onNavigationEvent;
    .locals 6

    .line 69
    iget-object v0, p0, Lo/sendVolumeInfoChanged;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lo/getRccStateFromState;

    .line 72
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lo/sendVolumeInfoChanged;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lo/sendVolumeInfoChanged;->extraCallback:Z

    if-eqz v2, :cond_0

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lo/sendVolumeInfoChanged;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lo/sendVolumeInfoChanged;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    new-instance v3, Lo/sendVolumeInfoChanged$onNavigationEvent;

    iget-object v4, p0, Lo/sendVolumeInfoChanged;->onNavigationEvent:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lo/sendVolumeInfoChanged;->ICustomTabsCallback:Lo/update$onPostMessage;

    invoke-direct {v3, v4, v2, v1, v5}, Lo/sendVolumeInfoChanged$onNavigationEvent;-><init>(Landroid/content/Context;Ljava/lang/String;[Lo/getRccStateFromState;Lo/update$onPostMessage;)V

    iput-object v3, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    goto :goto_0

    .line 78
    :cond_0
    new-instance v2, Lo/sendVolumeInfoChanged$onNavigationEvent;

    iget-object v3, p0, Lo/sendVolumeInfoChanged;->onNavigationEvent:Landroid/content/Context;

    iget-object v4, p0, Lo/sendVolumeInfoChanged;->onMessageChannelReady:Ljava/lang/String;

    iget-object v5, p0, Lo/sendVolumeInfoChanged;->ICustomTabsCallback:Lo/update$onPostMessage;

    invoke-direct {v2, v3, v4, v1, v5}, Lo/sendVolumeInfoChanged$onNavigationEvent;-><init>(Landroid/content/Context;Ljava/lang/String;[Lo/getRccStateFromState;Lo/update$onPostMessage;)V

    iput-object v2, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    .line 80
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    iget-boolean v2, p0, Lo/sendVolumeInfoChanged;->onTransact:Z

    invoke-virtual {v1, v2}, Lo/sendVolumeInfoChanged$onNavigationEvent;->setWriteAheadLoggingEnabled(Z)V

    .line 84
    :cond_1
    iget-object v1, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;
    .locals 1

    .line 106
    invoke-direct {p0}, Lo/sendVolumeInfoChanged;->extraCallback()Lo/sendVolumeInfoChanged$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/sendVolumeInfoChanged$onNavigationEvent;->onNavigationEvent()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/sendVolumeInfoChanged;->onPostMessage:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lo/sendVolumeInfoChanged;->asBinder:Lo/sendVolumeInfoChanged$onNavigationEvent;

    invoke-virtual {v1, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->setWriteAheadLoggingEnabled(Z)V

    .line 100
    :cond_0
    iput-boolean p1, p0, Lo/sendVolumeInfoChanged;->onTransact:Z

    .line 101
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final close()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lo/sendVolumeInfoChanged;->extraCallback()Lo/sendVolumeInfoChanged$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lo/sendVolumeInfoChanged;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
