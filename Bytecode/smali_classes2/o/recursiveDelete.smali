.class public final Lo/recursiveDelete;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/recursiveDelete$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final DEFAULT_PARAMS:Lo/recursiveDelete;

.field private static final INDEX:Ljava/lang/String; = "i"

.field private static final INDEX_END_NAME:Ljava/lang/String; = "en"

.field private static final INDEX_END_VALUE:Ljava/lang/String; = "ep"

.field private static final INDEX_START_NAME:Ljava/lang/String; = "sn"

.field private static final INDEX_START_VALUE:Ljava/lang/String; = "sp"

.field private static final LIMIT:Ljava/lang/String; = "l"

.field private static final VIEW_FROM:Ljava/lang/String; = "vf"


# instance fields
.field private index:Lo/setLogFile;

.field private indexEndName:Lo/LogFileManager;

.field private indexEndValue:Lo/LogFileManager$DirectoryProvider;

.field private indexStartName:Lo/LogFileManager;

.field private indexStartValue:Lo/LogFileManager$DirectoryProvider;

.field private jsonSerialization:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private viewFrom:Lo/recursiveDelete$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/recursiveDelete;

    invoke-direct {v0}, Lo/recursiveDelete;-><init>()V

    sput-object v0, Lo/recursiveDelete;->DEFAULT_PARAMS:Lo/recursiveDelete;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    .line 58
    iput-object v0, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    .line 59
    iput-object v0, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    .line 60
    iput-object v0, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    .line 62
    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v1

    iput-object v1, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    .line 64
    iput-object v0, p0, Lo/recursiveDelete;->jsonSerialization:Ljava/lang/String;

    return-void
.end method

.method private copy()Lo/recursiveDelete;
    .locals 2

    .line 130
    new-instance v0, Lo/recursiveDelete;

    invoke-direct {v0}, Lo/recursiveDelete;-><init>()V

    .line 131
    iget-object v1, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    iput-object v1, v0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    .line 132
    iget-object v1, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    iput-object v1, v0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    .line 133
    iget-object v1, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    iput-object v1, v0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    .line 134
    iget-object v1, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    iput-object v1, v0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    .line 135
    iget-object v1, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    iput-object v1, v0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    .line 136
    iget-object v1, p0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    iput-object v1, v0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    .line 137
    iget-object v1, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    iput-object v1, v0, Lo/recursiveDelete;->index:Lo/setLogFile;

    return-object v0
.end method

