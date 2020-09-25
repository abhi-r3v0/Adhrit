.class public Lcom/freshchat/consumer/sdk/j/a/f$c;
.super Lcom/freshchat/consumer/sdk/j/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/j/a/a<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic kl:Lcom/freshchat/consumer/sdk/j/a/f;


# direct methods
.method protected constructor <init>(Lcom/freshchat/consumer/sdk/j/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f$c;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->fy()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->ft()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->fs()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->fp()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f$c;->kl:Lcom/freshchat/consumer/sdk/j/a/f;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->fr()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
