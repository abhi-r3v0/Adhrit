.class public Lo/CrashlyticsReport$Session$User$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReport$Session$User$Builder$extraCallback;
    }
.end annotation


# instance fields
.field private pendingDocumentTargetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingDocumentUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private pendingTargetResets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

.field private final targetStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/CrashlyticsReport$Session$Event$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CrashlyticsReport$Session$User$Builder$extraCallback;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentTargetMapping:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingTargetResets:Ljava/util/Set;

    .line 81
    iput-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

    return-void
.end method

.method private addDocumentToTarget(ILo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 3

    .line 294
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/CrashlyticsReport$Session$User$Builder;->targetContainsDocument(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lo/setContents$onPostMessage;->MODIFIED:Lo/setContents$onPostMessage;

    goto :goto_0

    .line 301
    :cond_1
    sget-object v0, Lo/setContents$onPostMessage;->ADDED:Lo/setContents$onPostMessage;

    .line 303
    :goto_0
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/CrashlyticsReport$Session$Event$Builder;->addDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setContents$onPostMessage;)V

    .line 306
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p2}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    invoke-direct {p0, p2}, Lo/CrashlyticsReport$Session$User$Builder;->ensureDocumentTargetMapping(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureDocumentTargetMapping(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 381
    iget-object v1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;
    .locals 2

    .line 367
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Event$Builder;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lo/CrashlyticsReport$Session$Event$Builder;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Event$Builder;-><init>()V

    .line 370
    iget-object v1, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getCurrentDocumentCountForTarget(I)I
    .locals 2

    .line 349
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Builder;->toTargetChange()Lo/CrashlyticsReport$Session$Event$Device$Builder;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

    invoke-interface {v1, p1}, Lo/CrashlyticsReport$Session$User$Builder$extraCallback;->getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    invoke-virtual {p1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result p1

    .line 352
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getAddedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v1

    invoke-virtual {v1}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v1

    add-int/2addr p1, v1

    .line 353
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Device$Builder;->getRemovedDocuments()Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->size()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method private getTargetIds(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getTargetIds()Ljava/util/List;

    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 166
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private isActiveTarget(I)Z
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->queryDataForActiveTarget(I)Lo/setBatteryVelocity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private queryDataForActiveTarget(I)Lo/setBatteryVelocity;
    .locals 2

    .line 401
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Event$Builder;

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Builder;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 404
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$User$Builder$extraCallback;->getTargetDataForTarget(I)Lo/setBatteryVelocity;

    move-result-object p1

    return-object p1
.end method

.method private removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 2

    .line 319
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;

    move-result-object v0

    .line 324
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$Session$User$Builder;->targetContainsDocument(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    sget-object v1, Lo/setContents$onPostMessage;->REMOVED:Lo/setContents$onPostMessage;

    invoke-virtual {v0, p2, v1}, Lo/CrashlyticsReport$Session$Event$Builder;->addDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/setContents$onPostMessage;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v0, p2}, Lo/CrashlyticsReport$Session$Event$Builder;->removeDocumentChange(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)V

    .line 332
    :goto_0
    invoke-direct {p0, p2}, Lo/CrashlyticsReport$Session$User$Builder;->ensureDocumentTargetMapping(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    .line 335
    iget-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private resetTarget(I)V
    .locals 3

    .line 412
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    .line 413
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$Session$Event$Builder;

    invoke-virtual {v0}, Lo/CrashlyticsReport$Session$Event$Builder;->isPending()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Should only reset active targets"

    .line 412
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lo/CrashlyticsReport$Session$Event$Builder;

    invoke-direct {v2}, Lo/CrashlyticsReport$Session$Event$Builder;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

    .line 420
    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$User$Builder$extraCallback;->getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lo/CrashlyticsReportWithSessionId;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    const/4 v2, 0x0

    .line 422
    invoke-direct {p0, p1, v1, v2}, Lo/CrashlyticsReport$Session$User$Builder;->removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private targetContainsDocument(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z
    .locals 1

    .line 428
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetMetadataProvider:Lo/CrashlyticsReport$Session$User$Builder$extraCallback;

    .line 429
    invoke-interface {v0, p1}, Lo/CrashlyticsReport$Session$User$Builder$extraCallback;->getRemoteKeysForTarget(I)Lo/CrashlyticsReportWithSessionId;

    move-result-object p1

    .line 430
    invoke-virtual {p1, p2}, Lo/CrashlyticsReportWithSessionId;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public createRemoteEvent(Lo/withNdkPayload;)Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;
    .locals 13

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    iget-object v1, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$Session$Event$Builder;

    .line 225
    invoke-direct {p0, v4}, Lo/CrashlyticsReport$Session$User$Builder;->queryDataForActiveTarget(I)Lo/setBatteryVelocity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->isCurrent()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v6

    invoke-virtual {v6}, Lo/setClsId;->isDocumentQuery()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    invoke-virtual {v5}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v5

    invoke-virtual {v5}, Lo/setClsId;->getPath()Lo/setJailbroken;

    move-result-object v5

    invoke-static {v5}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v5

    .line 233
    iget-object v6, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4, v5}, Lo/CrashlyticsReport$Session$User$Builder;->targetContainsDocument(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    new-instance v6, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-direct {v6, v5, p1, v3}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    invoke-direct {p0, v4, v5, v6}, Lo/CrashlyticsReport$Session$User$Builder;->removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 241
    :cond_1
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->hasChanges()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->toTargetChange()Lo/CrashlyticsReport$Session$Event$Device$Builder;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->clearChanges()V

    goto :goto_0

    .line 248
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 254
    iget-object v2, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentTargetMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 256
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const/4 v6, 0x1

    .line 260
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 261
    invoke-direct {p0, v7}, Lo/CrashlyticsReport$Session$User$Builder;->queryDataForActiveTarget(I)Lo/setBatteryVelocity;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 262
    invoke-virtual {v7}, Lo/setBatteryVelocity;->getPurpose()Lo/getBinaries;

    move-result-object v7

    sget-object v8, Lo/getBinaries;->LIMBO_RESOLUTION:Lo/getBinaries;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v6, 0x0

    :cond_5
    if-eqz v6, :cond_3

    .line 269
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_6
    new-instance v2, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;

    .line 276
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingTargetResets:Ljava/util/Set;

    .line 277
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    .line 278
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 279
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder;-><init>(Lo/withNdkPayload;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 282
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentUpdates:Ljava/util/Map;

    .line 283
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingDocumentTargetMapping:Ljava/util/Map;

    .line 284
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingTargetResets:Ljava/util/Set;

    return-object v2
.end method

.method public handleDocumentChange(Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;)V
    .locals 5

    .line 86
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->getNewDocument()Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->getDocumentKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->getUpdatedTargetIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 90
    instance-of v4, v0, Lo/setDiskUsed;

    if-eqz v4, :cond_1

    .line 91
    invoke-direct {p0, v3, v0}, Lo/CrashlyticsReport$Session$User$Builder;->addDocumentToTarget(ILo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v4, v0, Lo/AutoValue_CrashlyticsReport_Session_User;

    if-eqz v4, :cond_0

    .line 93
    invoke-direct {p0, v3, v1, v0}, Lo/CrashlyticsReport$Session$User$Builder;->removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->getRemovedTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 98
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$extraCallback;->getNewDocument()Lo/AutoValue_CrashlyticsReport_Session_User$Builder;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lo/CrashlyticsReport$Session$User$Builder;->removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public handleExistenceFilter(Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;)V
    .locals 5

    .line 181
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->getTargetId()I

    move-result v0

    .line 182
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onPostMessage;->getExistenceFilter()Lo/CrashlyticsReport$Session$Event$Application$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Application$Builder;->getCount()I

    move-result p1

    .line 184
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$User$Builder;->queryDataForActiveTarget(I)Lo/setBatteryVelocity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v1}, Lo/setBatteryVelocity;->getTarget()Lo/setClsId;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lo/setClsId;->isDocumentQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 193
    invoke-virtual {v1}, Lo/setClsId;->getPath()Lo/setJailbroken;

    move-result-object p1

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;->fromPath(Lo/setJailbroken;)Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    .line 194
    new-instance v1, Lo/AutoValue_CrashlyticsReport_Session_User;

    sget-object v3, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    invoke-direct {v1, p1, v3, v2}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    invoke-direct {p0, v0, p1, v1}, Lo/CrashlyticsReport$Session$User$Builder;->removeDocumentFromTarget(ILo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Single document existence filter with count: %d"

    .line 199
    invoke-static {v1, p1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 203
    :cond_2
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$User$Builder;->getCurrentDocumentCountForTarget(I)I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 207
    invoke-direct {p0, v0}, Lo/CrashlyticsReport$Session$User$Builder;->resetTarget(I)V

    .line 208
    iget-object p1, p0, Lo/CrashlyticsReport$Session$User$Builder;->pendingTargetResets:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public handleTargetChange(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)V
    .locals 7

    .line 104
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->getTargetIds(Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 105
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;

    move-result-object v2

    .line 107
    sget-object v3, Lo/getIconUri$onNavigationEvent;->$SwitchMap$com$google$firebase$firestore$remote$WatchChange$WatchTargetChangeType:[I

    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getChangeType()Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 143
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->resetTarget(I)V

    .line 148
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Builder;->updateResumeToken(Lo/SessionProtobufHelper;)V

    goto :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getChangeType()Lo/CrashlyticsReport$Session$OperatingSystem$onNavigationEvent;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "Unknown target watch change state: %s"

    invoke-static {p1, v0}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1

    .line 137
    :cond_2
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->markCurrent()V

    .line 139
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Builder;->updateResumeToken(Lo/SessionProtobufHelper;)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->recordTargetResponse()V

    .line 129
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->isPending()Z

    move-result v2

    if-nez v2, :cond_4

    .line 130
    invoke-virtual {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->removeTarget(I)V

    .line 133
    :cond_4
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getCause()Lo/emptyMap;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "WatchChangeAggregator does not handle errored targets"

    .line 132
    invoke-static {v4, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_6
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->recordTargetResponse()V

    .line 116
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->isPending()Z

    move-result v1

    if-nez v1, :cond_7

    .line 120
    invoke-virtual {v2}, Lo/CrashlyticsReport$Session$Event$Builder;->clearChanges()V

    .line 122
    :cond_7
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Builder;->updateResumeToken(Lo/SessionProtobufHelper;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    invoke-direct {p0, v1}, Lo/CrashlyticsReport$Session$User$Builder;->isActiveTarget(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$OperatingSystem$onMessageChannelReady;->getResumeToken()Lo/SessionProtobufHelper;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/CrashlyticsReport$Session$Event$Builder;->updateResumeToken(Lo/SessionProtobufHelper;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method recordPendingTargetRequest(I)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$User$Builder;->ensureTargetState(I)Lo/CrashlyticsReport$Session$Event$Builder;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lo/CrashlyticsReport$Session$Event$Builder;->recordPendingTargetRequest()V

    return-void
.end method

.method removeTarget(I)V
    .locals 1

    .line 340
    iget-object v0, p0, Lo/CrashlyticsReport$Session$User$Builder;->targetStates:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
