.class final Lo/getLibraryFile$onMessageChannelReady;
.super Lo/isRelevant$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getLibraryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private authToken:Lo/correctDataPath;

.field private fid:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private responseCode:Lo/isRelevant$onMessageChannelReady;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lo/isRelevant$extraCallback;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/isRelevant;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lo/isRelevant$extraCallback;-><init>()V

    .line 120
    invoke-virtual {p1}, Lo/isRelevant;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getLibraryFile$onMessageChannelReady;->uri:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lo/isRelevant;->getFid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getLibraryFile$onMessageChannelReady;->fid:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lo/isRelevant;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getLibraryFile$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lo/isRelevant;->getAuthToken()Lo/correctDataPath;

    move-result-object v0

    iput-object v0, p0, Lo/getLibraryFile$onMessageChannelReady;->authToken:Lo/correctDataPath;

    .line 124
    invoke-virtual {p1}, Lo/isRelevant;->getResponseCode()Lo/isRelevant$onMessageChannelReady;

    move-result-object p1

    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->responseCode:Lo/isRelevant$onMessageChannelReady;

    return-void
.end method

.method synthetic constructor <init>(Lo/isRelevant;Lo/getLibraryFile$3;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lo/getLibraryFile$onMessageChannelReady;-><init>(Lo/isRelevant;)V

    return-void
.end method


# virtual methods
.method public final build()Lo/isRelevant;
    .locals 8

    .line 153
    new-instance v7, Lo/getLibraryFile;

    iget-object v1, p0, Lo/getLibraryFile$onMessageChannelReady;->uri:Ljava/lang/String;

    iget-object v2, p0, Lo/getLibraryFile$onMessageChannelReady;->fid:Ljava/lang/String;

    iget-object v3, p0, Lo/getLibraryFile$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    iget-object v4, p0, Lo/getLibraryFile$onMessageChannelReady;->authToken:Lo/correctDataPath;

    iget-object v5, p0, Lo/getLibraryFile$onMessageChannelReady;->responseCode:Lo/isRelevant$onMessageChannelReady;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/getLibraryFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/correctDataPath;Lo/isRelevant$onMessageChannelReady;Lo/getLibraryFile$3;)V

    return-object v7
.end method

.method public final setAuthToken(Lo/correctDataPath;)Lo/isRelevant$extraCallback;
    .locals 0

    .line 143
    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->authToken:Lo/correctDataPath;

    return-object p0
.end method

.method public final setFid(Ljava/lang/String;)Lo/isRelevant$extraCallback;
    .locals 0

    .line 133
    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->fid:Ljava/lang/String;

    return-object p0
.end method

.method public final setRefreshToken(Ljava/lang/String;)Lo/isRelevant$extraCallback;
    .locals 0

    .line 138
    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public final setResponseCode(Lo/isRelevant$onMessageChannelReady;)Lo/isRelevant$extraCallback;
    .locals 0

    .line 148
    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->responseCode:Lo/isRelevant$onMessageChannelReady;

    return-object p0
.end method

.method public final setUri(Ljava/lang/String;)Lo/isRelevant$extraCallback;
    .locals 0

    .line 128
    iput-object p1, p0, Lo/getLibraryFile$onMessageChannelReady;->uri:Ljava/lang/String;

    return-object p0
.end method
