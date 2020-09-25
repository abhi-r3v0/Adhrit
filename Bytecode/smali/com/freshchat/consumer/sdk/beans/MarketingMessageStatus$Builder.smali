.class public Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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


# virtual methods
.method public build()Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;-><init>()V

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->delivered:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->access$002(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->seen:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->access$102(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I

    iget v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->clicked:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->access$202(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;I)I

    iget-wide v1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->marketingId:J

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;->access$302(Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus;J)J

    return-object v0
.end method

.method public clicked(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->clicked:I

    return-object p0
.end method

.method public delivered(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->delivered:I

    return-object p0
.end method

.method public marketingId(J)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->marketingId:J

    return-object p0
.end method

.method public seen(I)Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/MarketingMessageStatus$Builder;->seen:I

    return-object p0
.end method
