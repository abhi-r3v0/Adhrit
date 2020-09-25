.class public final Lo/AppBarLayout$Behavior;
.super Lo/setUseMaterialThemeColors;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/setLiftOnScroll;

.field private onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lo/setUseMaterialThemeColors;-><init>(Lo/setCheckedIcon;)V

    .line 2
    new-instance p1, Lo/setLiftOnScroll;

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lo/setLiftOnScroll;-><init>(Lo/AppBarLayout$Behavior;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lo/AppBarLayout$Behavior;->ICustomTabsCallback:Lo/setLiftOnScroll;

    return-void
.end method

.method private final cancel()Z
    .locals 2

    .line 317
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 319
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private final cancelAll()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 310
    iget-boolean v0, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 312
    :cond_0
    iget-object v0, p0, Lo/AppBarLayout$Behavior;->ICustomTabsCallback:Lo/setLiftOnScroll;

    invoke-virtual {v0}, Lo/setLiftOnScroll;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z

    return-object v1

    :cond_1
    return-object v0
.end method

.method private final onMessageChannelReady(I[B)Z
    .locals 16

    move-object/from16 v1, p0

    .line 16
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 17
    iget-boolean v0, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 19
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 21
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_0
    if-ge v5, v4, :cond_e

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 26
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lo/AppBarLayout$Behavior;->cancelAll()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_2

    .line 28
    :try_start_1
    iput-boolean v8, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v9, :cond_1

    .line 30
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    return v2

    .line 32
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v10, 0x0

    const-string v0, "select count(1) from messages"

    .line 34
    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v12, :cond_3

    .line 35
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v12

    goto/16 :goto_6

    :cond_3
    :goto_1
    const-string v0, "messages"

    const-wide/32 v13, 0x186a0

    cmp-long v15, v10, v13

    if-ltz v15, :cond_4

    .line 38
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v15

    invoke-virtual {v15}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-string v4, "rowid in (select rowid from messages order by rowid asc limit ?)"

    new-array v10, v8, [Ljava/lang/String;

    .line 41
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 42
    invoke-virtual {v9, v0, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v10, v13

    if-eqz v4, :cond_4

    .line 44
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 46
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 47
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v13, v10

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 49
    invoke-virtual {v4, v15, v2, v8, v10}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :cond_4
    invoke-virtual {v9, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 51
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 52
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_5

    .line 54
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v9, :cond_6

    .line 56
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    const/4 v2, 0x1

    return v2

    :catch_2
    move-object v7, v12

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v12, v7

    :goto_2
    move-object v7, v9

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v7

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v12, v7

    :goto_3
    if-eqz v7, :cond_7

    .line 73
    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 74
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 75
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v12, :cond_8

    .line 78
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v7, :cond_b

    .line 80
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v7

    :goto_4
    move-object v7, v12

    goto :goto_8

    :catch_6
    move-object v9, v7

    :catch_7
    :goto_5
    int-to-long v10, v6

    .line 66
    :try_start_6
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_9

    .line 69
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v9, :cond_b

    .line 71
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v9, v7

    .line 59
    :goto_6
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v7, :cond_a

    .line 62
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v9, :cond_b

    .line 64
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :goto_8
    if-eqz v7, :cond_c

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v9, :cond_d

    .line 84
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    :cond_d
    throw v0

    .line 87
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private static onPostMessage(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "messages"

    const-string v1, "rowid"

    .line 295
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "type=?"

    const-string v1, "3"

    .line 296
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    move-object v1, p0

    .line 297
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 299
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :cond_1
    if-eqz v0, :cond_2

    .line 305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    .line 308
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_3
    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lo/getTags;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    .line 116
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 117
    iget-boolean v0, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    .line 119
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-direct/range {p0 .. p0}, Lo/AppBarLayout$Behavior;->cancel()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    :goto_0
    if-ge v7, v5, :cond_15

    const/4 v9, 0x1

    .line 126
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lo/AppBarLayout$Behavior;->cancelAll()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez v15, :cond_3

    .line 128
    :try_start_1
    iput-boolean v9, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v15, :cond_2

    .line 130
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 132
    :cond_3
    :try_start_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 133
    invoke-static {v15}, Lo/AppBarLayout$Behavior;->onPostMessage(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-eqz v0, :cond_4

    :try_start_3
    const-string v0, "rowid<?"

    new-array v12, v9, [Ljava/lang/String;

    .line 138
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v13, v0

    move-object v14, v12

    goto :goto_1

    :cond_4
    move-object v13, v3

    move-object v14, v13

    :goto_1
    :try_start_4
    const-string v11, "messages"

    const-string v0, "rowid"

    const-string v10, "type"

    const-string v12, "entry"

    .line 139
    filled-new-array {v0, v10, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid asc"

    const/16 v10, 0x64

    .line 140
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v10, v15

    move-object v5, v15

    move-object v15, v0

    .line 141
    :try_start_5
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 143
    :cond_5
    :goto_2
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 145
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v11, 0x2

    .line 146
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-nez v0, :cond_6

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 149
    :try_start_7
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 150
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    sget-object v0, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zzir;
    :try_end_7
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    :try_start_8
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_5

    .line 161
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 155
    :catch_2
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v12, "Failed to load event from local database"

    invoke-virtual {v0, v12}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 156
    :try_start_a
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 158
    :goto_3
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v0

    :cond_6
    if-ne v0, v9, :cond_7

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 165
    :try_start_b
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 166
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 167
    sget-object v0, Lo/setError;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setError;
    :try_end_b
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 168
    :try_start_c
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 171
    :catch_3
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v12, "Failed to load user property from local database"

    invoke-virtual {v0, v12}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 172
    :try_start_e
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_5

    .line 177
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :goto_5
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 175
    throw v0

    :cond_7
    if-ne v0, v11, :cond_8

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 181
    :try_start_f
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 182
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 183
    sget-object v0, Lo/setStartIconVisible;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 184
    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setStartIconVisible;
    :try_end_f
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 185
    :try_start_10
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 188
    :catch_4
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v12, "Failed to load conditional user property from local database"

    .line 190
    invoke-virtual {v0, v12}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 191
    :try_start_12
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_6
    if-eqz v0, :cond_5

    .line 196
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 193
    :goto_7
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 194
    throw v0

    :cond_8
    const/4 v11, 0x3

    if-ne v0, v11, :cond_9

    .line 198
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v11, "Skipping app launch break"

    invoke-virtual {v0, v11}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 199
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v11, "Unknown record type in local database"

    invoke-virtual {v0, v11}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "messages"

    const-string v11, "rowid <= ?"

    new-array v12, v9, [Ljava/lang/String;

    .line 202
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    .line 203
    invoke-virtual {v5, v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 204
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_b

    .line 205
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v11, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v11}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 206
    :cond_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 207
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v10, :cond_c

    .line 210
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v5, :cond_d

    .line 212
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    return-object v4

    :catchall_3
    move-exception v0

    move-object v3, v10

    goto/16 :goto_11

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object v10, v3

    :goto_8
    move-object v15, v5

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v10, v3

    :goto_9
    move-object v15, v5

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move-object v5, v15

    :goto_a
    move-object v10, v3

    goto :goto_c

    :catch_a
    move-object v5, v15

    :catch_b
    move-object v10, v3

    :catch_c
    move-object v15, v5

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v5, v15

    :goto_b
    move-object v10, v3

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v5, v3

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v10, v3

    move-object v15, v10

    :goto_c
    if-eqz v15, :cond_e

    .line 229
    :try_start_13
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 230
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 231
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    iput-boolean v9, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-eqz v10, :cond_f

    .line 234
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v15, :cond_12

    .line 236
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_f

    :catch_f
    move-object v10, v3

    move-object v15, v10

    :goto_d
    int-to-long v11, v8

    .line 222
    :try_start_14
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    add-int/lit8 v8, v8, 0x14

    if-eqz v10, :cond_10

    .line 225
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_10
    if-eqz v15, :cond_12

    .line 227
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_f

    :catch_10
    move-exception v0

    move-object v10, v3

    move-object v15, v10

    .line 215
    :goto_e
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    iput-boolean v9, v1, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    if-eqz v10, :cond_11

    .line 218
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v15, :cond_12

    .line 220
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_12
    :goto_f
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x5

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    move-object v3, v10

    :goto_10
    move-object v5, v15

    :goto_11
    if-eqz v3, :cond_13

    .line 238
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_13
    if-eqz v5, :cond_14

    .line 240
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 241
    :cond_14
    throw v0

    .line 243
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v3
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 322
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/zzir;)Z
    .locals 3

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1, v0, v1}, Lo/zzir;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 92
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 93
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 96
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v1

    .line 98
    :cond_0
    invoke-direct {p0, v1, p1}, Lo/AppBarLayout$Behavior;->onMessageChannelReady(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub()Lo/setChipSpacingResource;
    .locals 1

    .line 326
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 331
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 333
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub$Proxy()Z
    .locals 11

    const-string v0, "Error deleting app launch break from local database"

    .line 246
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 247
    iget-boolean v1, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 249
    :cond_0
    invoke-direct {p0}, Lo/AppBarLayout$Behavior;->cancel()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_0
    if-ge v3, v1, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 254
    :try_start_0
    invoke-direct {p0}, Lo/AppBarLayout$Behavior;->cancelAll()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_3

    .line 256
    iput-boolean v6, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 258
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    return v2

    .line 260
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x3

    .line 262
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 263
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 265
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    .line 267
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    return v6

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 280
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 281
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 282
    :cond_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    iput-boolean v6, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    .line 285
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catch_1
    int-to-long v6, v4

    .line 275
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_6

    .line 278
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catch_2
    move-exception v7

    .line 270
    :try_start_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    iput-boolean v6, p0, Lo/AppBarLayout$Behavior;->onMessageChannelReady:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_6

    .line 273
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    if-eqz v5, :cond_7

    .line 287
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 288
    :cond_7
    throw v0

    .line 290
    :cond_8
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 292
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v2
.end method

.method protected final IPostMessageService()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService$Stub()V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 8
    :try_start_0
    invoke-direct {p0}, Lo/AppBarLayout$Behavior;->cancelAll()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic asBinder()Lo/AppBarLayout$Behavior;
    .locals 1

    .line 328
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asBinder()Lo/AppBarLayout$Behavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic asInterface()Lo/setForegroundGravity;
    .locals 1

    .line 329
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->asInterface()Lo/setForegroundGravity;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 321
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 337
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 330
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 336
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 334
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 320
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onMessageChannelReady()V

    return-void
.end method

.method public final bridge synthetic onNavigationEvent()Lo/zzbfb;
    .locals 1

    .line 323
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onNavigationEvent()Lo/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/setError;)Z
    .locals 3

    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, v1}, Lo/setError;->writeToParcel(Landroid/os/Parcel;I)V

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 106
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, v0, p1}, Lo/AppBarLayout$Behavior;->onMessageChannelReady(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic onPostMessage()Lo/setChipIconSize;
    .locals 1

    .line 324
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onPostMessage()Lo/setChipIconSize;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/setStartIconVisible;)Z
    .locals 2

    .line 109
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    invoke-static {p1}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 110
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 113
    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    .line 115
    invoke-direct {p0, v0, p1}, Lo/AppBarLayout$Behavior;->onMessageChannelReady(I[B)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic onRelationshipValidationResult()Lo/setExpanded;
    .locals 1

    .line 325
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onRelationshipValidationResult()Lo/setExpanded;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onTransact()Lo/setChipEndPadding;
    .locals 1

    .line 327
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->onTransact()Lo/setChipEndPadding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 335
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 338
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 339
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final validateRelationship()Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 245
    invoke-direct {p0, v1, v0}, Lo/AppBarLayout$Behavior;->onMessageChannelReady(I[B)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 332
    invoke-super {p0}, Lo/setUseMaterialThemeColors;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
