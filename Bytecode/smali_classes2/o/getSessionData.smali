.class final Lo/getSessionData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSessionData$extraCallback;,
        Lo/getSessionData$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;

.field private static final ICustomTabsCallback$Stub:Ljava/lang/String;

.field private static final asBinder:Ljava/lang/String;

.field private static final asInterface:Ljava/lang/String;

.field private static final extraCallback:Ljava/lang/String;

.field private static final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lo/getSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private static final onPostMessage:Ljava/lang/String;

.field private static final onRelationshipValidationResult:Ljava/lang/String;

.field private static final onTransact:Ljava/lang/String;


# instance fields
.field final onMessageChannelReady:Lo/getSessionData$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/getSessionData;->onNavigationEvent:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 15044
    iget-object v2, v2, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (_id INTEGER PRIMARY KEY AUTOINCREMENT, data STRING NOT NULL, created_at"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INTEGER NOT NULL, automatic_data INTEGER DEFAULT 0, token"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " STRING NOT NULL DEFAULT \'\')"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->ICustomTabsCallback:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    .line 16044
    iget-object v5, v5, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->extraCallback:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    .line 17044
    iget-object v5, v5, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->onPostMessage:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 18044
    iget-object v1, v1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->onTransact:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE INDEX IF NOT EXISTS time_idx ON "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 19044
    iget-object v2, v2, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (created_at);"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->asInterface:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    .line 20044
    iget-object v3, v3, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->asBinder:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    .line 21044
    iget-object v3, v3, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 22044
    iget-object v1, v1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getSessionData;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mixpanel"

    .line 275
    invoke-direct {p0, p1, v0}, Lo/getSessionData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance v0, Lo/getSessionData$extraCallback;

    invoke-direct {v0, p1, p2}, Lo/getSessionData$extraCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Lo/getSessionData;
    .locals 3

    .line 283
    sget-object v0, Lo/getSessionData;->onNavigationEvent:Ljava/util/Map;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 286
    sget-object v1, Lo/getSessionData;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    new-instance v1, Lo/getSessionData;

    invoke-direct {v1, p0}, Lo/getSessionData;-><init>(Landroid/content/Context;)V

    .line 288
    sget-object v2, Lo/getSessionData;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 290
    :cond_0
    sget-object v1, Lo/getSessionData;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lo/getSessionData;

    .line 292
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 293
    monitor-exit v0

    throw p0
.end method

.method static synthetic ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->onRelationshipValidationResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic asInterface()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic extraCallback()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->asInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic onMessageChannelReady()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method private onNavigationEvent(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V
    .locals 3

    .line 13044
    iget-object p1, p1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 581
    :try_start_0
    iget-object v0, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "automatic_data = 1 AND token = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :goto_0
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "MixpanelAPI.Database"

    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not clean automatic Mixpanel records from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Re-initializing database."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 590
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 13117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 13118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :goto_1
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 593
    throw p1
.end method

.method static synthetic onPostMessage()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic onTransact()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lo/getSessionData;->asBinder:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string v0, "data"

    const-string v1, "token"

    const-string v2, "automatic_data"

    const-string v3, "created_at"

    .line 2684
    iget-object v4, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v4}, Lo/getSessionData$extraCallback;->onNavigationEvent()Z

    move-result v4

    const-string v5, "MixpanelAPI.Database"

    if-nez v4, :cond_0

    const-string p1, "There is not enough space left on the device to store Mixpanel data, so data was discarded"

    .line 361
    invoke-static {v5, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 368
    :try_start_0
    iget-object v7, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 369
    new-instance v8, Ljava/lang/StringBuffer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "SELECT * FROM "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 3044
    iget-object v10, v10, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " WHERE token = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v8, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 372
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 374
    :catch_0
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_1

    .line 376
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 377
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v9, Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "$distinct_id"

    .line 382
    invoke-virtual {v9, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v9, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    .line 4044
    iget-object v9, v9, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 384
    invoke-virtual {v7, v9, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v8, "_id"

    .line 385
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 386
    sget-object v9, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 5044
    iget-object v9, v9, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const-string v10, "_id = "

    .line 386
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 392
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 394
    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 410
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 394
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 395
    throw p2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object p1, v6

    .line 397
    :goto_1
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not push anonymous updates records from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lo/getSessionData$onNavigationEvent;->extraCallback:Lo/getSessionData$onNavigationEvent;

    .line 6044
    iget-object v1, v1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Re-initializing database."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    .line 400
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :cond_2
    move-object v6, p1

    .line 407
    :goto_2
    :try_start_8
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 6117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 6118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v6, :cond_3

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_3
    :goto_3
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return v4

    :catchall_2
    move-exception p2

    move-object v6, p1

    :goto_4
    if-eqz v6, :cond_4

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 412
    :cond_4
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 413
    throw p2
.end method

.method public final ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Z)I
    .locals 7

    .line 1684
    iget-object v0, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v0}, Lo/getSessionData$extraCallback;->onNavigationEvent()Z

    move-result v0

    const-string v1, "MixpanelAPI.Database"

    if-nez v0, :cond_0

    const-string p1, "There is not enough space left on the device to store Mixpanel data, so data was discarded"

    .line 309
    invoke-static {v1, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    .line 2044
    :cond_0
    iget-object p3, p3, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 319
    :try_start_0
    iget-object v3, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 321
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "data"

    .line 322
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "automatic_data"

    .line 324
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v4, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "token"

    .line 325
    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3, p3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "SELECT COUNT(*) FROM "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " WHERE token=\'"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p2, 0x0

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    .line 345
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    move-object p1, v2

    .line 332
    :goto_0
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v3, "Could not add Mixpanel data to table "

    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Re-initializing database."

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    .line 339
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    .line 342
    :goto_1
    :try_start_3
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 2117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_2
    :goto_2
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return v0

    :catchall_1
    move-exception p2

    move-object v2, p1

    :goto_3
    if-eqz v2, :cond_3

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_3
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 348
    throw p2
.end method

.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 572
    :try_start_0
    sget-object v0, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    invoke-direct {p0, v0, p1}, Lo/getSessionData;->onNavigationEvent(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 573
    sget-object v0, Lo/getSessionData$onNavigationEvent;->onNavigationEvent:Lo/getSessionData$onNavigationEvent;

    invoke-direct {p0, v0, p1}, Lo/getSessionData;->onNavigationEvent(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V

    .line 574
    sget-object v0, Lo/getSessionData$onNavigationEvent;->onPostMessage:Lo/getSessionData$onNavigationEvent;

    invoke-direct {p0, v0, p1}, Lo/getSessionData;->onNavigationEvent(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;)V
    .locals 3

    .line 12044
    iget-object p1, p1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 552
    :try_start_0
    iget-object v0, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token = \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :goto_0
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "MixpanelAPI.Database"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not clean timed-out Mixpanel records from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Re-initializing database."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 12117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 12118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    :goto_1
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 564
    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/getSessionData$onNavigationEvent;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "MixpanelAPI.Database"

    .line 9044
    iget-object p2, p2, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 496
    :try_start_0
    iget-object v1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 497
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id <= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND token = \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string p1, " AND automatic_data=0"

    .line 500
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 502
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {v1, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_0
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 512
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Unknown exception. Could not clean sent Mixpanel records from "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".Re-initializing database."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 10117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 10118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 504
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Could not clean sent Mixpanel records from "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Re-initializing database."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 9117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 9118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :goto_1
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 516
    throw p1
.end method

.method public final onMessageChannelReady(Lo/getSessionData$onNavigationEvent;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10

    const-string v0, "\' "

    const-string v1, " WHERE token = \'"

    .line 14044
    iget-object p1, p1, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 618
    iget-object v2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 621
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT * FROM "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 622
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT COUNT(*) FROM "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p2, "AND automatic_data = 0 "

    .line 624
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " AND automatic_data = 0"

    .line 625
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string p2, "ORDER BY created_at ASC LIMIT 50"

    .line 628
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 631
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 632
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 633
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :try_start_3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v2, v4

    .line 637
    :catch_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 638
    invoke-interface {p2}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v2, "_id"

    .line 639
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 642
    :cond_1
    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 649
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 650
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_3
    move-object p1, v4

    .line 662
    :goto_1
    iget-object v1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz p2, :cond_4

    .line 664
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p3, :cond_7

    .line 667
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    :catch_1
    move-exception v1

    move-object v9, p3

    move-object p3, p2

    move-object p2, v1

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v9, p3

    move-object p3, p2

    move-object p2, v0

    :goto_2
    move-object v0, v9

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p3, v4

    :goto_3
    move-object v4, p2

    goto :goto_6

    :catch_3
    move-exception p3

    move-object v0, v4

    move-object v1, v0

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p3, v4

    goto :goto_6

    :catch_4
    move-exception p2

    move-object p3, v4

    move-object v0, p3

    move-object v1, v0

    :goto_4
    :try_start_6
    const-string v2, "MixpanelAPI.Database"

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not pull records for Mixpanel out of database "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Waiting to send."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 662
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz p3, :cond_5

    .line 664
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v0, :cond_6

    .line 667
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v1

    move-object p1, v4

    move-object v2, p1

    :cond_7
    :goto_5
    if-eqz v2, :cond_8

    if-eqz p1, :cond_8

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    aput-object v2, p2, v3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const/4 p1, 0x2

    aput-object v0, p2, p1

    return-object p2

    :cond_8
    return-object v4

    :catchall_3
    move-exception p1

    move-object v4, p3

    move-object p3, v0

    .line 662
    :goto_6
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    if-eqz v4, :cond_9

    .line 664
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz p3, :cond_a

    .line 667
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_a
    throw p1
.end method

.method final onPostMessage(Ljava/util/Map;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-string v0, "properties"

    const-string v1, "data"

    .line 6684
    iget-object v2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v2}, Lo/getSessionData$extraCallback;->onNavigationEvent()Z

    move-result v2

    const-string v3, "MixpanelAPI.Database"

    if-nez v2, :cond_0

    const-string p1, "There is not enough space left on the device to store Mixpanel data, so data was discarded"

    .line 427
    invoke-static {v3, p1}, Lo/TrimmedThrowableData;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    return p1

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 434
    :try_start_0
    iget-object v5, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 435
    new-instance v6, Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT * FROM "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 7044
    iget-object v8, v8, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " WHERE token = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 440
    :catch_0
    :goto_0
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    .line 442
    :try_start_3
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 443
    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 445
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 446
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 447
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 448
    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_id"

    .line 453
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 454
    sget-object v8, Lo/getSessionData$onNavigationEvent;->ICustomTabsCallback:Lo/getSessionData$onNavigationEvent;

    .line 8044
    iget-object v8, v8, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const-string v9, "_id = "

    .line 454
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    :try_start_5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_4

    .line 478
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 462
    :try_start_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 463
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    move-object p2, v4

    :goto_2
    :try_start_7
    const-string v0, "Could not re-write events history. Re-initializing database."

    .line 465
    invoke-static {v3, v0, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_3

    .line 468
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :cond_3
    move-object v4, p2

    .line 475
    :goto_3
    :try_start_8
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 8117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 8118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_4

    .line 478
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_4
    :goto_4
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return v2

    :catchall_2
    move-exception p1

    move-object v4, p2

    :goto_5
    if-eqz v4, :cond_5

    .line 478
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_5
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 481
    throw p1
.end method

.method public final onPostMessage(JLo/getSessionData$onNavigationEvent;)V
    .locals 2

    .line 11044
    iget-object p3, p3, Lo/getSessionData$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 528
    :try_start_0
    iget-object v0, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "created_at <= "

    .line 529
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :goto_0
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "MixpanelAPI.Database"

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not clean timed-out Mixpanel records from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". Re-initializing database."

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lo/TrimmedThrowableData;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 537
    iget-object p1, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    .line 11117
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 11118
    iget-object p1, p1, Lo/getSessionData$extraCallback;->onMessageChannelReady:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    :goto_1
    iget-object p2, p0, Lo/getSessionData;->onMessageChannelReady:Lo/getSessionData$extraCallback;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 540
    throw p1
.end method
