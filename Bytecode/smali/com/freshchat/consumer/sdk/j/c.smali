.class public abstract Lcom/freshchat/consumer/sdk/j/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/freshchat/consumer/sdk/j/z;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hm:Lcom/freshchat/consumer/sdk/j/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private hn:Ljava/lang/Class;

.field private lE:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/z;)Lcom/freshchat/consumer/sdk/j/c;
    .locals 3

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v2, p1, Lcom/freshchat/consumer/sdk/FaqOptions;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/freshchat/consumer/sdk/j/v;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/v;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/freshchat/consumer/sdk/j/m;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/m;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/c;->a(Lcom/freshchat/consumer/sdk/j/z;)V

    invoke-virtual {v0, p0}, Lcom/freshchat/consumer/sdk/j/c;->setContext(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/c;->d([Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A valid Context is required for the view launcher"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private d([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->lE:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;)Lcom/freshchat/consumer/sdk/j/c;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->hn:Ljava/lang/Class;

    return-object p0
.end method

.method public a(Lcom/freshchat/consumer/sdk/j/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->hm:Lcom/freshchat/consumer/sdk/j/z;

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ed()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/c;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->ed()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/c;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->eb()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->lE:[Ljava/lang/String;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->f([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "INPUT_TAGS"

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/c;->lE:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_failed_to_launch_support_section:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT"

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->e(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public abstract ea()V
.end method

.method public abstract eb()Landroid/os/Bundle;
.end method

.method public ec()Lcom/freshchat/consumer/sdk/j/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/c;->hm:Lcom/freshchat/consumer/sdk/j/z;

    return-object v0
.end method

.method public ed()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/c;->hn:Ljava/lang/Class;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/c;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/c;->context:Landroid/content/Context;

    return-void
.end method
