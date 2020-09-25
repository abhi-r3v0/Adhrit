.class public Lo/getArch;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getArch$onNavigationEvent;
    }
.end annotation


# instance fields
.field private current:Z

.field private documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

.field private limboDocuments:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mutatedKeys:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lo/AutoValue_CrashlyticsReport_Session_Application;

.field private syncState:Lo/getDiskSpace$onMessageChannelReady;

.field private syncedDocuments:Lo/CrashlyticsReportWithSessionId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/CrashlyticsReportWithSessionId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Application;",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 97
    sget-object v0, Lo/getDiskSpace$onMessageChannelReady;->NONE:Lo/getDiskSpace$onMessageChannelReady;

    iput-object v0, p0, Lo/getArch;->syncState:Lo/getDiskSpace$onMessageChannelReady;

    .line 98
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->emptySet(Ljava/util/Comparator;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object p1

    iput-object p1, p0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 99
    iput-object p2, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 100
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 101
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    iput-object p1, p0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    return-void
.end method

.method private applyTargetChange(Lo/CrashlyticsReport$Session$Event$Device$Builder;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 356
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 357
    iget-object v2, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    iput-object v1, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getModifiedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 360
    iget-object v2, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 361
    invoke-virtual {v2, v1}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Modified document %s not found in view."

    .line 360
    invoke-static {v2, v1, v3}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 366
    iget-object v2, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2, v1}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    iput-object v1, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    goto :goto_2

    .line 368
    :cond_2
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->isCurrent()Z

    move-result p1

    iput-boolean p1, p0, Lo/getArch;->current:Z

    :cond_3
    return-void
.end method

.method private static changeTypeOrder(Lo/setContents;)I
    .locals 3

    .line 442
    sget-object v0, Lo/getArch$3;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {p0}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown change type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method

.method public static synthetic lambda$applyChanges$0(Lo/getArch;Lo/setContents;Lo/setContents;)I
    .locals 2

    .line 305
    invoke-static {p1}, Lo/getArch;->changeTypeOrder(Lo/setContents;)I

    move-result v0

    invoke-static {p2}, Lo/getArch;->changeTypeOrder(Lo/setContents;)I

    move-result v1

    invoke-static {v0, v1}, Lo/eventFromJson;->compareIntegers(II)I

    move-result v0

    .line 306
    invoke-virtual {p1}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    invoke-virtual {p2}, Lo/setContents;->getType()Lo/setContents$onPostMessage;

    if-eqz v0, :cond_0

    return v0

    .line 310
    :cond_0
    iget-object p0, p0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p1

    invoke-virtual {p2}, Lo/setContents;->getDocument()Lo/setDiskUsed;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private shouldBeLimboDoc(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 2

    .line 407
    iget-object v0, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v0, p1}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 411
    :cond_0
    iget-object v0, p0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/setDiskUsed;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 420
    :cond_1
    invoke-virtual {p1}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private shouldWaitForSyncedDocument(Lo/setDiskUsed;Lo/setDiskUsed;)Z
    .locals 0

    .line 269
    invoke-virtual {p1}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p2}, Lo/setDiskUsed;->hasCommittedMutations()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p2}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateLimboDocuments()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AutoValue_CrashlyticsReport_Session$Builder;",
            ">;"
        }
    .end annotation

    .line 374
    iget-boolean v0, p0, Lo/getArch;->current:Z

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 380
    :cond_0
    iget-object v0, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 381
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->emptyKeySet()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    iput-object v1, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    .line 382
    iget-object v1, p0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    invoke-virtual {v1}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setDiskUsed;

    .line 383
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v3

    invoke-direct {p0, v3}, Lo/getArch;->shouldBeLimboDoc(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    iget-object v3, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    iput-object v2, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    goto :goto_0

    .line 389
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 390
    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v2

    iget-object v3, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v3}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 392
    iget-object v4, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v4, v3}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 393
    new-instance v4, Lo/AutoValue_CrashlyticsReport_Session$Builder;

    sget-object v5, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->REMOVED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-direct {v4, v5, v3}, Lo/AutoValue_CrashlyticsReport_Session$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_4
    iget-object v2, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v2}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 398
    invoke-virtual {v0, v3}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 399
    new-instance v4, Lo/AutoValue_CrashlyticsReport_Session$Builder;

    sget-object v5, Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;->ADDED:Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;

    invoke-direct {v4, v5, v3}, Lo/AutoValue_CrashlyticsReport_Session$Builder;-><init>(Lo/AutoValue_CrashlyticsReport_Session$Builder$onNavigationEvent;Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object v1
.end method


# virtual methods
.method public applyChanges(Lo/getArch$onNavigationEvent;)Lo/getCores;
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, v0}, Lo/getArch;->applyChanges(Lo/getArch$onNavigationEvent;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Lo/getCores;

    move-result-object p1

    return-object p1
.end method

.method public applyChanges(Lo/getArch$onNavigationEvent;Lo/CrashlyticsReport$Session$Event$Device$Builder;)Lo/getCores;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 294
    invoke-static/range {p1 .. p1}, Lo/getArch$onNavigationEvent;->access$100(Lo/getArch$onNavigationEvent;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Cannot apply changes that need a refill"

    invoke-static {v2, v6, v5}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v10, v0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 297
    iget-object v2, v1, Lo/getArch$onNavigationEvent;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    iput-object v2, v0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    .line 298
    iget-object v2, v1, Lo/getArch$onNavigationEvent;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    iput-object v2, v0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 301
    iget-object v2, v1, Lo/getArch$onNavigationEvent;->changeSet:Lo/getStartedAt;

    invoke-virtual {v2}, Lo/getStartedAt;->getChanges()Ljava/util/List;

    move-result-object v11

    .line 302
    invoke-static/range {p0 .. p0}, Lo/getScaleX;->lambdaFactory$(Lo/getArch;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v2, p2

    .line 312
    invoke-direct {v0, v2}, Lo/getArch;->applyTargetChange(Lo/CrashlyticsReport$Session$Event$Device$Builder;)V

    .line 313
    invoke-direct/range {p0 .. p0}, Lo/getArch;->updateLimboDocuments()Ljava/util/List;

    move-result-object v2

    .line 314
    iget-object v5, v0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    invoke-virtual {v5}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lo/getArch;->current:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 315
    sget-object v5, Lo/getDiskSpace$onMessageChannelReady;->SYNCED:Lo/getDiskSpace$onMessageChannelReady;

    goto :goto_1

    :cond_1
    sget-object v5, Lo/getDiskSpace$onMessageChannelReady;->LOCAL:Lo/getDiskSpace$onMessageChannelReady;

    .line 316
    :goto_1
    iget-object v6, v0, Lo/getArch;->syncState:Lo/getDiskSpace$onMessageChannelReady;

    if-eq v5, v6, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 317
    :goto_2
    iput-object v5, v0, Lo/getArch;->syncState:Lo/getDiskSpace$onMessageChannelReady;

    const/4 v6, 0x0

    .line 319
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    if-eqz v14, :cond_5

    .line 320
    :cond_3
    sget-object v6, Lo/getDiskSpace$onMessageChannelReady;->LOCAL:Lo/getDiskSpace$onMessageChannelReady;

    if-ne v5, v6, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 321
    :goto_3
    new-instance v6, Lo/getDiskSpace;

    iget-object v8, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    iget-object v9, v1, Lo/getArch$onNavigationEvent;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    iget-object v13, v1, Lo/getArch$onNavigationEvent;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    const/4 v15, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v15}, Lo/getDiskSpace;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Ljava/util/List;ZLo/CrashlyticsReportWithSessionId;ZZ)V

    .line 332
    :cond_5
    new-instance v1, Lo/getCores;

    invoke-direct {v1, v6, v2}, Lo/getCores;-><init>(Lo/getDiskSpace;Ljava/util/List;)V

    return-object v1
.end method

.method public applyOnlineStateChange(Lo/setGeneratorType;)Lo/getCores;
    .locals 6

    .line 340
    iget-boolean v0, p0, Lo/getArch;->current:Z

    if-eqz v0, :cond_0

    sget-object v0, Lo/setGeneratorType;->OFFLINE:Lo/setGeneratorType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 344
    iput-boolean p1, p0, Lo/getArch;->current:Z

    .line 345
    new-instance p1, Lo/getArch$onNavigationEvent;

    iget-object v1, p0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    new-instance v2, Lo/getStartedAt;

    invoke-direct {v2}, Lo/getStartedAt;-><init>()V

    iget-object v3, p0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lo/getArch$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/getStartedAt;Lo/CrashlyticsReportWithSessionId;ZLo/getArch$3;)V

    invoke-virtual {p0, p1}, Lo/getArch;->applyChanges(Lo/getArch$onNavigationEvent;)Lo/getCores;

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    new-instance p1, Lo/getCores;

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lo/getCores;-><init>(Lo/getDiskSpace;Ljava/util/List;)V

    return-object p1
