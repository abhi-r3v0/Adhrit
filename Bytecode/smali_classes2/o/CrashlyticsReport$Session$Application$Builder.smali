.class public final Lo/CrashlyticsReport$Session$Application$Builder;
.super Lo/CrashlyticsReport$FilesPayload;
.source ""


# instance fields
.field private final fieldTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Lo/CrashlyticsReport$FilesPayload$File;->exists(Z)Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/CrashlyticsReport$FilesPayload;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    .line 47
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    return-void
.end method

.method private localTransformResults(Lo/getStream;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getStream;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            ")",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 206
    invoke-virtual {v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getOperation()Lo/CrashlyticsReport$Session$Application$Organization;

    move-result-object v3

    const/4 v4, 0x0

    .line 209
    instance-of v5, p2, Lo/setDiskUsed;

    if-eqz v5, :cond_0

    .line 210
    move-object v4, p2

    check-cast v4, Lo/setDiskUsed;

    invoke-virtual {v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    .line 213
    instance-of v5, p3, Lo/setDiskUsed;

    if-eqz v5, :cond_1

    .line 217
    move-object v4, p3

    check-cast v4, Lo/setDiskUsed;

    invoke-virtual {v2}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v4

    .line 220
    :cond_1
    invoke-interface {v3, v4, p1}, Lo/CrashlyticsReport$Session$Application$Organization;->applyToLocalView(Lo/writeRawMessageSetExtension;Lo/getStream;)Lo/writeRawMessageSetExtension;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private requireDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/setDiskUsed;
    .locals 4

    .line 153
    instance-of v0, p1, Lo/setDiskUsed;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Unknown MaybeDocument type %s"

    invoke-static {v0, v3, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    check-cast p1, Lo/setDiskUsed;

    .line 155
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Can only transform a document with the same key"

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private serverTransformResults(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_User$Builder;",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    .line 172
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 174
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    .line 175
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "server transform count (%d) should match field transform count (%d)"

    .line 171
    invoke-static {v1, v3, v2}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 178
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 179
    invoke-virtual {v1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getOperation()Lo/CrashlyticsReport$Session$Application$Organization;

    move-result-object v2

    const/4 v3, 0x0

    .line 182
    instance-of v5, p1, Lo/setDiskUsed;

    if-eqz v5, :cond_1

    .line 183
    move-object v3, p1

    check-cast v3, Lo/setDiskUsed;

    invoke-virtual {v1}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v3

    .line 187
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    invoke-interface {v2, v3, v1}, Lo/CrashlyticsReport$Session$Application$Organization;->applyToRemoteDocument(Lo/writeRawMessageSetExtension;Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private transformObject(Lo/AutoValue_CrashlyticsReport_Session_User$1;Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReport_Session_User$1;",
            "Ljava/util/List<",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/AutoValue_CrashlyticsReport_Session_User$1;"
        }
    .end annotation

    .line 227
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Transform results length mismatch."

    .line 226
    invoke-static {v0, v3, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->toBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object p1

    .line 230
    :goto_1
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 231
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 232
    invoke-virtual {v0}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v0

    .line 233
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/writeRawMessageSetExtension;

    invoke-virtual {p1, v0, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->build()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 2

    .line 111
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 113
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->requireDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/setDiskUsed;

    move-result-object v0

    .line 118
    invoke-direct {p0, p3, p1, p2}, Lo/CrashlyticsReport$Session$Application$Builder;->localTransformResults(Lo/getStream;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-virtual {v0}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->transformObject(Lo/AutoValue_CrashlyticsReport_Session_User$1;Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 120
    new-instance p2, Lo/setDiskUsed;

    .line 121
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p3

    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object v0

    sget-object v1, Lo/setDiskUsed$onMessageChannelReady;->LOCAL_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {p2, p3, v0, p1, v1}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object p2
.end method

.method public final applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 89
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getTransformResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results missing for TransformMutation."

    .line 88
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance p1, Lo/CrashlyticsReport;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lo/CrashlyticsReport;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;)V

    return-object p1

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->requireDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/setDiskUsed;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getTransformResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lo/CrashlyticsReport$Session$Application$Builder;->serverTransformResults(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lo/CrashlyticsReport$Session$Application$Builder;->transformObject(Lo/AutoValue_CrashlyticsReport_Session_User$1;Ljava/util/List;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 103
    new-instance v0, Lo/setDiskUsed;

    .line 104
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p2

    sget-object v2, Lo/setDiskUsed$onMessageChannelReady;->COMMITTED_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {v0, v1, p2, p1, v2}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$Application$Builder;

    .line 60
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application$Builder;->hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    iget-object p1, p1, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 6

    .line 129
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/CrashlyticsReport$CustomAttribute$Builder;

    .line 131
    instance-of v4, p1, Lo/setDiskUsed;

    if-eqz v4, :cond_1

    .line 132
    move-object v4, p1

    check-cast v4, Lo/setDiskUsed;

    invoke-virtual {v3}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/setDiskUsed;->getField(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 135
    :goto_1
    invoke-virtual {v3}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getOperation()Lo/CrashlyticsReport$Session$Application$Organization;

    move-result-object v5

    invoke-interface {v5, v4}, Lo/CrashlyticsReport$Session$Application$Organization;->computeBaseValue(Lo/writeRawMessageSetExtension;)Lo/writeRawMessageSetExtension;

    move-result-object v4

    if-eqz v4, :cond_0

    if-nez v2, :cond_2

    .line 138
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->newBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object v2

    .line 140
    :cond_2
    invoke-virtual {v3}, Lo/CrashlyticsReport$CustomAttribute$Builder;->getFieldPath()Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 144
    invoke-virtual {v2}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->build()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public final getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/CrashlyticsReport$CustomAttribute$Builder;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application$Builder;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransformMutation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application$Builder;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldTransforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application$Builder;->fieldTransforms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
