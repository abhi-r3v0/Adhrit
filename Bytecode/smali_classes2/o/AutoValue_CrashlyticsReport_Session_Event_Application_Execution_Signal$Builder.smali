.class public final Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;
.super Lo/setThreads;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onPostMessage;,
        Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;,
        Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;
    }
.end annotation


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final indexManager:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;

.field private final opener:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final referenceDelegate:Lo/getBaseAddress;

.field private final remoteDocumentCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

.field private final serializer:Lo/setDiskSpace;

.field private started:Z

.field private final targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

.field private final transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/setProximityOn;Lo/setDiskSpace;Lo/getExecution$onMessageChannelReady;)V
    .locals 1

    .line 111
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;

    .line 114
    invoke-static {p2, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->databaseName(Ljava/lang/String;Lo/setProximityOn;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p4, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$extraCallback;-><init>(Landroid/content/Context;Lo/setDiskSpace;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, p4, p5, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;-><init>(Lo/setDiskSpace;Lo/getExecution$onMessageChannelReady;Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-void
.end method

.method public constructor <init>(Lo/setDiskSpace;Lo/getExecution$onMessageChannelReady;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Lo/setThreads;-><init>()V

    .line 86
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$5;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)V

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 119
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->opener:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 120
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->serializer:Lo/setDiskSpace;

    .line 121
    new-instance p3, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    invoke-direct {p3, p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;)V

    iput-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    .line 122
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;

    invoke-direct {p1, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->indexManager:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;

    .line 123
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    iget-object p3, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->serializer:Lo/setDiskSpace;

    invoke-direct {p1, p0, p3}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;)V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->remoteDocumentCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    .line 124
    new-instance p1, Lo/getBaseAddress;

    invoke-direct {p1, p0, p2}, Lo/getBaseAddress;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/getExecution$onMessageChannelReady;)V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->referenceDelegate:Lo/getBaseAddress;

    return-void
.end method

.method static synthetic access$000(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;)Lo/getBaseAddress;
    .locals 0

    .line 56
    iget-object p0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->referenceDelegate:Lo/getBaseAddress;

    return-object p0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V
    .locals 0

    .line 56
    invoke-static {p0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    return-void
.end method

.method private static bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 686
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_6

    .line 687
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 689
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 690
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 691
    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 692
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 693
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 694
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    .line 695
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 696
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    .line 697
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 698
    :cond_4
    instance-of v3, v2, [B

    if-eqz v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    .line 699
    check-cast v2, [B

    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v2, p0, v0

    .line 701
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const-string p1, "Unknown argument %s of type %s"

    invoke-static {p1, p0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :cond_6
    return-void
.end method

.method public static clearPersistence(Landroid/content/Context;Lo/setProximityOn;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 219
    invoke-static {p2, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->databaseName(Ljava/lang/String;Lo/setProximityOn;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-journal"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-wal"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    :try_start_0
    invoke-static {v0}, Lo/removeAll;->delete(Ljava/io/File;)V

    .line 230
    invoke-static {p0}, Lo/removeAll;->delete(Ljava/io/File;)V

    .line 231
    invoke-static {p1}, Lo/removeAll;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 233
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "Failed to clear persistence."

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-direct {p1, p0, p2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;)V

    throw p1
.end method

.method public static databaseName(Ljava/lang/String;Lo/setProximityOn;)Ljava/lang/String;
    .locals 4

    const-string v0, "."

    const-string v1, "utf-8"

    .line 68
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firestore."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1}, Lo/setProximityOn;->getProjectId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lo/setProximityOn;->getDatabaseId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private getPageCount()J
    .locals 2

    const-string v0, "PRAGMA page_count"

    .line 257
    invoke-virtual {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;->lambdaFactory$()Lo/listIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPageSize()J
    .locals 2

    const-string v0, "PRAGMA page_size"

    .line 247
    invoke-virtual {p0, v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    move-result-object v0

    invoke-static {}, Lo/setAddress;->lambdaFactory$()Lo/listIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;->firstValue(Lo/listIterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$getPageCount$1(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 257
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getPageSize$0(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x0

    .line 247
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final varargs execute(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)I
    .locals 0

    .line 363
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteProgram;->clearBindings()V

    .line 364
    invoke-static {p1, p2}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->bind(Landroid/database/sqlite/SQLiteProgram;[Ljava/lang/Object;)V

    .line 365
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    return p1
.end method

.method final varargs execute(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 349
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method final getByteSize()J
    .locals 4

    .line 238
    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method final getIndexManager()Lo/setArch;
    .locals 1

    .line 179
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->indexManager:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;

    return-object v0
.end method

.method final getMutationQueue(Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)Lo/setCustomAttributes;
    .locals 2

    .line 169
    new-instance v0, Lo/setBaseAddress;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->serializer:Lo/setDiskSpace;

    invoke-direct {v0, p0, v1, p1}, Lo/setBaseAddress;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;Lo/setDiskSpace;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-object v0
.end method

.method public final getReferenceDelegate()Lo/getBaseAddress;
    .locals 1

    .line 164
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->referenceDelegate:Lo/getBaseAddress;

    return-object v0
.end method

.method public final bridge synthetic getReferenceDelegate()Lo/setException;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getReferenceDelegate()Lo/getBaseAddress;

    move-result-object v0

    return-object v0
.end method

.method final getRemoteDocumentCache()Lo/getSize;
    .locals 1

    .line 184
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->remoteDocumentCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$1;

    return-object v0
.end method

.method final bridge synthetic getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device$1;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    move-result-object v0

    return-object v0
.end method

.method final getTargetCache()Lo/AutoValue_CrashlyticsReport_Session_Event_Device;
    .locals 1

    .line 174
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    return-object v0
.end method

.method public final isStarted()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->started:Z

    return v0
.end method

.method final prepare(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1

    .line 354
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method final query(Ljava/lang/String;)Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;
    .locals 2

    .line 373
    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder$onMessageChannelReady;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-object v0
.end method

.method final runTransaction(Ljava/lang/String;Lo/reportToJson;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lo/reportToJson<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 203
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Starting transaction: %s"

    invoke-static {v0, p1, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 207
    :try_start_0
    invoke-interface {p2}, Lo/reportToJson;->get()Ljava/lang/Object;

    move-result-object p1

    .line 210
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 213
    throw p1
.end method

.method final runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 189
    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Starting transaction: %s"

    invoke-static {v0, p1, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 192
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 195
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    throw p1
.end method

.method public final shutdown()V
    .locals 4

    .line 151
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->started:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SQLitePersistence shutdown without start!"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iput-boolean v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->started:Z

    .line 153
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public final start()V
    .locals 4

    .line 129
    iget-boolean v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "SQLitePersistence double-started!"

    invoke-static {v0, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-boolean v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->started:Z

    .line 132
    :try_start_0
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->opener:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->start()V

    .line 146
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->referenceDelegate:Lo/getBaseAddress;

    iget-object v1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->targetCache:Lo/AutoValue_CrashlyticsReport_Session_Event_Device;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Device;->getHighestListenSequenceNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/getBaseAddress;->start(J)V

    return-void

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to gain exclusive lock to the Cloud Firestore client\'s offline persistence. This generally means you are using Cloud Firestore from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing Cloud Firestore in your Application class. If you are intentionally using Cloud Firestore from multiple processes, you can only enable offline persistence (that is, call setPersistenceEnabled(true)) in one of them."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
