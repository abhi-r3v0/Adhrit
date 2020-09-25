.class public final Lo/MediaSessionCompat$MediaSessionImplApi18;
.super Lo/update$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;,
        Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

.field private final extraCallback:Ljava/lang/String;

.field private onNavigationEvent:Lo/onAddQueueItem;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/onAddQueueItem;Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget v0, p2, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->ICustomTabsCallback:I

    invoke-direct {p0, v0}, Lo/update$onPostMessage;-><init>(I)V

    .line 55
    iput-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onNavigationEvent:Lo/onAddQueueItem;

    .line 56
    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    .line 57
    iput-object p3, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->extraCallback:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method private static ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)Z
    .locals 2

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    .line 192
    invoke-interface {p0, v0}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 196
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 198
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 199
    throw v0
.end method

.method private static onPostMessage(Lo/MediaControllerCompatApi21$Callback;)Z
    .locals 2

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 181
    invoke-interface {p0, v0}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 185
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 187
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 188
    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;II)V
    .locals 5

    .line 93
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onNavigationEvent:Lo/onAddQueueItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 94
    iget-object v0, v0, Lo/onAddQueueItem;->onMessageChannelReady:Lo/setCurrentControllerInfo$ICustomTabsCallback;

    if-ne p2, p3, :cond_0

    .line 3005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-le p3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3008
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3009
    invoke-virtual {v0, v4, v3, p2, p3}, Lo/setCurrentControllerInfo$ICustomTabsCallback;->extraCallback(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 97
    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v2, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onTransact(Lo/MediaControllerCompatApi21$Callback;)V

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaSessionCompat$MediaSessionImplApi18$1;

    .line 99
    invoke-virtual {v2, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$1;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    move-result-object v0

    .line 102
    iget-boolean v2, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->onMessageChannelReady:Z

    if-eqz v2, :cond_3

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 3177
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 3173
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->extraCallback:Ljava/lang/String;

    .line 4051
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3173
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    .line 112
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onNavigationEvent:Lo/onAddQueueItem;

    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0, p2, p3}, Lo/onAddQueueItem;->onPostMessage(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V

    .line 115
    iget-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;)V

    return-void

    .line 117
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A migration from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void
.end method

.method public final onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 4

    .line 134
    invoke-super {p0, p1}, Lo/update$onPostMessage;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    .line 4142
    invoke-static {p1}, Lo/MediaSessionCompat$MediaSessionImplApi18;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4144
    new-instance v0, Lo/IPostMessageService;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v2}, Lo/IPostMessageService;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v0

    .line 4147
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 4148
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 4151
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4153
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4154
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 4151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4152
    throw p1

    .line 4161
    :cond_2
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    move-result-object v0

    .line 4162
    iget-boolean v2, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->onMessageChannelReady:Z

    if-eqz v2, :cond_4

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 4177
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 4173
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->extraCallback:Ljava/lang/String;

    .line 5051
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4173
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 136
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->extraCallback(Lo/MediaControllerCompatApi21$Callback;)V

    .line 138
    iput-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->onNavigationEvent:Lo/onAddQueueItem;

    return-void

    .line 4163
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 3

    .line 73
    invoke-static {p1}, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v1, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onPostMessage(Lo/MediaControllerCompatApi21$Callback;)V

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;

    move-result-object v0

    .line 81
    iget-boolean v1, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 1177
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->extraCallback:Ljava/lang/String;

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi18;->ICustomTabsCallback:Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V

    return-void
.end method

.method public final onPostMessage(Lo/MediaControllerCompatApi21$Callback;II)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lo/update$onPostMessage;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;II)V

    return-void
.end method
