.class final Lo/parseProcMapsJsonFromString$onPostMessage;
.super Lo/correctDataPath$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/parseProcMapsJsonFromString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private responseCode:Lo/correctDataPath$extraCallback;

.field private token:Ljava/lang/String;

.field private tokenExpirationTimestamp:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lo/correctDataPath$ICustomTabsCallback;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/correctDataPath;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lo/correctDataPath$ICustomTabsCallback;-><init>()V

    .line 91
    invoke-virtual {p1}, Lo/correctDataPath;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->token:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lo/correctDataPath;->getTokenExpirationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 93
    invoke-virtual {p1}, Lo/correctDataPath;->getResponseCode()Lo/correctDataPath$extraCallback;

    move-result-object p1

    iput-object p1, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->responseCode:Lo/correctDataPath$extraCallback;

    return-void
.end method

.method synthetic constructor <init>(Lo/correctDataPath;Lo/parseProcMapsJsonFromString$4;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lo/parseProcMapsJsonFromString$onPostMessage;-><init>(Lo/correctDataPath;)V

    return-void
.end method


# virtual methods
.method public final build()Lo/correctDataPath;
    .locals 8

    .line 113
    iget-object v0, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->tokenExpirationTimestamp:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tokenExpirationTimestamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Lo/parseProcMapsJsonFromString;

    iget-object v3, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->token:Ljava/lang/String;

    iget-object v1, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->responseCode:Lo/correctDataPath$extraCallback;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/parseProcMapsJsonFromString;-><init>(Ljava/lang/String;JLo/correctDataPath$extraCallback;Lo/parseProcMapsJsonFromString$4;)V

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setResponseCode(Lo/correctDataPath$extraCallback;)Lo/correctDataPath$ICustomTabsCallback;
    .locals 0

    .line 107
    iput-object p1, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->responseCode:Lo/correctDataPath$extraCallback;

    return-object p0
.end method

.method public final setToken(Ljava/lang/String;)Lo/correctDataPath$ICustomTabsCallback;
    .locals 0

    .line 97
    iput-object p1, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->token:Ljava/lang/String;

    return-object p0
.end method

.method public final setTokenExpirationTimestamp(J)Lo/correctDataPath$ICustomTabsCallback;
    .locals 0

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/parseProcMapsJsonFromString$onPostMessage;->tokenExpirationTimestamp:Ljava/lang/Long;

    return-object p0
.end method
