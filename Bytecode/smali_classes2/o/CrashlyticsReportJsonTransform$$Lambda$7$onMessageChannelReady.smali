.class final Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;
.super Lo/jsonFromMapEntryString$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReportJsonTransform$$Lambda$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private authToken:Ljava/lang/String;

.field private expiresInSecs:Ljava/lang/Long;

.field private firebaseInstallationId:Ljava/lang/String;

.field private fisError:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private registrationStatus:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

.field private tokenCreationEpochInSecs:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/jsonFromMapEntryString;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Lo/jsonFromMapEntryString$ICustomTabsCallback;-><init>()V

    .line 149
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFirebaseInstallationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->firebaseInstallationId:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getRegistrationStatus()Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->registrationStatus:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    .line 151
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->authToken:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getExpiresInSecs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->expiresInSecs:Ljava/lang/Long;

    .line 154
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getTokenCreationEpochInSecs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 155
    invoke-virtual {p1}, Lo/jsonFromMapEntryString;->getFisError()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->fisError:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lo/jsonFromMapEntryString;Lo/CrashlyticsReportJsonTransform$$Lambda$7$3;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;-><init>(Lo/jsonFromMapEntryString;)V

    return-void
.end method


# virtual methods
.method public final build()Lo/jsonFromMapEntryString;
    .locals 13

    .line 198
    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->registrationStatus:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " registrationStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->expiresInSecs:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expiresInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_1
    iget-object v0, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->tokenCreationEpochInSecs:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenCreationEpochInSecs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    new-instance v0, Lo/CrashlyticsReportJsonTransform$$Lambda$7;

    iget-object v3, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->firebaseInstallationId:Ljava/lang/String;

    iget-object v4, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->registrationStatus:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    iget-object v5, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->authToken:Ljava/lang/String;

    iget-object v6, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    iget-object v1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->expiresInSecs:Ljava/lang/Long;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->tokenCreationEpochInSecs:Ljava/lang/Long;

    .line 216
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->fisError:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lo/CrashlyticsReportJsonTransform$$Lambda$7;-><init>(Ljava/lang/String;Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lo/CrashlyticsReportJsonTransform$$Lambda$7$3;)V

    return-object v0

    .line 208
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAuthToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 172
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setExpiresInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 182
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->expiresInSecs:Ljava/lang/Long;

    return-object p0
.end method

.method public final setFirebaseInstallationId(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 159
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->firebaseInstallationId:Ljava/lang/String;

    return-object p0
.end method

.method public final setFisError(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 192
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->fisError:Ljava/lang/String;

    return-object p0
.end method

.method public final setRefreshToken(Ljava/lang/String;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 177
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setRegistrationStatus(Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->registrationStatus:Lo/parseProcMapsJsonFromStream$ICustomTabsCallback;

    return-object p0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null registrationStatus"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTokenCreationEpochInSecs(J)Lo/jsonFromMapEntryString$ICustomTabsCallback;
    .locals 0

    .line 187
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsReportJsonTransform$$Lambda$7$onMessageChannelReady;->tokenCreationEpochInSecs:Ljava/lang/Long;

    return-object p0
.end method
