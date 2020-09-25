.class public Lcom/freshchat/consumer/sdk/k/b;
.super Lcom/freshchat/consumer/sdk/k/a;


# instance fields
.field private lt:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field private lu:Lcom/freshchat/consumer/sdk/j/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public gq()Lcom/freshchat/consumer/sdk/j/c/a;
    .locals 4

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/b;->L(Landroid/content/Context;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lp:Lcom/freshchat/consumer/sdk/j/c/a;

    return-object v0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lr:Lcom/freshchat/consumer/sdk/j/c/a;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freshchat/consumer/sdk/j/c/a;->lq:Lcom/freshchat/consumer/sdk/j/c/a;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->bz(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/o;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/JwtTokenStatus;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/o;->by(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/b;->lt:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/o;->b(Lcom/freshchat/consumer/sdk/JwtTokenStatus;)Lcom/freshchat/consumer/sdk/j/c/a;

    move-result-object v1

    goto :goto_1

    :cond_3
    if-ne v1, v0, :cond_5

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/b;->lu:Lcom/freshchat/consumer/sdk/j/c/a;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/b;->lt:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/o;->a(Lcom/freshchat/consumer/sdk/JwtTokenStatus;Lcom/freshchat/consumer/sdk/JwtTokenStatus;)Lcom/freshchat/consumer/sdk/j/c/a;

    move-result-object v1

    :goto_1
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/b;->lt:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token state - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FRESHCHAT_JWT"

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Updated action - "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/k/b;->lu:Lcom/freshchat/consumer/sdk/j/c/a;

    return-object v1
.end method
