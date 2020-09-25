.class final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private configured:Z

.field private final serializer:Lo/setDiskSpace;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/setDiskSpace;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 284
    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 285
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->serializer:Lo/setDiskSpace;

    return-void
.end method

.method private ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->configured:Z

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->configured:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRAGMA locking_mode = EXCLUSIVE"

    .line 293
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 310
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->serializer:Lo/setDiskSpace;

    invoke-direct {v0, p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lo/setDiskSpace;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->runMigrations(I)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 322
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 316
    invoke-direct {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 317
    new-instance p3, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;->serializer:Lo/setDiskSpace;

    invoke-direct {p3, p1, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lo/setDiskSpace;)V

    invoke-virtual {p3, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->runMigrations(I)V

    return-void
.end method
