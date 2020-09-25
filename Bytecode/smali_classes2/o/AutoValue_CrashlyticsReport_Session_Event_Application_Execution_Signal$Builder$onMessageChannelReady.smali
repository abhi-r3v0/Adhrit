.class public Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 420
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->sql:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$binding$0([Ljava/lang/Object;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 0

    .line 448
    invoke-static {p4, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->access$100(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 449
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method

.method private startQuery()Landroid/database/Cursor;
    .locals 4

    .line 532
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 533
    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->sql:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->sql:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method varargs binding([Ljava/lang/Object;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;
    .locals 0

    .line 446
    invoke-static {p1}, Lo/setTextTypeface;->lambdaFactory$([Ljava/lang/Object;)Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    move-result-object p1

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->cursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-object p0
.end method

.method first(Lo/from;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Landroid/database/Cursor;",
            ">;)I"
        }
    .end annotation

    .line 480
    :try_start_0
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->startQuery()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-interface {p1, v0}, Lo/from;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 488
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_3
    throw p1
.end method

.method firstValue(Lo/listIterator;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/listIterator<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 505
    :try_start_0
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->startQuery()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 506
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 507
    invoke-interface {p1, v1}, Lo/listIterator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 512
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_3
    throw p1
.end method

.method forEach(Lo/from;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Landroid/database/Cursor;",
            ">;)I"
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->startQuery()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    .line 463
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 465
    invoke-interface {p1, v0}, Lo/from;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 467
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 462
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    throw p1
.end method

.method isEmpty()Z
    .locals 2

    .line 521
    :try_start_0
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->startQuery()Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 522
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_0

    .line 525
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_1
    throw v1
.end method
