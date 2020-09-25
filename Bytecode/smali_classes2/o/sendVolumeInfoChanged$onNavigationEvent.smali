.class final Lo/sendVolumeInfoChanged$onNavigationEvent;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendVolumeInfoChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final extraCallback:Lo/update$onPostMessage;

.field final onMessageChannelReady:[Lo/getRccStateFromState;

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Lo/getRccStateFromState;Lo/update$onPostMessage;)V
    .locals 6

    .line 132
    iget v4, p4, Lo/update$onPostMessage;->onMessageChannelReady:I

    new-instance v5, Lo/sendVolumeInfoChanged$onNavigationEvent$5;

    invoke-direct {v5, p4, p3}, Lo/sendVolumeInfoChanged$onNavigationEvent$5;-><init>(Lo/update$onPostMessage;[Lo/getRccStateFromState;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 139
    iput-object p4, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->extraCallback:Lo/update$onPostMessage;

    .line 140
    iput-object p3, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onMessageChannelReady:[Lo/getRccStateFromState;

    return-void
.end method

.method private ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;
    .locals 3

    .line 166
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onMessageChannelReady:[Lo/getRccStateFromState;

    const/4 v1, 0x0

    .line 2207
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 2322
    iget-object v2, v2, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 2209
    :cond_1
    new-instance v2, Lo/getRccStateFromState;

    invoke-direct {v2, p1}, Lo/getRccStateFromState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v2, v0, v1

    .line 2211
    :cond_2
    aget-object p1, v0, v1

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 202
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onMessageChannelReady:[Lo/getRccStateFromState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->extraCallback:Lo/update$onPostMessage;

    invoke-direct {p0, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/update$onPostMessage;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onPostMessage:Z

    .line 188
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->extraCallback:Lo/update$onPostMessage;

    invoke-direct {p0, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lo/update$onPostMessage;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;II)V

    return-void
.end method

.method final declared-synchronized onNavigationEvent()Lo/MediaControllerCompatApi21$Callback;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 144
    :try_start_0
    iput-boolean v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onPostMessage:Z

    .line 145
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 146
    iget-boolean v2, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onPostMessage:Z

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 149
    invoke-virtual {p0}, Lo/sendVolumeInfoChanged$onNavigationEvent;->onNavigationEvent()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1166
    :cond_0
    :try_start_1
    iget-object v2, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onMessageChannelReady:[Lo/getRccStateFromState;

    .line 1207
    aget-object v3, v2, v0

    if-eqz v3, :cond_2

    .line 1322
    iget-object v3, v3, Lo/getRccStateFromState;->onMessageChannelReady:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v3, v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 1209
    :cond_2
    new-instance v3, Lo/getRccStateFromState;

    invoke-direct {v3, v1}, Lo/getRccStateFromState;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    aput-object v3, v2, v0

    .line 1211
    :cond_3
    aget-object v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->extraCallback:Lo/update$onPostMessage;

    invoke-direct {p0, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/update$onPostMessage;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->onPostMessage:Z

    .line 177
    iget-object v0, p0, Lo/sendVolumeInfoChanged$onNavigationEvent;->extraCallback:Lo/update$onPostMessage;

    invoke-direct {p0, p1}, Lo/sendVolumeInfoChanged$onNavigationEvent;->ICustomTabsCallback(Landroid/database/sqlite/SQLiteDatabase;)Lo/getRccStateFromState;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lo/update$onPostMessage;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;II)V

    return-void
.end method
