.class final Lo/doRequest;
.super Lo/ContentFetcher;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/doRequest$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:[B


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;[B)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lo/ContentFetcher;-><init>()V

    .line 19
    iput-object p1, p0, Lo/doRequest;->ICustomTabsCallback:Ljava/lang/Iterable;

    .line 20
    iput-object p2, p0, Lo/doRequest;->extraCallback:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;[BB)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lo/doRequest;-><init>(Ljava/lang/Iterable;[B)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lo/ContentFetcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48
    check-cast p1, Lo/ContentFetcher;

    .line 49
    iget-object v1, p0, Lo/doRequest;->ICustomTabsCallback:Ljava/lang/Iterable;

    invoke-virtual {p1}, Lo/ContentFetcher;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/doRequest;->extraCallback:[B

    .line 50
    instance-of v3, p1, Lo/doRequest;

    if-eqz v3, :cond_1

    check-cast p1, Lo/doRequest;

    iget-object p1, p1, Lo/doRequest;->extraCallback:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lo/ContentFetcher;->onMessageChannelReady()[B

    move-result-object p1

    :goto_0
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 59
    iget-object v0, p0, Lo/doRequest;->ICustomTabsCallback:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 61
    iget-object v1, p0, Lo/doRequest;->extraCallback:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lo/doRequest;->extraCallback:[B

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/doRequest;->ICustomTabsCallback:Ljava/lang/Iterable;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackendRequest{events="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/doRequest;->ICustomTabsCallback:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/doRequest;->extraCallback:[B

    .line 38
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
