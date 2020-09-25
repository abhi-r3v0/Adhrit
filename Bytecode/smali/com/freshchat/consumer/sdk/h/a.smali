.class public Lcom/freshchat/consumer/sdk/h/a;
.super Ljava/lang/Object;


# instance fields
.field private channelId:J

.field private conversationId:J

.field private ej:Ljava/lang/String;

.field private fb:I

.field private fc:Ljava/lang/String;

.field private fd:Ljava/lang/String;

.field private fe:Z

.field private ff:Ljava/lang/String;

.field private fg:Ljava/lang/String;

.field private fh:Ljava/lang/String;

.field private marketingId:J

.field private timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "notif_type"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->e(Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->o(I)V

    const-string v0, "body"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->ai(Ljava/lang/String;)V

    const-string v0, "img_url"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->aj(Ljava/lang/String;)V

    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->d(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/h/a;->setTimestamp(J)V

    const-string v0, "ephemeral"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->c(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->l(Z)V

    const-string v0, "channel_id"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->d(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/h/a;->setChannelId(J)V

    const-string v0, "conv_id"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->d(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/h/a;->setConversationId(J)V

    const-string v0, "marketing_id"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->d(Landroid/content/Intent;Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/freshchat/consumer/sdk/h/a;->setMarketingId(J)V

    const-string v0, "msg_alias"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->ak(Ljava/lang/String;)V

    const-string/jumbo v0, "target_user_alias"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->al(Ljava/lang/String;)V

    const-string/jumbo v0, "user_name"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/h/a;->am(Ljava/lang/String;)V

    const-string v0, "link_uri_1"

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ag;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/h/a;->an(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ai(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fc:Ljava/lang/String;

    return-void
.end method

.method public aj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fd:Ljava/lang/String;

    return-void
.end method

.method public ak(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->ej:Ljava/lang/String;

    return-void
.end method

.method public al(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->ff:Ljava/lang/String;

    return-void
.end method

.method public am(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fg:Ljava/lang/String;

    return-void
.end method

.method public an(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fh:Ljava/lang/String;

    return-void
.end method

.method public dl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/a;->fd:Ljava/lang/String;

    return-object v0
.end method

.method public dm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/h/a;->fe:Z

    return v0
.end method

.method public dn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/a;->ej:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/a;->ff:Ljava/lang/String;

    return-object v0
.end method

.method public dp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/a;->fh:Ljava/lang/String;

    return-object v0
.end method

.method public fK()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/h/a;->fb:I

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/h/a;->fc:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/h/a;->channelId:J

    return-wide v0
.end method

.method public getConversationId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/h/a;->conversationId:J

    return-wide v0
.end method

.method public getMarketingId()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/h/a;->marketingId:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/h/a;->timestamp:J

    return-wide v0
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fe:Z

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/h/a;->fb:I

    return-void
.end method

.method public setChannelId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/h/a;->channelId:J

    return-void
.end method

.method public setConversationId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/h/a;->conversationId:J

    return-void
.end method

.method public setMarketingId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/h/a;->marketingId:J

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/h/a;->timestamp:J

    return-void
.end method
