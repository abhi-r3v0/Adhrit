.class Lcom/freshchat/consumer/sdk/j/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ht:Lcom/freshchat/consumer/sdk/j/h;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/h;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/freshchat/consumer/sdk/j/ax;->b(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h$a;->M()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/h;->c(Lcom/freshchat/consumer/sdk/j/h;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x168

    if-le v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v4}, Lcom/freshchat/consumer/sdk/j/h;->eh()V

    :cond_2
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v4

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/n;->s(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/freshchat/consumer/sdk/j/ax;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/h;->d(Lcom/freshchat/consumer/sdk/j/h;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/freshchat/consumer/sdk/j/ax;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v0, v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/freshchat/consumer/sdk/j/ax;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_1
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/j/ax;->an()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h$1;->ht:Lcom/freshchat/consumer/sdk/j/h;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/h;->a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;

    move-result-object v0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/j/ax;->ao()V

    return-void
.end method
