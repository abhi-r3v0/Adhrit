.class public Lcom/freshchat/consumer/sdk/j/ba;
.super Ljava/lang/Object;


# direct methods
.method public static fX()V
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/af;->fW()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.squareup.picasso.Picasso"

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ao;->ay(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "with"

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ao;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported version of Picasso found. Please create and set custom Image loader using Freshchat.setImageLoader()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public static fY()Z
    .locals 1

    const-string v0, "com.squareup.picasso.Picasso"

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ao;->ay(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static fZ()Z
    .locals 1

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ba;->fY()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
