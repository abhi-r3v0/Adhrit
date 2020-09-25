.class public abstract Lo/jsonFromMapEntryString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/jsonFromMapEntryString$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static INSTANCE:Lo/jsonFromMapEntryString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    invoke-static {}, Lo/jsonFromMapEntryString;->builder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object v0

    sput-object v0, Lo/jsonFromMapEntryString;->INSTANCE:Lo/jsonFromMapEntryString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 4

    .line 133
    new-instance v0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;

    invoke-direct {v0}, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;-><init>()V

    const-wide/16 v1, 0x0

    .line 134
    invoke-virtual {v0, v1, v2}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    sget-object v3, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 135
    invoke-virtual {v0, v3}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1, v2}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAuthToken()Ljava/lang/String;
.end method

.method public abstract getExpiresInSecs()J
.end method

.method public abstract getFirebaseInstallationId()Ljava/lang/String;
.end method

.method public abstract getFisError()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;
.end method

.method public abstract getTokenCreationEpochInSecs()J
.end method

.method public isErrored()Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTER_ERROR:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNotGenerated()Z
    .locals 2

    .line 66
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->NOT_GENERATED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-eq v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isRegistered()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnregistered()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->UNREGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAttemptMigration()Z
    .locals 2

    .line 71
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->ATTEMPT_MIGRATION:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;
.end method

.method public withAuthToken(Ljava/lang/String;JJ)Lo/jsonFromMapEntryString;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p2, p3}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p4, p5}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method

.method public withClearedAuthToken()Lo/jsonFromMapEntryString;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object v0

    return-object v0
.end method

.method public withFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTER_ERROR:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 103
    invoke-virtual {p1, v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method

.method public withNoGeneratedFid()Lo/jsonFromMapEntryString;
    .locals 2

    .line 109
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    sget-object v1, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->NOT_GENERATED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object v0

    return-object v0
.end method

.method public withRegisteredFid(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)Lo/jsonFromMapEntryString;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setFirebaseInstallationId(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->REGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 91
    invoke-virtual {p1, v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p5}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRefreshToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p6, p7}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p3, p4}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method

.method public withUnregisteredFid(Ljava/lang/String;)Lo/jsonFromMapEntryString;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lo/jsonFromMapEntryString;->toBuilder()Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setFirebaseInstallationId(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    sget-object v0, Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;->UNREGISTERED:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 78
    invoke-virtual {p1, v0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lo/jsonFromMapEntryString$ICustomTabsCallback;->build()Lo/jsonFromMapEntryString;

    move-result-object p1

    return-object p1
.end method
