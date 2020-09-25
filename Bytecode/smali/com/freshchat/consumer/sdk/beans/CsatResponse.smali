.class public Lcom/freshchat/consumer/sdk/beans/CsatResponse;
.super Ljava/lang/Object;


# instance fields
.field private conversationId:J

.field private csatId:J

.field private issueResolved:Z

.field private response:Ljava/lang/String;

.field private stars:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->conversationId:J

    return-wide v0
.end method

.method public getCsatId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->csatId:J

    return-wide v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getStars()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->stars:I

    return v0
.end method

.method public issueResolved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->issueResolved:Z

    return v0
.end method

.method public setConversationId(J)Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->conversationId:J

    return-object p0
.end method

.method public setCsatId(J)Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->csatId:J

    return-object p0
.end method

.method public setIssueResolved(Z)Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->issueResolved:Z

    return-object p0
.end method

.method public setResponse(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->response:Ljava/lang/String;

    return-object p0
.end method

.method public setStars(I)Lcom/freshchat/consumer/sdk/beans/CsatResponse;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/beans/CsatResponse;->stars:I

    return-object p0
.end method
