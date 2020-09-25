.class public abstract Lo/CrashlyticsReport$FilesPayload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

.field private final precondition:Lo/CrashlyticsReport$FilesPayload$File;


# direct methods
.method constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;Lo/CrashlyticsReport$FilesPayload$File;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lo/CrashlyticsReport$FilesPayload;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    .line 75
    iput-object p2, p0, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    return-void
.end method

.method static getPostMutationVersion(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/withNdkPayload;
    .locals 1

    .line 163
    instance-of v0, p0, Lo/setDiskUsed;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getVersion()Lo/withNdkPayload;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    sget-object p0, Lo/withNdkPayload;->NONE:Lo/withNdkPayload;

    return-object p0
.end method


# virtual methods
.method public abstract applyToLocalView(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/getStream;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
.end method

.method public abstract applyToRemoteDocument(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;Lo/CrashlyticsReport$FilesPayload$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$Builder;
.end method

.method public abstract extractBaseValue(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)Lo/AutoValue_CrashlyticsReport_Session_User$1;
.end method

.method public getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    return-object v0
.end method

.method public getPrecondition()Lo/CrashlyticsReport$FilesPayload$File;
    .locals 1

    .line 83
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    return-object v0
.end method

.method hasSameKeyAndPrecondition(Lo/CrashlyticsReport$FilesPayload;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    iget-object v1, p1, Lo/CrashlyticsReport$FilesPayload;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    iget-object p1, p1, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method keyAndPreconditionHashCode()I
    .locals 2

    .line 141
    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method keyAndPreconditionToString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload;->key:Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CrashlyticsReport$FilesPayload;->precondition:Lo/CrashlyticsReport$FilesPayload$File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method verifyKeyMatches(Lo/AutoValue_CrashlyticsReport_Session_User$Builder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lo/AutoValue_CrashlyticsReport_Session_User$Builder;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lo/CrashlyticsReport$FilesPayload;->getKey()Lo/AutoValue_CrashlyticsReport_Session_Event_Log$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can only apply a mutation to a document with the same key"

    .line 151
    invoke-static {p1, v1, v0}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
