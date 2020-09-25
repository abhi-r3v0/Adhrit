.class public final Lo/CrashlyticsReport$FilesPayload$File$Builder;
.super Lo/CrashlyticsReport$FilesPayload;
.source ""


# instance fields
.field private final mask:Lo/CrashlyticsReport$CustomAttribute;

.field private final value:Lo/AutoValue_CrashlyticsReport_Session_User$1;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$CustomAttribute;Lo/CrashlyticsReport$FilesPayload$File;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p4}, Lo/CrashlyticsReport$FilesPayload;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    .line 49
    iput-object p2, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    .line 50
    iput-object p3, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->mask:Lo/CrashlyticsReport$CustomAttribute;

    return-void
.end method

.method private patchDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    .line 145
    instance-of v0, p1, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lo/setDiskUsed;

    invoke-virtual {p1}, Lo/setDiskUsed;->getData()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->emptyObject()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 150
    :goto_0
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->patchObject(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    return-object p1
.end method

.method private patchObject(Lo/AutoValue_CrashlyticsReport_Session_User$1;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 3

    .line 154
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->toBuilder()Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->mask:Lo/CrashlyticsReport$CustomAttribute;

    invoke-virtual {v0}, Lo/CrashlyticsReport$CustomAttribute;->getMask()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;

    .line 156
    invoke-virtual {v1}, Lo/setRamUsed;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v2, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1;->get(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/writeRawMessageSetExtension;

    move-result-object v2

    if-nez v2, :cond_1

    .line 159
    invoke-virtual {p1, v1}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->delete(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1, v1, v2}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->set(Lo/AutoValue_CrashlyticsReport_Session_OperatingSystem;Lo/writeRawMessageSetExtension;)Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$1$onNavigationEvent;->build()Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 2

    .line 122
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 124
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 128
    :cond_0
    invoke-static {p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->getPostMutationVersion(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/withNdkPayload;

    move-result-object p2

    .line 129
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->patchDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 130
    new-instance p3, Lo/setDiskUsed;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    sget-object v1, Lo/setDiskUsed$onMessageChannelReady;->LOCAL_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {p3, v0, p2, p1, v1}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object p3
.end method

.method public final applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 100
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 103
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getTransformResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results received by PatchMutation."

    .line 102
    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance p1, Lo/CrashlyticsReport;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lo/CrashlyticsReport;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;)V

    return-object p1

    .line 113
    :cond_1
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p2

    .line 114
    invoke-direct {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->patchDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;

    move-result-object p1

    .line 115
    new-instance v0, Lo/setDiskUsed;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

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

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$FilesPayload$File$Builder;

    .line 63
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    iget-object p1, p1, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getMask()Lo/CrashlyticsReport$CustomAttribute;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->mask:Lo/CrashlyticsReport$CustomAttribute;

    return-object v0
.end method

.method public final getValue()Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PatchMutation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload$File$Builder;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->mask:Lo/CrashlyticsReport$CustomAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload$File$Builder;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
