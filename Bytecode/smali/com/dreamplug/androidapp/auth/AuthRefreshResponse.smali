.class public final Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/checkCompatWrapper;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000b\u001a\u00020\u0003H\u00c2\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u000e\u001a\u00020\u0007H\u00c2\u0003J3\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0015\u001a\u00020\u0007H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u0016J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0010\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00038\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;",
        "Lcom/dreamplug/auth/data/AuthData;",
        "responseAccessToken",
        "",
        "userId",
        "responseRefreshToken",
        "expiry",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V",
        "getUserId",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getAccessToken",
        "getExpiryTimeStamp",
        "getRefreshToken",
        "hashCode",
        "",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final expiry:J
    .annotation runtime Lo/computeStringSize;
        extraCallback = "accessTokenExpiry"
    .end annotation
.end field

.field private final responseAccessToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "accessToken"
    .end annotation
.end field

.field private final responseRefreshToken:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "refreshToken"
    .end annotation
.end field

.field private final userId:Ljava/lang/String;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string/jumbo v0, "responseAccessToken"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseRefreshToken"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    iput-wide p4, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method private final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method private final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    return-wide v0
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;
    .locals 7

    const-string/jumbo v0, "responseAccessToken"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "responseRefreshToken"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    iget-wide v2, p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryTimeStamp()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    return-wide v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    .line 1025
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthRefreshResponse(responseAccessToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseRefreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->responseRefreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->expiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
