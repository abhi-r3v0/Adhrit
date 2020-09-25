.class public Lcom/freshchat/consumer/sdk/b/j;
.super Ljava/lang/Object;


# instance fields
.field private final cL:Lcom/freshchat/consumer/sdk/b/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/j;->cL:Lcom/freshchat/consumer/sdk/b/e;

    return-void
.end method


# virtual methods
.method public P(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/j;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bL()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/freshchat/consumer/sdk/service/e/n$a;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/j;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bL()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FRESHCHAT"

    const-string v1, "Exception occured"

    invoke-static {p2, v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/b/j;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/b/e;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bj(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/j;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->bL()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/n$a;->gw:Lcom/freshchat/consumer/sdk/service/e/n$a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "FRESHCHAT"

    const-string v2, "Exception occured"

    invoke-static {v0, v2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v1
.end method
