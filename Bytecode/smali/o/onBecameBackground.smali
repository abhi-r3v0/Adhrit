.class public abstract Lo/onBecameBackground;
.super Lo/AppsFlyerLibCore$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onBecameBackground$onNavigationEvent;,
        Lo/onBecameBackground$onPostMessage;,
        Lo/onBecameBackground$onMessageChannelReady;,
        Lo/onBecameBackground$ICustomTabsCallback;,
        Lo/onBecameBackground$extraCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected asBinder:Ljava/lang/String;

.field protected final onMessageChannelReady:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1069
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 59
    invoke-direct {p0, v0, p2}, Lo/AppsFlyerLibCore$1;-><init>(Ljava/io/File;I)V

    .line 56
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lo/onBecameBackground;->ICustomTabsCallback:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lo/onBecameBackground;->onMessageChannelReady:Landroid/content/Context;

    return-void
.end method

.method private ICustomTabsCallback(Lo/onDetach;I[B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "fb-UnpackingSoSource"

    .line 286
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    const-string v2, "dso_state"

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v6, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 290
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    if-eq v4, v8, :cond_0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dso store "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " regeneration interrupted: wiping clean"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 288
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 298
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :catch_0
    :goto_1
    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 300
    new-instance v5, Ljava/io/File;

    iget-object v1, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    const-string v7, "dso_deps"

    invoke-direct {v5, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 302
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v5, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v2, v9

    new-array v9, v2, [B

    .line 304
    invoke-virtual {v7, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v10

    if-eq v10, v2, :cond_1

    const-string/jumbo v2, "short read of so store deps file: marking unclean"

    .line 305
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 309
    :cond_1
    invoke-static {v9, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "deps mismatch on deps store: regenerating"

    .line 310
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :cond_2
    if-eqz v4, :cond_4

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v0, v1

    goto :goto_4

    :cond_4
    :goto_3
    const-string/jumbo v1, "so store dirty: regenerating"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {v6, v3}, Lo/onBecameBackground;->onPostMessage(Ljava/io/File;B)V

    .line 318
    invoke-virtual {p0}, Lo/onBecameBackground;->onMessageChannelReady()Lo/onBecameBackground$onNavigationEvent;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 319
    :try_start_4
    invoke-virtual {v0}, Lo/onBecameBackground$onNavigationEvent;->onPostMessage()Lo/onBecameBackground$ICustomTabsCallback;

    move-result-object v1

    .line 320
    invoke-virtual {v0}, Lo/onBecameBackground$onNavigationEvent;->ICustomTabsCallback()Lo/onBecameBackground$onPostMessage;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 321
    :try_start_5
    invoke-direct {p0, v4, v1, v2}, Lo/onBecameBackground;->onPostMessage(BLo/onBecameBackground$ICustomTabsCallback;Lo/onBecameBackground$onPostMessage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 322
    :try_start_6
    invoke-virtual {v2}, Lo/onBecameBackground$onPostMessage;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 323
    :try_start_7
    invoke-virtual {v0}, Lo/onBecameBackground$onNavigationEvent;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    goto :goto_2

    .line 325
    :goto_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    if-nez v0, :cond_5

    return v3

    .line 333
    :cond_5
    new-instance v9, Lo/onBecameBackground$1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v5

    move-object v4, p3

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/onBecameBackground$1;-><init>(Lo/onBecameBackground;Ljava/io/File;[BLo/onBecameBackground$ICustomTabsCallback;Ljava/io/File;Lo/onDetach;)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_6

    .line 371
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SoSync:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v9, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 373
    :cond_6
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    :goto_5
    return v8

    :catchall_3
    move-exception p1

    .line 320
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    .line 322
    :try_start_9
    invoke-virtual {v2}, Lo/onBecameBackground$onPostMessage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception p1

    .line 318
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p2

    .line 323
    :try_start_c
    invoke-virtual {v0}, Lo/onBecameBackground$onNavigationEvent;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_7

    :catchall_8
    move-exception p3

    :try_start_d
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception p1

    .line 302
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :catchall_a
    move-exception p2

    .line 325
    :try_start_f
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    goto :goto_8

    :catchall_b
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw p2
.end method

.method private onNavigationEvent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 430
    iget-object v0, p0, Lo/onBecameBackground;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lo/onBecameBackground;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 433
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 434
    iget-object v2, p0, Lo/onBecameBackground;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 437
    monitor-exit v0

    throw p1
.end method

.method private onPostMessage(BLo/onBecameBackground$ICustomTabsCallback;Lo/onBecameBackground$onPostMessage;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "regenerating DSO store "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fb-UnpackingSoSource"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    const-string v4, "dso_manifest"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 254
    :try_start_0
    invoke-static {v3}, Lo/onBecameBackground$ICustomTabsCallback;->onNavigationEvent(Ljava/io/DataInput;)Lo/onBecameBackground$ICustomTabsCallback;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    const-string v0, "error reading existing DSO manifest"

    .line 256
    invoke-static {v2, v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lo/onBecameBackground$ICustomTabsCallback;

    new-array v7, v6, [Lo/onBecameBackground$extraCallback;

    invoke-direct {v0, v7}, Lo/onBecameBackground$ICustomTabsCallback;-><init>([Lo/onBecameBackground$extraCallback;)V

    :cond_1
    move-object/from16 v8, p2

    move-object v7, v0

    .line 264
    iget-object v0, v8, Lo/onBecameBackground$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onBecameBackground$extraCallback;

    invoke-direct {v1, v0}, Lo/onBecameBackground;->onPostMessage([Lo/onBecameBackground$extraCallback;)V

    const v0, 0x8000

    new-array v8, v0, [B

    .line 266
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lo/onBecameBackground$onPostMessage;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 267
    invoke-virtual/range {p3 .. p3}, Lo/onBecameBackground$onPostMessage;->onPostMessage()Lo/onBecameBackground$onMessageChannelReady;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    const/4 v10, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 269
    :try_start_2
    iget-object v11, v7, Lo/onBecameBackground$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onBecameBackground$extraCallback;

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 270
    iget-object v11, v7, Lo/onBecameBackground$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onBecameBackground$extraCallback;

    aget-object v11, v11, v10

    iget-object v11, v11, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-object v12, v9, Lo/onBecameBackground$onMessageChannelReady;->extraCallback:Lo/onBecameBackground$extraCallback;

    iget-object v12, v12, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v7, Lo/onBecameBackground$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onBecameBackground$extraCallback;

    aget-object v11, v11, v10

    iget-object v11, v11, Lo/onBecameBackground$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v12, v9, Lo/onBecameBackground$onMessageChannelReady;->extraCallback:Lo/onBecameBackground$extraCallback;

    iget-object v12, v12, Lo/onBecameBackground$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 271
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_6

    :cond_3
    if-eqz v0, :cond_7

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "extracting DSO "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v9, Lo/onBecameBackground$onMessageChannelReady;->extraCallback:Lo/onBecameBackground$extraCallback;

    iget-object v10, v10, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v0, v1, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1217
    new-instance v10, Ljava/io/File;

    iget-object v0, v1, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    iget-object v11, v9, Lo/onBecameBackground$onMessageChannelReady;->extraCallback:Lo/onBecameBackground$extraCallback;

    iget-object v11, v11, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1220
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v10, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    move-object v11, v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 1222
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "error overwriting "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " trying to delete and start over"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    invoke-static {v10}, Lcom/facebook/soloader/SysUtil;->onNavigationEvent(Ljava/io/File;)V

    .line 1224
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v10, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1228
    :goto_4
    :try_start_5
    iget-object v0, v9, Lo/onBecameBackground$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    .line 1229
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 1231
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    int-to-long v13, v0

    .line 2092
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v0, v15, :cond_4

    .line 2093
    invoke-static {v12, v13, v14}, Lcom/facebook/soloader/SysUtil$LollipopSysdeps;->fallocateIfSupported(Ljava/io/FileDescriptor;J)V

    .line 1233
    :cond_4
    iget-object v0, v9, Lo/onBecameBackground$onMessageChannelReady;->onMessageChannelReady:Ljava/io/InputStream;

    invoke-static {v11, v0, v8}, Lcom/facebook/soloader/SysUtil;->onPostMessage(Ljava/io/RandomAccessFile;Ljava/io/InputStream;[B)I

    .line 1234
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 1235
    invoke-virtual {v10, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_5

    .line 1242
    :try_start_6
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 1236
    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "cannot make file executable: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 1239
    :try_start_8
    invoke-static {v10}, Lcom/facebook/soloader/SysUtil;->onNavigationEvent(Ljava/io/File;)V

    .line 1240
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1242
    :goto_5
    :try_start_9
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 1243
    throw v0

    .line 1215
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cannot make directory writable for us: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 267
    :goto_6
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    .line 278
    :try_start_b
    invoke-virtual {v9}, Lo/onBecameBackground$onMessageChannelReady;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_c
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4

    :cond_7
    :goto_8
    invoke-virtual {v9}, Lo/onBecameBackground$onMessageChannelReady;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 280
    :cond_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Finished regenerating DSO store "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 250
    :goto_9
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    .line 280
    :try_start_e
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v4
.end method

.method static onPostMessage(Ljava/io/File;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 174
    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 176
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 177
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 178
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method private onPostMessage([Lo/onBecameBackground$extraCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 188
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 189
    aget-object v3, v0, v2

    const-string v4, "dso_state"

    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_lock"

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_deps"

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "dso_manifest"

    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_1

    .line 198
    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 199
    aget-object v6, p1, v5

    iget-object v6, v6, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 205
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "deleting unaccounted-for file "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "fb-UnpackingSoSource"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v4}, Lcom/facebook/soloader/SysUtil;->onNavigationEvent(Ljava/io/File;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 185
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unable to list directory "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 443
    :try_start_0
    invoke-direct {p0, p1}, Lo/onBecameBackground;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    :try_start_1
    iput-object p1, p0, Lo/onBecameBackground;->asBinder:Ljava/lang/String;

    const/4 p1, 0x2

    .line 447
    invoke-virtual {p0, p1}, Lo/onBecameBackground;->onMessageChannelReady(I)V

    .line 448
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected ICustomTabsCallback()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    invoke-virtual {p0}, Lo/onBecameBackground;->onMessageChannelReady()Lo/onBecameBackground$onNavigationEvent;

    move-result-object v1

    .line 393
    :try_start_0
    invoke-virtual {v1}, Lo/onBecameBackground$onNavigationEvent;->onPostMessage()Lo/onBecameBackground$ICustomTabsCallback;

    move-result-object v2

    iget-object v2, v2, Lo/onBecameBackground$ICustomTabsCallback;->ICustomTabsCallback:[Lo/onBecameBackground$extraCallback;

    const/4 v3, 0x1

    .line 394
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 395
    array-length v3, v2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 396
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 397
    aget-object v4, v2, v3

    iget-object v4, v4, Lo/onBecameBackground$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    aget-object v4, v2, v3

    iget-object v4, v4, Lo/onBecameBackground$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v1}, Lo/onBecameBackground$onNavigationEvent;->close()V

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    .line 392
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 400
    :try_start_2
    invoke-virtual {v1}, Lo/onBecameBackground$onNavigationEvent;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method protected abstract onMessageChannelReady()Lo/onBecameBackground$onNavigationEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final onMessageChannelReady(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "releasing dso store lock for "

    const-string v1, "fb-UnpackingSoSource"

    .line 409
    iget-object v2, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    .line 2236
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2237
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannot mkdir: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    const-string v4, "dso_lock"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3032
    new-instance v3, Lo/onDetach;

    invoke-direct {v3, v2}, Lo/onDetach;-><init>(Ljava/io/File;)V

    .line 413
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "locked dso store "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lo/onBecameBackground;->ICustomTabsCallback()[B

    move-result-object v2

    invoke-direct {p0, v3, p1, v2}, Lo/onBecameBackground;->ICustomTabsCallback(Lo/onDetach;I[B)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    .line 417
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "dso store is up-to-date: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v3}, Lo/onDetach;->close()V

    return-void

    .line 424
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not releasing dso store lock for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (syncer thread started)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v3}, Lo/onDetach;->close()V

    .line 426
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    invoke-direct {p0, p1}, Lo/onBecameBackground;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    monitor-enter v0

    .line 458
    :try_start_0
    iget-object v1, p0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    invoke-virtual {p0, p1, p2, v1, p3}, Lo/onBecameBackground;->onPostMessage(Ljava/lang/String;ILjava/io/File;Landroid/os/StrictMode$ThreadPolicy;)I

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 459
    monitor-exit v0

    throw p1
.end method
