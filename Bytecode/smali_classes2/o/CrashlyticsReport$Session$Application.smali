.class public final Lo/CrashlyticsReport$Session$Application;
.super Lo/CrashlyticsReport$FilesPayload;
.source ""


# instance fields
.field private final value:Lo/AutoValue_CrashlyticsReport_Session_User$1;


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/CrashlyticsReport$FilesPayload$File;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p3}, Lo/CrashlyticsReport$FilesPayload;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    .line 35
    iput-object p2, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-void
.end method


# virtual methods
.method public final applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 2

    .line 82
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 84
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 88
    :cond_0
    invoke-static {p1}, Lo/CrashlyticsReport$Session$Application;->getPostMutationVersion(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/withNdkPayload;

    move-result-object p1

    .line 89
    new-instance p2, Lo/setDiskUsed;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p3

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    sget-object v1, Lo/setDiskUsed$onMessageChannelReady;->LOCAL_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {p2, p3, p1, v0, v1}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object p2
.end method

.method public final applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 66
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 69
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getTransformResults()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Transform results received by SetMutation."

    .line 68
    invoke-static {p1, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p1

    .line 75
    new-instance p2, Lo/setDiskUsed;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    sget-object v2, Lo/setDiskUsed$onMessageChannelReady;->COMMITTED_MUTATIONS:Lo/setDiskUsed$onMessageChannelReady;

    invoke-direct {p2, v0, p1, v1, v2}, Lo/setDiskUsed;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Lo/AutoValue_CrashlyticsReport_Session_User$1;Lo/setDiskUsed$onMessageChannelReady;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$Application;

    .line 48
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application;->hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    iget-object p1, p1, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

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

.method public final getValue()Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    .line 94
    iget-object v0, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 53
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetMutation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Application;->value:Lo/AutoValue_CrashlyticsReport_Session_User$1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
