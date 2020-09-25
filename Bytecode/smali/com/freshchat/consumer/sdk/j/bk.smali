.class final Lcom/freshchat/consumer/sdk/j/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field final synthetic fk:J

.field final synthetic iI:Landroid/content/Context;

.field final synthetic lR:J


# direct methods
.method constructor <init>(JLandroid/content/Context;J)V
    .locals 0

    iput-wide p1, p0, Lcom/freshchat/consumer/sdk/j/bk;->lR:J

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/bk;->iI:Landroid/content/Context;

    iput-wide p4, p0, Lcom/freshchat/consumer/sdk/j/bk;->fk:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 4

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/bk;->lR:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bk;->iI:Landroid/content/Context;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/bk;->fk:J

    invoke-static {v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg;->m(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Channel;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getChannelAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v2

    sget-object v3, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
