.class final Lo/loadFinalizedReports;
.super Lo/finalizeReports;
.source ""


# instance fields
.field private zzai:Lo/b$b;

.field private final zzdj:Landroid/content/Context;

.field private final zzdw:Lo/ArticleDetailActivity$2$1$1;


# direct methods
.method constructor <init>(Lo/ArticleDetailActivity$2$1$1;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/finalizeReports;-><init>()V

    .line 2
    iput-object p2, p0, Lo/loadFinalizedReports;->zzdj:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 4
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    return-void
.end method

.method private final zzi(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 92
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 94
    :goto_0
    iget-object v1, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "getResultUrl throws exception %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzj(Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static zzp(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzq(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zzbt()Z
    .locals 8

    .line 6
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lo/loadFinalizedReports;->zzj(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL is missing:"

    iget-object v3, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v3}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/loadFinalizedReports;->zzi(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL cannot be parsed"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 15
    :cond_2
    iget-object v2, p0, Lo/loadFinalizedReports;->zzdj:Landroid/content/Context;

    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {v0, v2}, Lo/n;->onMessageChannelReady(Ljava/net/URI;Landroid/content/Context;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_4

    .line 20
    iget-object v2, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "URL fails whitelist rule: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 22
    :cond_4
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 23
    invoke-static {v2}, Lo/loadFinalizedReports;->zzj(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_6

    .line 25
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL host is null or invalid"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 27
    :cond_6
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v4, "http"

    .line 29
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_9

    .line 31
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL scheme is null or invalid"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 33
    :cond_9
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_b

    .line 36
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL user info is null"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 38
    :cond_b
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-lez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_e

    .line 41
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "URL port is less than or equal to 0"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 43
    :cond_e
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onPostMessage()Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    move-result-object v0

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_10

    .line 45
    sget-object v2, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    if-eq v0, v2, :cond_10

    const/4 v0, 0x1

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_11

    .line 47
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->onPostMessage()Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP Method is null or invalid: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 49
    :cond_11
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 50
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onTransact()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_13

    .line 53
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->onTransact()I

    move-result v2

    const/16 v3, 0x31

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP ResponseCode is a negative value:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 55
    :cond_13
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 56
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/loadFinalizedReports;->zzq(J)Z

    move-result v0

    if-nez v0, :cond_14

    .line 57
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->onMessageChannelReady()J

    move-result-wide v2

    const/16 v4, 0x38

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Request Payload is a negative value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 59
    :cond_14
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 60
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->asBinder()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/loadFinalizedReports;->zzq(J)Z

    move-result v0

    if-nez v0, :cond_15

    .line 61
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->asBinder()J

    move-result-wide v2

    const/16 v4, 0x39

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Response Payload is a negative value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 63
    :cond_15
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->warmup()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_16

    goto/16 :goto_b

    .line 68
    :cond_16
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsService()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 69
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->getInterfaceDescriptor()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/loadFinalizedReports;->zzp(J)Z

    move-result v0

    if-nez v0, :cond_17

    .line 70
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 71
    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->getInterfaceDescriptor()J

    move-result-wide v2

    const/16 v4, 0x45

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Time to complete the request is a negative value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 74
    :cond_17
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 75
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->newSession()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo/loadFinalizedReports;->zzp(J)Z

    move-result v0

    if-nez v0, :cond_18

    .line 76
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 77
    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->newSession()J

    move-result-wide v2

    const/16 v4, 0x70

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Time from the start of the request to the start of the response is null or a negative value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 80
    :cond_18
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 81
    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->requestPostMessageChannel()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_19

    goto :goto_a

    .line 86
    :cond_19
    iget-object v0, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1;->asInterface()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 87
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    const-string v2, "Did not receive a HTTP Response Code"

    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    :cond_1a
    return v3

    .line 82
    :cond_1b
    :goto_a
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 83
    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->requestPostMessageChannel()J

    move-result-wide v2

    const/16 v4, 0x6c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Time from the start of the request to the end of the response is null, negative or zero:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1

    .line 64
    :cond_1c
    :goto_b
    iget-object v0, p0, Lo/loadFinalizedReports;->zzai:Lo/b$b;

    iget-object v2, p0, Lo/loadFinalizedReports;->zzdw:Lo/ArticleDetailActivity$2$1$1;

    .line 65
    invoke-virtual {v2}, Lo/ArticleDetailActivity$2$1$1;->warmup()J

    move-result-wide v2

    const/16 v4, 0x54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Start time of the request is null, or zero, or a negative value:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return v1
.end method
