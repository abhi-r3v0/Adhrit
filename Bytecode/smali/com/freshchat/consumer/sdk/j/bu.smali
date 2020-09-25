.class final Lcom/freshchat/consumer/sdk/j/bu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field final synthetic lS:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bu;->lS:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bu;->lS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->f([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bu;->lS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