.end method

.method public computeDocChanges(Lo/populateFramesList;)Lo/getArch$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">(",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "TD;>;)",
            "Lo/getArch$onNavigationEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, p1, v0}, Lo/getArch;->computeDocChanges(Lo/populateFramesList;Lo/getArch$onNavigationEvent;)Lo/getArch$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public computeDocChanges(Lo/populateFramesList;Lo/getArch$onNavigationEvent;)Lo/getArch$onNavigationEvent;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">(",
            "Lo/populateFramesList<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "TD;>;",
            "Lo/getArch$onNavigationEvent;",
            ")",
            "Lo/getArch$onNavigationEvent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_0

    .line 134
    iget-object v2, v1, Lo/getArch$onNavigationEvent;->changeSet:Lo/getStartedAt;

    goto :goto_0

    :cond_0
    new-instance v2, Lo/getStartedAt;

    invoke-direct {v2}, Lo/getStartedAt;-><init>()V

    :goto_0
    move-object v5, v2

    if-eqz v1, :cond_1

    .line 136
    iget-object v2, v1, Lo/getArch$onNavigationEvent;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lo/getArch;->documentSet:Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    :goto_1
    if-eqz v1, :cond_2

    .line 138
    iget-object v3, v1, Lo/getArch$onNavigationEvent;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 151
    :goto_2
    iget-object v4, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v4

    int-to-long v7, v4

    iget-object v4, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v4}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getLimitToFirst()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_3

    .line 152
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getLastDocument()Lo/setDiskUsed;

    move-result-object v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 155
    :goto_3
    iget-object v7, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v7}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v9}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getLimitToLast()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    .line 156
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getFirstDocument()Lo/setDiskUsed;

    move-result-object v7

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    .line 159
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move-object v11, v2

    const/4 v10, 0x0

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 161
    invoke-virtual {v2, v14}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getDocument(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/setDiskUsed;

    move-result-object v15

    .line 163
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    .line 165
    instance-of v6, v12, Lo/setDiskUsed;

    if-eqz v6, :cond_5

    .line 166
    check-cast v12, Lo/setDiskUsed;

    goto :goto_6

    :cond_5
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_6

    .line 171
    invoke-virtual {v12}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v14, v13, v9

    .line 174
    invoke-virtual {v12}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v13, v17

    const-string v9, "Mismatching key in doc change %s != %s"

    .line 170
    invoke-static {v6, v9, v13}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v6, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v6, v12}, Lo/AutoValue_CrashlyticsReport_Session_Application;->matches(Lo/setDiskUsed;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_6
    const/16 v17, 0x1

    :cond_7
    :goto_7
    if-eqz v15, :cond_8

    .line 180
    iget-object v6, v0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 181
    invoke-virtual {v15}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v9

    invoke-virtual {v6, v9}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    if-eqz v12, :cond_a

    .line 187
    invoke-virtual {v12}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v0, Lo/getArch;->mutatedKeys:Lo/CrashlyticsReportWithSessionId;

    .line 188
    invoke-virtual {v12}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v13

    invoke-virtual {v9, v13}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 189
    invoke-virtual {v12}, Lo/setDiskUsed;->hasCommittedMutations()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    const/4 v9, 0x1

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-eqz v15, :cond_d

    if-eqz v12, :cond_d

    .line 195
    invoke-virtual {v15}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v13

    move-object/from16 v16, v2

    invoke-virtual {v12}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 197
    invoke-direct {v0, v15, v12}, Lo/getArch;->shouldWaitForSyncedDocument(Lo/setDiskUsed;Lo/setDiskUsed;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 198
    sget-object v2, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    invoke-static {v2, v12}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v2

    invoke-virtual {v5, v2}, Lo/getStartedAt;->addChange(Lo/setContents;)V

    if-eqz v4, :cond_b

    .line 201
    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, v12, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_10

    :cond_b
    if-eqz v7, :cond_e

    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    .line 203
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v2, v12, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_e

    goto :goto_b

    :cond_c
    if-eq v6, v9, :cond_11

    .line 210
    sget-object v2, Lo/setContents$onPostMessage;->METADATA:Lo/setContents$onPostMessage;

    invoke-static {v2, v12}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v2

    invoke-virtual {v5, v2}, Lo/getStartedAt;->addChange(Lo/setContents;)V

    goto :goto_a

    :cond_d
    move-object/from16 v16, v2

    if-nez v15, :cond_f

    if-eqz v12, :cond_f

    .line 214
    sget-object v2, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    invoke-static {v2, v12}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v2

    invoke-virtual {v5, v2}, Lo/getStartedAt;->addChange(Lo/setContents;)V

    :cond_e
    :goto_a
    const/4 v13, 0x1

    goto :goto_c

    :cond_f
    if-eqz v15, :cond_11

    if-nez v12, :cond_11

    .line 217
    sget-object v2, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-static {v2, v15}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v2

    invoke-virtual {v5, v2}, Lo/getStartedAt;->addChange(Lo/setContents;)V

    if-nez v4, :cond_10

    if-eqz v7, :cond_e

    :cond_10
    :goto_b
    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_14

    if-eqz v12, :cond_13

    .line 228
    invoke-virtual {v11, v12}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->add(Lo/setDiskUsed;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v11

    .line 229
    invoke-virtual {v12}, Lo/setDiskUsed;->hasLocalMutations()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 230
    invoke-virtual {v12}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/CrashlyticsReportWithSessionId;->insert(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    goto :goto_d

    .line 232
    :cond_12
    invoke-virtual {v12}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    goto :goto_d

    .line 235
    :cond_13
    invoke-virtual {v11, v14}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v11

    .line 236
    invoke-virtual {v3, v14}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v2

    move-object v3, v2

    :cond_14
    :goto_d
    move-object/from16 v2, v16

    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_15
    const/16 v17, 0x1

    .line 242
    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToLast()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_e

    :cond_16
    move-object v6, v3

    move-object v4, v11

    goto :goto_12

    .line 243
    :cond_17
    :goto_e
    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getLimitToFirst()J

    move-result-wide v6

    goto :goto_f

    :cond_18
    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->getLimitToLast()J

    move-result-wide v6

    .line 244
    :goto_f
    invoke-virtual {v11}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->size()I

    move-result v2

    int-to-long v8, v2

    :goto_10
    sub-long/2addr v8, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v8, v6

    if-lez v2, :cond_16

    .line 246
    iget-object v2, v0, Lo/getArch;->query:Lo/AutoValue_CrashlyticsReport_Session_Application;

    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_Application;->hasLimitToFirst()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 247
    invoke-virtual {v11}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getLastDocument()Lo/setDiskUsed;

    move-result-object v2

    goto :goto_11

    .line 248
    :cond_19
    invoke-virtual {v11}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->getFirstDocument()Lo/setDiskUsed;

    move-result-object v2

    .line 249
    :goto_11
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {v11, v4}, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;->remove(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;

    move-result-object v11

    .line 250
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/CrashlyticsReportWithSessionId;->remove(Ljava/lang/Object;)Lo/CrashlyticsReportWithSessionId;

    move-result-object v3

    .line 251
    sget-object v4, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-static {v4, v2}, Lo/setContents;->create(Lo/setContents$onPostMessage;Lo/setDiskUsed;)Lo/setContents;

    move-result-object v2

    invoke-virtual {v5, v2}, Lo/getStartedAt;->addChange(Lo/setContents;)V

    const-wide/16 v6, 0x1

    goto :goto_10

    :goto_12
    if-eqz v10, :cond_1b

    if-nez v1, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v1, 0x0

    const/4 v13, 0x0

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v1, 0x0

    const/4 v13, 0x1

    :goto_14
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "View was refilled using docs that themselves needed refilling."

    .line 255
    invoke-static {v13, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 259
    new-instance v1, Lo/getArch$onNavigationEvent;

    const/4 v8, 0x0

    move-object v3, v1

    move v7, v10

    invoke-direct/range {v3 .. v8}, Lo/getArch$onNavigationEvent;-><init>(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem$1;Lo/getStartedAt;Lo/CrashlyticsReportWithSessionId;ZLo/getArch$3;)V

    return-object v1
.end method

.method getLimboDocuments()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lo/getArch;->limboDocuments:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method

.method public getSyncState()Lo/getDiskSpace$onMessageChannelReady;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/getArch;->syncState:Lo/getDiskSpace$onMessageChannelReady;

    return-object v0
.end method

.method getSyncedDocuments()Lo/CrashlyticsReportWithSessionId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/CrashlyticsReportWithSessionId<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lo/getArch;->syncedDocuments:Lo/CrashlyticsReportWithSessionId;

    return-object v0
.end method
