.class public Lo/populateThreadsList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/processNativeSessions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/populateThreadsList$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final CHILDREN_NODE_SPLIT_SIZE_THRESHOLD:I = 0x4000

.field private static final CREATE_SERVER_CACHE:Ljava/lang/String; = "CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);"

.field private static final CREATE_TRACKED_KEYS:Ljava/lang/String; = "CREATE TABLE trackedKeys (id INTEGER, key TEXT);"

.field private static final CREATE_TRACKED_QUERIES:Ljava/lang/String; = "CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);"

.field private static final CREATE_WRITES:Ljava/lang/String; = "CREATE TABLE writes (id INTEGER, path TEXT, type TEXT, part INTEGER, node BLOB, UNIQUE (id, part));"

.field private static final FIRST_PART_KEY:Ljava/lang/String; = ".part-0000"

.field private static final LOGGER_COMPONENT:Ljava/lang/String; = "Persistence"

.field private static final PART_KEY_FORMAT:Ljava/lang/String; = ".part-%04d"

.field private static final PART_KEY_PREFIX:Ljava/lang/String; = ".part-"

.field private static final PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final ROW_ID_COLUMN_NAME:Ljava/lang/String; = "rowid"

.field private static final ROW_SPLIT_SIZE:I = 0x40000

.field private static final SERVER_CACHE_TABLE:Ljava/lang/String; = "serverCache"

.field private static final TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String; = "key"

.field private static final TRACKED_KEYS_TABLE:Ljava/lang/String; = "trackedKeys"

.field private static final TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String; = "active"

.field private static final TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String; = "complete"

.field private static final TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String; = "lastUse"

.field private static final TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String; = "queryParams"

.field private static final TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final TRACKED_QUERY_TABLE:Ljava/lang/String; = "trackedQueries"

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static final VALUE_COLUMN_NAME:Ljava/lang/String; = "value"

.field private static final WRITES_TABLE:Ljava/lang/String; = "writes"

.field private static final WRITE_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final WRITE_NODE_COLUMN_NAME:Ljava/lang/String; = "node"

.field private static final WRITE_PART_COLUMN_NAME:Ljava/lang/String; = "part"

.field private static final WRITE_TYPE_COLUMN_NAME:Ljava/lang/String; = "type"

.field private static final WRITE_TYPE_MERGE:Ljava/lang/String; = "m"

.field private static final WRITE_TYPE_OVERWRITE:Ljava/lang/String; = "o"


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private insideTransaction:Z

.field private final logger:Lo/FileLogStore;

