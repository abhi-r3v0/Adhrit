.class public Lo/getExecution;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getExecution$extraCallback;,
        Lo/getExecution$onPostMessage;,
        Lo/getExecution$ICustomTabsCallback;,
        Lo/getExecution$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final INITIAL_GC_DELAY_MS:J

.field private static final REGULAR_GC_DELAY_MS:J


# instance fields
.field private final delegate:Lo/setLog;

.field private final params:Lo/getExecution$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/getExecution;->INITIAL_GC_DELAY_MS:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/getExecution;->REGULAR_GC_DELAY_MS:J

    return-void
.end method

.method constructor <init>(Lo/setLog;Lo/getExecution$onMessageChannelReady;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lo/getExecution;->delegate:Lo/setLog;

    .line 158
    iput-object p2, p0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    return-void
.end method

.method static synthetic access$000(Lo/getExecution;)Lo/getExecution$onMessageChannelReady;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 29
    sget-wide v0, Lo/getExecution;->REGULAR_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 29
    sget-wide v0, Lo/getExecution;->INITIAL_GC_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic lambda$getNthSequenceNumber$0(Lo/getExecution$extraCallback;Lo/setBatteryVelocity;)V
    .locals 2

    .line 210
    invoke-virtual {p1}, Lo/setBatteryVelocity;->getSequenceNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/getExecution$extraCallback;->addElement(Ljava/lang/Long;)V

    return-void
.end method

.method private runGarbageCollection(Landroid/util/SparseArray;)Lo/getExecution$ICustomTabsCallback;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lo/getExecution$ICustomTabsCallback;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 253
    iget-object v3, v0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget v3, v3, Lo/getExecution$onMessageChannelReady;->percentileToCollect:I

    invoke-virtual {v0, v3}, Lo/getExecution;->calculateQueryCount(I)I

    move-result v3

    .line 255
    iget-object v4, v0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget v4, v4, Lo/getExecution$onMessageChannelReady;->maximumSequenceNumbersToCollect:I

    const-string v5, "LruGarbageCollector"

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Capping sequence numbers to collect down to the maximum of "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget v7, v7, Lo/getExecution$onMessageChannelReady;->maximumSequenceNumbersToCollect:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v3, v0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget v3, v3, Lo/getExecution$onMessageChannelReady;->maximumSequenceNumbersToCollect:I

    .line 264
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 266
    invoke-virtual {v0, v3}, Lo/getExecution;->getNthSequenceNumber(I)J

    move-result-wide v9

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v4, p1

    .line 269
    invoke-virtual {v0, v9, v10, v4}, Lo/getExecution;->removeTargets(JLandroid/util/SparseArray;)I

    move-result v4

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 272
    invoke-virtual {v0, v9, v10}, Lo/getExecution;->removeOrphanedDocuments(J)I

    move-result v9

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 275
    invoke-static {}, Lo/lastIndexOf;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LRU Garbage Collection:\n"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tCounted targets in "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    sub-long v5, v7, v1

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/Object;

    .line 282
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v17, 0x0

    aput-object v19, v0, v17

    sub-long v7, v11, v7

    .line 283
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const-string v7, "\tDetermined least recently used %d sequence numbers in %dms\n"

    .line 279
    invoke-static {v5, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    .line 288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sub-long v7, v13, v11

    .line 289
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "\tRemoved %d targets in %dms\n"

    .line 285
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    .line 294
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sub-long v7, v15, v13

    .line 295
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "\tRemoved %d documents in %dms\n"

    .line 291
    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v8, [Ljava/lang/Object;

    sub-long/2addr v15, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    const-string v1, "Total Duration: %dms"

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    move-object/from16 v2, v18

    .line 297
    invoke-static {v2, v0, v1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_1
    new-instance v0, Lo/getExecution$ICustomTabsCallback;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3, v4, v9}, Lo/getExecution$ICustomTabsCallback;-><init>(ZIII)V

    return-object v0
.end method


# virtual methods
.method calculateQueryCount(I)I
    .locals 3

    .line 168
    iget-object v0, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-interface {v0}, Lo/setLog;->getSequenceNumberCount()J

    move-result-wide v0

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    long-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method collect(Landroid/util/SparseArray;)Lo/getExecution$ICustomTabsCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)",
            "Lo/getExecution$ICustomTabsCallback;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget-wide v0, v0, Lo/getExecution$onMessageChannelReady;->minBytesThreshold:J

    const/4 v2, 0x0

    const-string v3, "LruGarbageCollector"

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "Garbage collection skipped; disabled"

    .line 233
    invoke-static {v3, v0, p1}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    invoke-static {}, Lo/getExecution$ICustomTabsCallback;->DidNotRun()Lo/getExecution$ICustomTabsCallback;

    move-result-object p1

    return-object p1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lo/getExecution;->getByteSize()J

    move-result-wide v0

    .line 238
    iget-object v4, p0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget-wide v4, v4, Lo/getExecution$onMessageChannelReady;->minBytesThreshold:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Garbage collection skipped; Cache size "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is lower than threshold "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/getExecution;->params:Lo/getExecution$onMessageChannelReady;

    iget-wide v0, v0, Lo/getExecution$onMessageChannelReady;->minBytesThreshold:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lo/lastIndexOf;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-static {}, Lo/getExecution$ICustomTabsCallback;->DidNotRun()Lo/getExecution$ICustomTabsCallback;

    move-result-object p1

    return-object p1

    .line 247
    :cond_1
    invoke-direct {p0, p1}, Lo/getExecution;->runGarbageCollection(Landroid/util/SparseArray;)Lo/getExecution$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method getByteSize()J
    .locals 2

    .line 303
    iget-object v0, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-interface {v0}, Lo/setLog;->getByteSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getNthSequenceNumber(I)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 209
    :cond_0
    new-instance v0, Lo/getExecution$extraCallback;

    invoke-direct {v0, p1}, Lo/getExecution$extraCallback;-><init>(I)V

    .line 210
    iget-object p1, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;->lambdaFactory$(Lo/getExecution$extraCallback;)Lo/from;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/setLog;->forEachTarget(Lo/from;)V

    .line 211
    iget-object p1, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application;->lambdaFactory$(Lo/getExecution$extraCallback;)Lo/from;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/setLog;->forEachOrphanedDocumentSequenceNumber(Lo/from;)V

    .line 212
    invoke-virtual {v0}, Lo/getExecution$extraCallback;->getMaxValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public newScheduler(Lo/CrashlyticsReport$Type;Lo/setCores;)Lo/getExecution$onPostMessage;
    .locals 1

    .line 163
    new-instance v0, Lo/getExecution$onPostMessage;

    invoke-direct {v0, p0, p1, p2}, Lo/getExecution$onPostMessage;-><init>(Lo/getExecution;Lo/CrashlyticsReport$Type;Lo/setCores;)V

    return-object v0
.end method

.method removeOrphanedDocuments(J)I
    .locals 1

    .line 228
    iget-object v0, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-interface {v0, p1, p2}, Lo/setLog;->removeOrphanedDocuments(J)I

    move-result p1

    return p1
.end method

.method removeTargets(JLandroid/util/SparseArray;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lo/getExecution;->delegate:Lo/setLog;

    invoke-interface {v0, p1, p2, p3}, Lo/setLog;->removeTargets(JLandroid/util/SparseArray;)I

    move-result p1

    return p1
.end method
