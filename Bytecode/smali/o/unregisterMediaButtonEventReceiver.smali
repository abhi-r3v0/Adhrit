.class final Lo/unregisterMediaButtonEventReceiver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/update;


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Landroid/content/Context;

.field private final onNavigationEvent:Ljava/io/File;

.field onPostMessage:Lo/onAddQueueItem;

.field private onRelationshipValidationResult:Z

.field private final onTransact:Lo/update;


# direct methods
.method private onPostMessage(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->extraCallback:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lo/unregisterMediaButtonEventReceiver;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onNavigationEvent:Ljava/io/File;

    if-eqz v0, :cond_4

    .line 180
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/unregisterMediaButtonEventReceiver;->onNavigationEvent:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 187
    :goto_0
    iget-object v1, p0, Lo/unregisterMediaButtonEventReceiver;->onMessageChannelReady:Landroid/content/Context;

    .line 188
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "room-copy-helper"

    const-string v3, ".tmp"

    .line 187
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 190
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 191
    invoke-static {v0, v2}, Lo/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;->onPostMessage(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create directories for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_2
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 200
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to move intermediate file ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to destination ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "copyFromAssetPath and copyFromFile == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;
    .locals 9

    const-string v0, "ROOM"

    .line 86
    iget-boolean v1, p0, Lo/unregisterMediaButtonEventReceiver;->onRelationshipValidationResult:Z

    if-nez v1, :cond_f

    .line 2075
    iget-object v1, p0, Lo/unregisterMediaButtonEventReceiver;->onTransact:Lo/update;

    invoke-interface {v1}, Lo/update;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 1116
    iget-object v2, p0, Lo/unregisterMediaButtonEventReceiver;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1117
    iget-object v3, p0, Lo/unregisterMediaButtonEventReceiver;->onPostMessage:Lo/onAddQueueItem;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lo/onAddQueueItem;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 1119
    :goto_1
    new-instance v5, Lo/buildRccMetadata;

    iget-object v6, p0, Lo/unregisterMediaButtonEventReceiver;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v1, v6, v3}, Lo/buildRccMetadata;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 2079
    :try_start_0
    iget-object v3, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2080
    iget-boolean v3, v5, Lo/buildRccMetadata;->onNavigationEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 2082
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, v5, Lo/buildRccMetadata;->onPostMessage:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    .line 2083
    iget-object v3, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2085
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to grab copy lock."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1125
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, "Unable to copy database file."

    if-nez v3, :cond_4

    .line 1128
    :try_start_3
    invoke-direct {p0, v2}, Lo/unregisterMediaButtonEventReceiver;->onPostMessage(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2094
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_3

    .line 2096
    :try_start_4
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2099
    :catch_1
    :cond_3
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    .line 1131
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1135
    :cond_4
    iget-object v3, p0, Lo/unregisterMediaButtonEventReceiver;->onPostMessage:Lo/onAddQueueItem;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_6

    .line 3094
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_5

    .line 3096
    :try_start_6
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3099
    :catch_3
    :cond_5
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4

    .line 1142
    :cond_6
    :try_start_7
    invoke-static {v2}, Lo/onPlaybackPositionUpdate;->onPostMessage(Ljava/io/File;)I

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1148
    :try_start_8
    iget v7, p0, Lo/unregisterMediaButtonEventReceiver;->ICustomTabsCallback:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v3, v7, :cond_8

    .line 5094
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_7

    .line 5096
    :try_start_9
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 5099
    :catch_4
    :cond_7
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    .line 1152
    :cond_8
    :try_start_a
    iget-object v7, p0, Lo/unregisterMediaButtonEventReceiver;->onPostMessage:Lo/onAddQueueItem;

    iget v8, p0, Lo/unregisterMediaButtonEventReceiver;->ICustomTabsCallback:I

    invoke-virtual {v7, v3, v8}, Lo/onAddQueueItem;->onPostMessage(II)Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_a

    .line 6094
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_9

    .line 6096
    :try_start_b
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 6099
    :catch_5
    :cond_9
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    .line 1158
    :cond_a
    :try_start_c
    iget-object v3, p0, Lo/unregisterMediaButtonEventReceiver;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v3, :cond_b

    .line 1160
    :try_start_d
    invoke-direct {p0, v2}, Lo/unregisterMediaButtonEventReceiver;->onPostMessage(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    :catch_6
    move-exception v1

    .line 1164
    :try_start_e
    invoke-static {v0, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1167
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete database file ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for a copy destructive migration."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 7094
    :goto_3
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_c

    .line 7096
    :try_start_f
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 7099
    :catch_7
    :cond_c
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :catch_8
    move-exception v1

    :try_start_10
    const-string v2, "Unable to read database version."

    .line 1144
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 4094
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_d

    .line 4096
    :try_start_11
    iget-object v0, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 4099
    :catch_9
    :cond_d
    iget-object v0, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    :goto_4
    iput-boolean v4, p0, Lo/unregisterMediaButtonEventReceiver;->onRelationshipValidationResult:Z

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 8094
    iget-object v1, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_e

    .line 8096
    :try_start_12
    iget-object v1, v5, Lo/buildRccMetadata;->extraCallback:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    .line 8099
    :catch_a
    :cond_e
    iget-object v1, v5, Lo/buildRccMetadata;->onMessageChannelReady:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1172
    throw v0

    .line 90
    :cond_f
    :goto_5
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onTransact:Lo/update;

    invoke-interface {v0}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    .line 81
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onTransact:Lo/update;

    invoke-interface {v0, p1}, Lo/update;->ICustomTabsCallback(Z)V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onTransact:Lo/update;

    invoke-interface {v0}, Lo/update;->close()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lo/unregisterMediaButtonEventReceiver;->onRelationshipValidationResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/unregisterMediaButtonEventReceiver;->onTransact:Lo/update;

    invoke-interface {v0}, Lo/update;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