.method public static fromQueryObject(Ljava/util/Map;)Lo/recursiveDelete;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lo/recursiveDelete;"
        }
    .end annotation

    .line 254
    new-instance v0, Lo/recursiveDelete;

    invoke-direct {v0}, Lo/recursiveDelete;-><init>()V

    const-string v1, "l"

    .line 255
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, v0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    const-string v2, "sp"

    .line 257
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 259
    invoke-static {v2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-static {v2}, Lo/recursiveDelete;->normalizeValue(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    iput-object v2, v0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    const-string v2, "sn"

    .line 260
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 262
    invoke-static {v2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v2

    iput-object v2, v0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    :cond_0
    const-string v2, "ep"

    .line 266
    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    invoke-static {v2}, Lo/LogFileManager$NoopLogStore;->NodeFromJSON(Ljava/lang/Object;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    invoke-static {v2}, Lo/recursiveDelete;->normalizeValue(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;

    move-result-object v2

    iput-object v2, v0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    const-string v2, "en"

    .line 269
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 271
    invoke-static {v2}, Lo/LogFileManager;->fromString(Ljava/lang/String;)Lo/LogFileManager;

    move-result-object v2

    iput-object v2, v0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    :cond_1
    const-string v2, "vf"

    .line 275
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    goto :goto_0

    :cond_2
    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->RIGHT:Lo/recursiveDelete$onNavigationEvent;

    :goto_0
    iput-object v1, v0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    :cond_3
    const-string v1, "i"

    .line 280
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 282
    invoke-static {p0}, Lo/setLogFile;->fromQueryDefinition(Ljava/lang/String;)Lo/setLogFile;

    move-result-object p0

    iput-object p0, v0, Lo/recursiveDelete;->index:Lo/setLogFile;

    :cond_4
    return-object v0
.end method

.method private static normalizeValue(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 3

    .line 361
    instance-of v0, p0, Lo/open;

    if-nez v0, :cond_2

    instance-of v0, p0, Lo/getLogAsBytes;

    if-nez v0, :cond_2

    instance-of v0, p0, Lo/getLogString;

    if-nez v0, :cond_2

    instance-of v0, p0, Lo/LogFileManager$1;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    instance-of v0, p0, Lo/writeInts;

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Lo/getLogString;

    .line 372
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {}, Lo/toStringMap;->NullPriority()Lo/LogFileManager$DirectoryProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/getLogString;-><init>(Ljava/lang/Double;Lo/LogFileManager$DirectoryProvider;)V

    return-object v0

    .line 374
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value passed to normalizeValue: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-interface {p0}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final endAt(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;)Lo/recursiveDelete;
    .locals 2

    .line 166
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 168
    instance-of v0, p1, Lo/writeInts;

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 169
    invoke-direct {p0}, Lo/recursiveDelete;->copy()Lo/recursiveDelete;

    move-result-object v0

    .line 170
    iput-object p1, v0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    .line 171
    iput-object p2, v0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    .line 312
    :cond_1
    check-cast p1, Lo/recursiveDelete;

    .line 314
    iget-object v2, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 317
    :cond_3
    iget-object v2, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lo/recursiveDelete;->index:Lo/setLogFile;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lo/recursiveDelete;->index:Lo/setLogFile;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 320
    :cond_5
    iget-object v2, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 325
    :cond_7
    iget-object v2, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 330
    :cond_9
    iget-object v2, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_4

    :cond_a
    iget-object v2, p1, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    if-eqz v2, :cond_b

    :goto_4
    return v1

    .line 335
    :cond_b
    iget-object v2, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    .line 336
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_5

    :cond_c
    iget-object v2, p1, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_d

    :goto_5
    return v1

    .line 341
    :cond_d
    invoke-virtual {p0}, Lo/recursiveDelete;->isViewFromLeft()Z

    move-result v2

    invoke-virtual {p1}, Lo/recursiveDelete;->isViewFromLeft()Z

    move-result p1

    if-eq v2, p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_6
    return v1
.end method

.method public final getIndex()Lo/setLogFile;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    return-object v0
.end method

.method public final getIndexEndName()Lo/LogFileManager;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Lo/LogFileManager;->getMaxName()Lo/LogFileManager;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIndexEndValue()Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index end value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIndexStartName()Lo/LogFileManager;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-static {}, Lo/LogFileManager;->getMinName()Lo/LogFileManager;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start name if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIndexStartValue()Lo/LogFileManager$DirectoryProvider;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get index start value if start has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLimit()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get limit if limit has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getNodeFilter()Lo/Utils$3;
    .locals 2

    .line 289
    invoke-virtual {p0}, Lo/recursiveDelete;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lo/Utils$3$1;

    invoke-virtual {p0}, Lo/recursiveDelete;->getIndex()Lo/setLogFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/Utils$3$1;-><init>(Lo/setLogFile;)V

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Lo/Utils$2;

    invoke-direct {v0, p0}, Lo/Utils$2;-><init>(Lo/recursiveDelete;)V

    return-object v0

    .line 294
    :cond_1
    new-instance v0, Lo/Utils$$Lambda$1;

    invoke-direct {v0, p0}, Lo/Utils$$Lambda$1;-><init>(Lo/recursiveDelete;)V

    return-object v0
.end method

.method public final getWireProtocolParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    invoke-interface {v1}, Lo/LogFileManager$DirectoryProvider;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ep"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1
    iget-object v1, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    const-string v2, "l"

    .line 201
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, p0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    if-nez v1, :cond_3

    .line 208
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    goto :goto_0

    .line 212
    :cond_2
    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->RIGHT:Lo/recursiveDelete$onNavigationEvent;

    .line 215
    :cond_3
    :goto_0
    sget-object v3, Lo/MediaBrowserCompat$MediaBrowserImplApi21$5;->$SwitchMap$com$google$firebase$database$core$view$QueryParams$ViewFrom:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const-string v4, "vf"

    if-eq v1, v3, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "r"

    .line 220
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 217
    :cond_5
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6
    :goto_1
    iget-object v1, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 225
    iget-object v1, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    invoke-virtual {v1}, Lo/setLogFile;->getQueryDefinition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public final hasAnchoredLimit()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnd()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLimit()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStart()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 350
    iget-object v0, p0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    invoke-virtual {p0}, Lo/recursiveDelete;->isViewFromLeft()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 352
    iget-object v2, p0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 353
    iget-object v2, p0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 354
    iget-object v2, p0, Lo/recursiveDelete;->indexEndValue:Lo/LogFileManager$DirectoryProvider;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 355
    iget-object v2, p0, Lo/recursiveDelete;->indexEndName:Lo/LogFileManager;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v2, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 2

    .line 235
    invoke-virtual {p0}, Lo/recursiveDelete;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/recursiveDelete;->index:Lo/setLogFile;

    invoke-static {}, Lo/writeHeader;->getInstance()Lo/writeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 239
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/recursiveDelete;->hasAnchoredLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isViewFromLeft()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    if-eqz v0, :cond_1

    sget-object v1, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    return v0
.end method

.method public final limitToFirst(I)Lo/recursiveDelete;
    .locals 1

    .line 142
    invoke-direct {p0}, Lo/recursiveDelete;->copy()Lo/recursiveDelete;

    move-result-object v0

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    .line 144
    sget-object p1, Lo/recursiveDelete$onNavigationEvent;->LEFT:Lo/recursiveDelete$onNavigationEvent;

    iput-object p1, v0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    return-object v0
.end method

.method public final limitToLast(I)Lo/recursiveDelete;
    .locals 1

    .line 149
    invoke-direct {p0}, Lo/recursiveDelete;->copy()Lo/recursiveDelete;

    move-result-object v0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lo/recursiveDelete;->limit:Ljava/lang/Integer;

    .line 151
    sget-object p1, Lo/recursiveDelete$onNavigationEvent;->RIGHT:Lo/recursiveDelete$onNavigationEvent;

    iput-object p1, v0, Lo/recursiveDelete;->viewFrom:Lo/recursiveDelete$onNavigationEvent;

    return-object v0
.end method

.method public final loadsAllData()Z
    .locals 1

    .line 231
    invoke-virtual {p0}, Lo/recursiveDelete;->hasStart()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/recursiveDelete;->hasEnd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/recursiveDelete;->hasLimit()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final orderBy(Lo/setLogFile;)Lo/recursiveDelete;
    .locals 1

    .line 176
    invoke-direct {p0}, Lo/recursiveDelete;->copy()Lo/recursiveDelete;

    move-result-object v0

    .line 177
    iput-object p1, v0, Lo/recursiveDelete;->index:Lo/setLogFile;

    return-object v0
.end method

.method public final startAt(Lo/LogFileManager$DirectoryProvider;Lo/LogFileManager;)Lo/recursiveDelete;
    .locals 2

    .line 156
    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isLeafNode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lo/LogFileManager$DirectoryProvider;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 158
    instance-of v0, p1, Lo/writeInts;

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    .line 159
    invoke-direct {p0}, Lo/recursiveDelete;->copy()Lo/recursiveDelete;

    move-result-object v0

    .line 160
    iput-object p1, v0, Lo/recursiveDelete;->indexStartValue:Lo/LogFileManager$DirectoryProvider;

    .line 161
    iput-object p2, v0, Lo/recursiveDelete;->indexStartName:Lo/LogFileManager;

    return-object v0
.end method

.method public final toJSON()Ljava/lang/String;
    .locals 2

    .line 243
    iget-object v0, p0, Lo/recursiveDelete;->jsonSerialization:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lo/recursiveDelete;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lo/hasSpaceFor;->serializeJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/recursiveDelete;->jsonSerialization:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/recursiveDelete;->jsonSerialization:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 300
    invoke-virtual {p0}, Lo/recursiveDelete;->getWireProtocolParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
