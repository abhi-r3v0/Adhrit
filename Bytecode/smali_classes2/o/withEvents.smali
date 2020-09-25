.class public final Lo/withEvents;
.super Lo/CrashlyticsReport$FilesPayload;
.source ""


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$FilesPayload;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-void
.end method


# virtual methods
.method public final applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 1

    .line 78
    invoke-virtual {p0, p1}, Lo/withEvents;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 80
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/CrashlyticsReport$FilesPayload$File;->isValidFor(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 84
    :cond_0
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p2

    sget-object p3, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    return-object p1
.end method

.method public final applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 3

    .line 60
    invoke-virtual {p0, p1}, Lo/withEvents;->verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V

    .line 63
    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getTransformResults()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results received by DeleteMutation."

    .line 62
    invoke-static {p1, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance p1, Lo/AutoValue_CrashlyticsReport_Session_User;

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lo/CrashlyticsReport$FilesPayload$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p2

    invoke-direct {p1, v1, p2, v0}, Lo/AutoValue_CrashlyticsReport_Session_User;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/withNdkPayload;Z)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    check-cast p1, Lo/withEvents;

    .line 44
    invoke-virtual {p0, p1}, Lo/withEvents;->hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lo/withEvents;->keyAndPreconditionHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteMutation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/withEvents;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
