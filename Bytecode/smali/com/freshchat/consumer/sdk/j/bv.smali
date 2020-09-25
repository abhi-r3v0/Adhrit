.class final Lcom/freshchat/consumer/sdk/j/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field final synthetic fk:J

.field final synthetic iI:Landroid/content/Context;

.field final synthetic lS:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;J[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bv;->iI:Landroid/content/Context;

    iput-wide p2, p0, Lcom/freshchat/consumer/sdk/j/bv;->fk:J

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/j/bv;->lS:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 5

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bv;->iI:Landroid/content/Context;

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/j/bv;->fk:J

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

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bv;->iI:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Channel;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/freshchat/consumer/sdk/j/bg;->n(Landroid/content/Context;J)Lcom/freshchat/consumer/sdk/beans/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Conversation;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bv;->lS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->f([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bv;->lS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