.field private transactionStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 155
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/populateThreadsList;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/getNamedThreadFactory;Ljava/lang/String;)V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 204
    iput-wide v0, p0, Lo/populateThreadsList;->transactionStart:J

    :try_start_0
    const-string v0, "utf-8"

    .line 210
    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Persistence"

    .line 214
    invoke-virtual {p2, v0}, Lo/getNamedThreadFactory;->getLogger(Ljava/lang/String;)Lo/FileLogStore;

    move-result-object p2

    iput-object p2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    .line 215
    invoke-direct {p0, p1, p3}, Lo/populateThreadsList;->openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :catch_0
    move-exception p1

    .line 212
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static buildAncestorWhereClause(Lo/ExecutorUtils$2;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1045
    array-length v0, p1

    invoke-virtual {p0}, Lo/ExecutorUtils$2;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    :goto_1
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    const-string v2, "path"

    if-nez v1, :cond_1

    .line 1049
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ? OR "

    .line 1050
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-static {p0}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    .line 1052
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->getParent()Lo/ExecutorUtils$2;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1055
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = ?)"

    .line 1056
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p0

    invoke-static {p0}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v3

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1115
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    if-nez v1, :cond_0

    const-string v1, ","

    .line 1117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 1120
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1122
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deserializeNode([B)Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 1104
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lo/populateThreadsList;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lo/hasSpaceFor;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 1107
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lo/populateThreadsList;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1108
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "Could not deserialize node: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private joinBytes(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 1082
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1083
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1085
    :cond_0
    new-array v0, v2, [B

    .line 1087
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1088
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1089
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private loadNested(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "path"

    const-string v7, "value"

    .line 922
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lo/populateThreadsList;->loadNestedQuery(Lo/ExecutorUtils$2;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 926
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_0

    .line 927
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 931
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 936
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object v6

    .line 938
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    const/16 v16, 0x0

    .line 939
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    move-wide/from16 v17, v14

    if-ge v12, v13, :cond_6

    .line 942
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v15, ".part-0000"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 945
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 946
    new-instance v15, Lo/ExecutorUtils$2;

    .line 947
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v14, v19, -0xa

    move-wide/from16 v20, v7

    const/4 v7, 0x0

    invoke-virtual {v13, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v8}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 948
    invoke-direct {v1, v15, v2, v12}, Lo/populateThreadsList;->splitNodeRunLength(Lo/ExecutorUtils$2;Ljava/util/List;I)I

    move-result v7

    .line 949
    iget-object v8, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v8}, Lo/FileLogStore;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 950
    iget-object v8, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Loading split node with "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " parts."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v15

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v8, v13, v15}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v19, v15

    :goto_2
    add-int/2addr v7, v12

    .line 952
    invoke-interface {v3, v12, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Lo/populateThreadsList;->joinBytes(Ljava/util/List;)[B

    move-result-object v8

    invoke-direct {v1, v8}, Lo/populateThreadsList;->deserializeNode([B)Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    move v12, v7

    move-object/from16 v15, v19

    goto :goto_3

    :cond_2
    move-wide/from16 v20, v7

    .line 956
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v1, v7}, Lo/populateThreadsList;->deserializeNode([B)Lo/LogFileManager$DirectoryProvider;

    move-result-object v8

    .line 957
    new-instance v15, Lo/ExecutorUtils$2;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v15, v7}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 959
    :goto_3
    invoke-virtual {v15}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v15}, Lo/ExecutorUtils$2;->getBack()Lo/LogFileManager;

    move-result-object v7

    invoke-virtual {v7}, Lo/LogFileManager;->isPriorityChildName()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 962
    invoke-interface {v11, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v7, 0x1

    goto :goto_5

    .line 963
    :cond_3
    invoke-virtual {v15, v0}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v7

    if-eqz v7, :cond_4

    xor-int/lit8 v6, v16, 0x1

    const-string v7, "Descendants of path must come after ancestors."

    .line 964
    invoke-static {v6, v7}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 965
    invoke-static {v15, v0}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-interface {v8, v6}, Lo/LogFileManager$DirectoryProvider;->getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    goto :goto_4

    .line 966
    :cond_4
    invoke-virtual {v0, v15}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 968
    invoke-static {v0, v15}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v7

    .line 969
    invoke-interface {v6, v7, v8}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v16, 0x1

    :goto_5
    add-int/2addr v12, v7

    move-wide/from16 v14, v17

    move-wide/from16 v7, v20

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x1

    .line 971
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    aput-object v0, v3, v7

    const-string v0, "Loading an unrelated row with path %s for %s"

    .line 972
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move-wide/from16 v20, v7

    .line 977
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 978
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/ExecutorUtils$2;

    .line 979
    invoke-static {v0, v8}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v6, v8, v7}, Lo/LogFileManager$DirectoryProvider;->updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v6

    goto :goto_6

    .line 982
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    .line 984
    iget-object v2, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 985
    iget-object v2, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 989
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 990
    invoke-static {v6}, Lo/initializeAllApis;->nodeCount(Lo/LogFileManager$DirectoryProvider;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const/4 v0, 0x3

    .line 992
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    .line 993
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x5

    .line 994
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x6

    .line 995
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v0, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    .line 986
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 985
    invoke-virtual {v2, v0, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-object v6

    :catchall_0
    move-exception v0

    .line 931
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    throw v0
.end method

.method private loadNestedQuery(Lo/ExecutorUtils$2;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 1018
    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-static {v0}, Lo/populateThreadsList;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .line 1022
    invoke-static {p1, v7}, Lo/populateThreadsList;->buildAncestorWhereClause(Lo/ExecutorUtils$2;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR (path > ? AND path < ?)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1024
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v7, v2

    .line 1025
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    aput-object v1, v7, p1

    .line 1028
    iget-object v3, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "path"

    const-string v4, "serverCache"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 799
    new-instance v0, Lo/populateThreadsList$onNavigationEvent;

    invoke-direct {v0, p1, p2}, Lo/populateThreadsList$onNavigationEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 806
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "PRAGMA locking_mode = EXCLUSIVE"

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 814
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 815
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 821
    instance-of p2, p1, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz p2, :cond_0

    .line 831
    new-instance p2, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to gain exclusive lock to Firebase Database\'s offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them."

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 833
    :cond_0
    throw p1
.end method

.method private partKey(Lo/ExecutorUtils$2;I)Ljava/lang/String;
    .locals 2

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, ".part-%04d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/"

    .line 1040
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Path keys must end with a \'/\'"

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x30

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    return-object v1

    .line 1035
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pruneTreeRecursive(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/persistFatalEvent;Lo/ResponseParser;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/persistFatalEvent<",
            "Ljava/lang/Long;",
            ">;",
            "Lo/ResponseParser;",
            "Ljava/util/List<",
            "Lo/getSortedCustomAttributes<",
            "Lo/ExecutorUtils$2;",
            "Lo/LogFileManager$DirectoryProvider;",
            ">;>;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 696
    invoke-virtual {p3}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 700
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/populateThreadsList$5;

    invoke-direct {v2, p0, v8}, Lo/populateThreadsList$5;-><init>(Lo/populateThreadsList;Lo/persistFatalEvent;)V

    .line 699
    invoke-virtual {v9, v1, v2}, Lo/ResponseParser;->foldKeptNodes(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 709
    invoke-virtual {p1, p2}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 710
    iget-object v3, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v3}, Lo/FileLogStore;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 712
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Need to rewrite %d nodes below path %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 711
    invoke-virtual {v3, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    :cond_0
    invoke-direct {p0, v2}, Lo/populateThreadsList;->loadNested(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    const/4 v6, 0x0

    .line 715
    new-instance v10, Lo/populateThreadsList$4;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/populateThreadsList$4;-><init>(Lo/populateThreadsList;Lo/persistFatalEvent;Ljava/util/List;Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    invoke-virtual {v9, v6, v10}, Lo/ResponseParser;->foldKeptNodes(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 732
    :cond_2
    invoke-virtual {p3}, Lo/persistFatalEvent;->getChildren()Lo/populateFramesList;

    move-result-object v0

    invoke-virtual {v0}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    .line 734
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    invoke-virtual {v9, v2}, Lo/ResponseParser;->child(Lo/LogFileManager;)Lo/ResponseParser;

    move-result-object v5

    move-object v11, p2

    .line 737
    invoke-virtual {p2, v1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v2

    .line 738
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lo/persistFatalEvent;

    .line 739
    invoke-virtual {v8, v1}, Lo/persistFatalEvent;->getChild(Lo/LogFileManager;)Lo/persistFatalEvent;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    .line 735
    invoke-direct/range {v0 .. v6}, Lo/populateThreadsList;->pruneTreeRecursive(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/persistFatalEvent;Lo/ResponseParser;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private removeNested(Ljava/lang/String;Lo/ExecutorUtils$2;)I
    .locals 4

    .line 1063
    invoke-static {p2}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object p2

    .line 1064
    invoke-static {p2}, Lo/populateThreadsList;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v0, v2, p2

    const-string p2, "path >= ? AND path < ?"

    invoke-virtual {v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I
    .locals 6

    .line 852
    invoke-static {p2}, Lo/initializeAllApis;->estimateSerializedNodeSize(Lo/LogFileManager$DirectoryProvider;)J

    move-result-wide v0

    .line 853
    instance-of v2, p2, Lo/setCurrentSession;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const-wide/16 v4, 0x4000

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    .line 854
    iget-object v2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 859
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    .line 856
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 855
    invoke-virtual {v2, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    :cond_0
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/QueueFile;

    .line 864
    invoke-virtual {v1}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v2

    invoke-virtual {v1}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lo/populateThreadsList;->saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_0

    .line 866
    :cond_1
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v0

    invoke-interface {v0}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 867
    invoke-static {}, Lo/LogFileManager;->getPriorityKey()Lo/LogFileManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->getPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lo/populateThreadsList;->saveNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    add-int/lit8 v4, v4, 0x1

    .line 873
    :cond_2
    invoke-static {}, Lo/LogFileManager$1;->Empty()Lo/LogFileManager$1;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/populateThreadsList;->saveNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    add-int/2addr v4, v3

    return v4

    .line 878
    :cond_3
    invoke-direct {p0, p1, p2}, Lo/populateThreadsList;->saveNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V

    return v3
.end method

.method private saveNode(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 9

    const/4 v0, 0x1

    .line 888
    invoke-interface {p2, v0}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/populateThreadsList;->serializeObject(Ljava/lang/Object;)[B

    move-result-object p2

    .line 889
    array-length v0, p2

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "serverCache"

    const-string v4, "value"

    const-string v5, "path"

    const/high16 v6, 0x40000

    if-lt v0, v6, :cond_2

    .line 890
    invoke-static {p2, v6}, Lo/populateThreadsList;->splitBytes([BI)Ljava/util/List;

    move-result-object p2

    .line 891
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saving huge leaf node with "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " parts."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 895
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 896
    invoke-direct {p0, p1, v6}, Lo/populateThreadsList;->partKey(Lo/ExecutorUtils$2;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 898
    iget-object v7, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 902
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 903
    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 905
    iget-object p1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private saveWrite(Lo/ExecutorUtils$2;JLjava/lang/String;[B)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 323
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 324
    iget-object v3, v0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 325
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "writes"

    const-string v7, "id = ?"

    .line 324
    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    array-length v3, v2

    const/4 v4, 0x5

    const-string v7, "node"

    const-string v8, "part"

    const-string v9, "type"

    const-string v10, "path"

    const-string v11, "id"

    const/high16 v12, 0x40000

    const/4 v13, 0x0

    if-lt v3, v12, :cond_1

    .line 327
    invoke-static {v2, v12}, Lo/populateThreadsList;->splitBytes([BI)Ljava/util/List;

    move-result-object v2

    .line 328
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 329
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 330
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v3, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 335
    iget-object v12, v0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12, v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 338
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 339
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {v3, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 344
    iget-object v1, v0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    return-void
.end method

.method private serializeObject(Ljava/lang/Object;)[B
    .locals 2

    .line 1096
    :try_start_0
    invoke-static {p1}, Lo/hasSpaceFor;->serializeJsonValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lo/populateThreadsList;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1098
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize leaf node"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static splitBytes([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1069
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1070
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1072
    array-length v4, p0

    mul-int v5, v3, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1073
    new-array v6, v4, [B

    .line 1074
    invoke-static {p0, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private splitNodeRunLength(Lo/ExecutorUtils$2;Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    .line 1002
    invoke-static {p1}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1006
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1007
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sub-int v3, v0, p3

    invoke-direct {p0, p1, v3}, Lo/populateThreadsList;->partKey(Lo/ExecutorUtils$2;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 1011
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".part-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1012
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Run did not finish with all parts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    sub-int/2addr v0, p3

    return v0

    .line 1004
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Extracting split nodes needs to start with path prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V
    .locals 7

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "serverCache"

    const/4 v3, 0x0

    if-nez p3, :cond_0

    .line 370
    invoke-direct {p0, v2, p1}, Lo/populateThreadsList;->removeNested(Ljava/lang/String;Lo/ExecutorUtils$2;)I

    move-result p3

    .line 371
    invoke-direct {p0, p1, p2}, Lo/populateThreadsList;->saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I

    move-result p2

    goto :goto_1

    .line 375
    :cond_0
    invoke-interface {p2}, Lo/LogFileManager$DirectoryProvider;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/QueueFile;

    .line 376
    invoke-virtual {v5}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v6

    invoke-virtual {p1, v6}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lo/populateThreadsList;->removeNested(Ljava/lang/String;Lo/ExecutorUtils$2;)I

    move-result v6

    add-int/2addr v4, v6

    .line 377
    invoke-virtual {v5}, Lo/QueueFile;->getName()Lo/LogFileManager;

    move-result-object v6

    invoke-virtual {p1, v6}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-virtual {v5}, Lo/QueueFile;->getNode()Lo/LogFileManager$DirectoryProvider;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lo/populateThreadsList;->saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I

    move-result v5

    add-int/2addr p3, v5

    goto :goto_0

    :cond_1
    move p2, p3

    move p3, v4

    .line 380
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 381
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const/4 p1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    .line 383
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    .line 382
    invoke-virtual {v0, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private verifyInsideTransaction()V
    .locals 2

    .line 839
    iget-boolean v0, p0, Lo/populateThreadsList;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 4

    .line 767
    iget-boolean v0, p0, Lo/populateThreadsList;->insideTransaction:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(ZLjava/lang/String;)V

    .line 770
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Starting transaction."

    invoke-virtual {v0, v3, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 774
    iput-boolean v1, p0, Lo/populateThreadsList;->insideTransaction:Z

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/populateThreadsList;->transactionStart:J

    return-void
.end method

.method public close()V
    .locals 1

    .line 795
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public deleteTrackedQuery(J)V
    .locals 5

    .line 447
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 448
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 450
    iget-object p2, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "id = ?"

    const-string v4, "trackedQueries"

    invoke-virtual {p2, v4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
    iget-object p2, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string p1, "trackedKeys"

    invoke-virtual {p2, p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public endTransaction()V
    .locals 5

    .line 780
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    .line 781
    iput-boolean v0, p0, Lo/populateThreadsList;->insideTransaction:Z

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lo/populateThreadsList;->transactionStart:J

    sub-long/2addr v1, v3

    .line 783
    iget-object v3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v3}, Lo/FileLogStore;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    iget-object v3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "Transaction completed. Elapsed: %dms"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public loadTrackedQueries()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/parse;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "id"

    const-string v3, "path"

    const-string v4, "queryParams"

    const-string v5, "lastUse"

    const-string v6, "complete"

    const-string v7, "active"

    .line 458
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v10

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 468
    iget-object v8, v1, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "trackedQueries"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "id"

    .line 469
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 481
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 482
    new-instance v5, Lo/ExecutorUtils$2;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :try_start_1
    invoke-static {v6}, Lo/hasSpaceFor;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :try_start_2
    invoke-static {v5, v6}, Lo/lambda$awaitEvenIfOnMainThread$0;->fromPathAndQueryObject(Lo/ExecutorUtils$2;Ljava/util/Map;)Lo/lambda$awaitEvenIfOnMainThread$0;

    move-result-object v12

    const/4 v5, 0x3

    .line 491
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v5, 0x4

    .line 492
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    const/4 v5, 0x5

    .line 493
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v16, 0x0

    .line 494
    :goto_2
    new-instance v5, Lo/parse;

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lo/parse;-><init>(JLo/lambda$awaitEvenIfOnMainThread$0;JZZ)V

    .line 495
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 488
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 497
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 498
    iget-object v2, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    iget-object v2, v1, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const-string v3, "Loaded %d tracked queries in %dms"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 504
    throw v0
.end method

.method public loadTrackedQueryKeys(J)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation

    .line 582
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/populateThreadsList;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    .line 587
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, p1}, Lo/populateThreadsList;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 591
    iget-object v1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 592
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 603
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 605
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 606
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v11

    .line 610
    iget-object v2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v2}, Lo/FileLogStore;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const-string v6, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 614
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, p1

    .line 612
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    .line 611
    invoke-virtual {v2, p1, v3}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 619
    throw p1
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/loadInstallerPackageName;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    const-string v1, "path"

    const-string v2, "type"

    const-string v3, "part"

    const-string v4, "node"

    .line 256
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    iget-object v5, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "writes"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "id, part"

    .line 266
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 278
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 279
    new-instance v11, Lo/ExecutorUtils$2;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 282
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_0

    .line 284
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    goto :goto_1

    .line 287
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 289
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-eqz v8, :cond_1

    .line 292
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 293
    invoke-direct {p0, v5}, Lo/populateThreadsList;->joinBytes(Ljava/util/List;)[B

    move-result-object v5

    .line 295
    :goto_1
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lo/populateThreadsList;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 296
    invoke-static {v6}, Lo/hasSpaceFor;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "o"

    .line 298
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 299
    invoke-static {v5}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v12

    .line 300
    new-instance v4, Lo/loadInstallerPackageName;

    const/4 v13, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lo/loadInstallerPackageName;-><init>(JLo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V

    goto :goto_2

    :cond_3
    const-string v6, "m"

    .line 301
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 303
    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lo/ExecutorUtils$1$1;->fromValue(Ljava/util/Map;)Lo/ExecutorUtils$1$1;

    move-result-object v4

    .line 304
    new-instance v5, Lo/loadInstallerPackageName;

    invoke-direct {v5, v9, v10, v11, v4}, Lo/loadInstallerPackageName;-><init>(JLo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V

    move-object v4, v5

    .line 308
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got invalid write type: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 311
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const-string v1, "Loaded %d writes in %dms"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 316
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load writes"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 319
    throw v0
.end method

.method public mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;)V
    .locals 8

    .line 391
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    invoke-virtual {p2}, Lo/ExecutorUtils$1$1;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/ExecutorUtils$2;

    invoke-virtual {p1, v6}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v6

    const-string v7, "serverCache"

    invoke-direct {p0, v7, v6}, Lo/populateThreadsList;->removeNested(Ljava/lang/String;Lo/ExecutorUtils$2;)I

    move-result v6

    add-int/2addr v3, v6

    .line 397
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/ExecutorUtils$2;

    invoke-virtual {p1, v6}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LogFileManager$DirectoryProvider;

    invoke-direct {p0, v6, v5}, Lo/populateThreadsList;->saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 399
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 400
    iget-object p2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {p2}, Lo/FileLogStore;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 401
    iget-object p2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    .line 402
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 401
    invoke-virtual {p2, p1, v0}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public mergeIntoServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 361
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    const/4 v0, 0x1

    .line 362
    invoke-direct {p0, p1, p2, v0}, Lo/populateThreadsList;->updateServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V

    return-void
.end method

.method public overwriteServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)V
    .locals 1

    .line 355
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    const/4 v0, 0x0

    .line 356
    invoke-direct {p0, p1, p2, v0}, Lo/populateThreadsList;->updateServerCache(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;Z)V

    return-void
.end method

.method public pruneCache(Lo/ExecutorUtils$2;Lo/ResponseParser;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    .line 624
    invoke-virtual/range {p2 .. p2}, Lo/ResponseParser;->prunesAnything()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-direct/range {p0 .. p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v0, "rowid"

    const-string v1, "path"

    .line 629
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lo/populateThreadsList;->loadNestedQuery(Lo/ExecutorUtils$2;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 630
    new-instance v1, Lo/persistFatalEvent;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    .line 631
    new-instance v2, Lo/persistFatalEvent;

    invoke-direct {v2, v11}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v4, v2

    .line 632
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    .line 633
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 634
    new-instance v3, Lo/ExecutorUtils$2;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lo/ExecutorUtils$2;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v8, v3}, Lo/ExecutorUtils$2;->contains(Lo/ExecutorUtils$2;)Z

    move-result v6

    const-string v13, "We are pruning at "

    if-nez v6, :cond_1

    .line 636
    iget-object v1, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but we have data stored higher up at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_1
    invoke-static {v8, v3}, Lo/ExecutorUtils$2;->getRelative(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v6

    .line 644
    invoke-virtual {v5, v6}, Lo/ResponseParser;->shouldPruneUnkeptDescendants(Lo/ExecutorUtils$2;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 645
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v6, v1}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v12

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {v5, v6}, Lo/ResponseParser;->shouldKeep(Lo/ExecutorUtils$2;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 647
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object v4

    goto :goto_0

    .line 653
    :cond_3
    iget-object v1, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and have data at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that isn\'t marked for pruning or keeping. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/FileLogStore;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_4
    invoke-virtual {v12}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 665
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 667
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move-object/from16 v5, p2

    move-object v6, v15

    .line 666
    invoke-direct/range {v0 .. v6}, Lo/populateThreadsList;->pruneTreeRecursive(Lo/ExecutorUtils$2;Lo/ExecutorUtils$2;Lo/persistFatalEvent;Lo/persistFatalEvent;Lo/ResponseParser;Ljava/util/List;)V

    .line 669
    invoke-virtual {v12}, Lo/persistFatalEvent;->values()Ljava/util/Collection;

    move-result-object v0

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rowid IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Lo/populateThreadsList;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    iget-object v2, v7, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    invoke-virtual {v2, v3, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getSortedCustomAttributes;

    .line 674
    invoke-virtual {v2}, Lo/getSortedCustomAttributes;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/ExecutorUtils$2;

    invoke-virtual {v8, v3}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-virtual {v2}, Lo/getSortedCustomAttributes;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager$DirectoryProvider;

    invoke-direct {v7, v3, v2}, Lo/populateThreadsList;->saveNested(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)I

    goto :goto_1

    .line 677
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 678
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 680
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 681
    iget-object v4, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v4}, Lo/FileLogStore;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 682
    iget-object v4, v7, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 684
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v13

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Pruned %d rows with %d nodes resaved in %dms"

    .line 683
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    .line 682
    invoke-virtual {v4, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public purgeCache()V
    .locals 3

    .line 758
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 759
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "serverCache"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "writes"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedQueries"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 762
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedKeys"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeAllUserWrites()V
    .locals 6

    .line 748
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 750
    iget-object v2, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const-string v4, "writes"

    invoke-virtual {v2, v4, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 752
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Deleted %d (all) write(s) in %dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeUserWrite(J)V
    .locals 8

    .line 244
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    iget-object v2, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "writes"

    const-string v7, "id = ?"

    invoke-virtual {v2, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 248
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Deleted %d write(s) with writeId %d in %dms"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 249
    invoke-virtual {v0, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public resetPreviouslyActiveTrackedQueries(J)V
    .locals 8

    .line 509
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 514
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 515
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "active"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 516
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastUse"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    iget-object v2, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v5, "active = 1"

    const-string v3, "trackedQueries"

    const/4 v7, 0x5

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 521
    iget-object p2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {p2}, Lo/FileLogStore;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 522
    iget-object p2, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    const-string v1, "Reset active tracked queries in %dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public saveTrackedQuery(Lo/parse;)V
    .locals 6

    .line 428
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 430
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 431
    iget-wide v3, p1, Lo/parse;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    iget-object v3, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v3}, Lo/lambda$awaitEvenIfOnMainThread$0;->getPath()Lo/ExecutorUtils$2;

    move-result-object v3

    invoke-static {v3}, Lo/populateThreadsList;->pathToKey(Lo/ExecutorUtils$2;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v3, p1, Lo/parse;->querySpec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v3}, Lo/lambda$awaitEvenIfOnMainThread$0;->getParams()Lo/recursiveDelete;

    move-result-object v3

    invoke-virtual {v3}, Lo/recursiveDelete;->toJSON()Ljava/lang/String;

    move-result-object v3

    const-string v4, "queryParams"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-wide v3, p1, Lo/parse;->lastUse:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lastUse"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    iget-boolean v3, p1, Lo/parse;->complete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "complete"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    iget-boolean p1, p1, Lo/parse;->active:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "active"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    iget-object p1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 440
    iget-object p1, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {p1}, Lo/FileLogStore;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Saved new tracked query in %dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public saveTrackedQueryKeys(JLjava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 531
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 533
    iget-object v3, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "trackedKeys"

    const-string v7, "id = ?"

    invoke-virtual {v3, v2, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 535
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LogFileManager;

    .line 536
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 537
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    invoke-virtual {v5}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "key"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v5, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v5, v2, v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 543
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 544
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 548
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    const/4 p1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Set %d tracked query keys for tracked query %d in %dms"

    .line 546
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 545
    invoke-virtual {v0, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public saveUserMerge(Lo/ExecutorUtils$2;Lo/ExecutorUtils$1$1;J)V
    .locals 9

    .line 232
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 234
    invoke-virtual {p2, v2}, Lo/ExecutorUtils$1$1;->getValue(Z)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/populateThreadsList;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "m"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    .line 235
    invoke-direct/range {v3 .. v8}, Lo/populateThreadsList;->saveWrite(Lo/ExecutorUtils$2;JLjava/lang/String;[B)V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 237
    iget-object p3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {p3}, Lo/FileLogStore;->logsDebug()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 238
    iget-object p3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "Persisted user merge in %dms"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public saveUserOverwrite(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;J)V
    .locals 9

    .line 220
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 222
    invoke-interface {p2, v2}, Lo/LogFileManager$DirectoryProvider;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/populateThreadsList;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "o"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    .line 223
    invoke-direct/range {v3 .. v8}, Lo/populateThreadsList;->saveWrite(Lo/ExecutorUtils$2;JLjava/lang/String;[B)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 225
    iget-object p3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {p3}, Lo/FileLogStore;->logsDebug()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 226
    iget-object p3, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "Persisted user overwrite in %dms"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public serverCache(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lo/populateThreadsList;->loadNested(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;

    move-result-object p1

    return-object p1
.end method

.method public serverCacheEstimatedSizeInBytes()J
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "path"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "serverCache"

    aput-object v3, v0, v1

    const-string v1, "SELECT sum(length(%s) + length(%s)) FROM %s"

    .line 411
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 416
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 419
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t read database result!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 422
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 423
    throw v1
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 790
    iget-object v0, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;",
            "Ljava/util/Set<",
            "Lo/LogFileManager;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-direct {p0}, Lo/populateThreadsList;->verifyInsideTransaction()V

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 559
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "trackedKeys"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/LogFileManager;

    .line 561
    iget-object v9, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v8

    .line 562
    invoke-virtual {v4}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "id = ? AND key = ?"

    .line 561
    invoke-virtual {v9, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager;

    .line 565
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 566
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 567
    invoke-virtual {v3}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "key"

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lo/populateThreadsList;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v3, v7, v9, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    .line 571
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 572
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lo/populateThreadsList;->logger:Lo/FileLogStore;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 576
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v8

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v6

    const/4 p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    .line 574
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    .line 573
    invoke-virtual {v0, p1, p2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
