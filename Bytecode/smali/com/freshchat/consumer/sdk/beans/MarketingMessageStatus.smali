.class public Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
    }
.end annotation


# instance fields
.field private clicked:I

.field private delivered:I

.field private marketingId:J

.field private seen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->delivered:I

    return p1
.end method

.method static synthetic access$102(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->seen:I

    return p1
.end method

.method static synthetic access$202(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->clicked:I

    return p1
.end method

.method static synthetic access$302(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;J)J
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    return-wide p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    iget-wide v4, p1, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getClicked()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->clicked:I

    return v0
.end method

.method public getDelivered()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->delivered:I

    return v0
.end method

.method public getMarketingId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    return-wide v0
.end method

.method public getSeen()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->seen:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public setClicked(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->clicked:I

    return-void
.end method

.method public setDelivered(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->delivered:I

    return-void
.end method

.method public setMarketingId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    return-void
.end method

.method public setSeen(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->seen:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarketingMessageStatus [delivered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->delivered:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->seen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clicked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->clicked:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", marketingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->marketingId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
