.class public final Lo/CrashlyticsReport$Session$Application$Organization$Builder;
.super Lo/CrashlyticsReport$FilesPayload;
.source ""


# direct methods
.method public constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsReport$FilesPayload;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V

    return-void
.end method


# virtual methods
.method public final applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "VerifyMutation should only be used in Transactions."

    .line 70
    invoke-static {p2, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "VerifyMutation should only be used in Transactions."

    .line 63
    invoke-static {p2, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    check-cast p1, Lo/CrashlyticsReport$Session$Application$Organization$Builder;

    .line 47
    invoke-virtual {p0, p1}, Lo/CrashlyticsReport$Session$Application$Organization$Builder;->hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VerifyMutation should only be used in Transactions."

    .line 76
    invoke-static {v0, p1}, Lo/toStringMap$onPostMessage;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p1

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    .line 52
    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application$Organization$Builder;->keyAndPreconditionHashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerifyMutation{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/CrashlyticsReport$Session$Application$Organization$Builder;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
