.class public final Lo/onCodeSent;
.super Lo/getSignInProvider;


# instance fields
.field private final ICustomTabsCallback:J

.field private final asInterface:I

.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJI)V
    .locals 0

    invoke-direct {p0}, Lo/getSignInProvider;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lo/onCodeSent;->extraCallback:Ljava/lang/String;

    iput p2, p0, Lo/onCodeSent;->onMessageChannelReady:I

    iput p3, p0, Lo/onCodeSent;->onNavigationEvent:I

    iput-wide p4, p0, Lo/onCodeSent;->onPostMessage:J

    iput-wide p6, p0, Lo/onCodeSent;->ICustomTabsCallback:J

    iput p8, p0, Lo/onCodeSent;->asInterface:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/onCodeSent;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()I
    .locals 1

    iget v0, p0, Lo/onCodeSent;->asInterface:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo/getSignInProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/getSignInProvider;

    iget-object v1, p0, Lo/onCodeSent;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1}, Lo/getSignInProvider;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lo/onCodeSent;->onMessageChannelReady:I

    invoke-virtual {p1}, Lo/getSignInProvider;->onMessageChannelReady()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lo/onCodeSent;->onNavigationEvent:I

    invoke-virtual {p1}, Lo/getSignInProvider;->onPostMessage()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lo/onCodeSent;->onPostMessage:J

    invoke-virtual {p1}, Lo/getSignInProvider;->extraCallback()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lo/onCodeSent;->ICustomTabsCallback:J

    invoke-virtual {p1}, Lo/getSignInProvider;->onNavigationEvent()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lo/onCodeSent;->asInterface:I

    invoke-virtual {p1}, Lo/getSignInProvider;->asInterface()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final extraCallback()J
    .locals 2

    iget-wide v0, p0, Lo/onCodeSent;->onPostMessage:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 10

    iget-object v0, p0, Lo/onCodeSent;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lo/onCodeSent;->onMessageChannelReady:I

    iget v2, p0, Lo/onCodeSent;->onNavigationEvent:I

    iget-wide v3, p0, Lo/onCodeSent;->onPostMessage:J

    iget-wide v5, p0, Lo/onCodeSent;->ICustomTabsCallback:J

    const v7, 0xf4243

    xor-int/2addr v0, v7

    mul-int v0, v0, v7

    xor-int/2addr v0, v1

    mul-int v0, v0, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v7

    const/16 v1, 0x20

    ushr-long v8, v3, v1

    xor-long v2, v8, v3

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v7

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v7

    iget v1, p0, Lo/onCodeSent;->asInterface:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/onCodeSent;->onMessageChannelReady:I

    return v0
.end method

.method public final onNavigationEvent()J
    .locals 2

    iget-wide v0, p0, Lo/onCodeSent;->ICustomTabsCallback:J

    return-wide v0
.end method

.method public final onPostMessage()I
    .locals 1

    iget v0, p0, Lo/onCodeSent;->onNavigationEvent:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lo/onCodeSent;->extraCallback:Ljava/lang/String;

    iget v1, p0, Lo/onCodeSent;->onMessageChannelReady:I

    iget v2, p0, Lo/onCodeSent;->onNavigationEvent:I

    iget-wide v3, p0, Lo/onCodeSent;->onPostMessage:J

    iget-wide v5, p0, Lo/onCodeSent;->ICustomTabsCallback:J

    iget v7, p0, Lo/onCodeSent;->asInterface:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit16 v8, v8, 0xb9

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "AssetPackState{name="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalBytesToDownload="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", transferProgressPercentage="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
