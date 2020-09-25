.class public Lcom/freshchat/consumer/sdk/service/e/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private channelId:J

.field private conversationId:J

.field private readUpto:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/service/e/x;->channelId:J

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/service/e/x;->conversationId:J

    return-void
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/service/e/x;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/service/e/x;->conversationId:J

    return-wide v0
.end method

.method public getReadUpto()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/service/e/x;->readUpto:J

    return-wide v0
.end method
