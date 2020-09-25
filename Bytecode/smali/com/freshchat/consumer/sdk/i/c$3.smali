.class Lcom/freshchat/consumer/sdk/i/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic he:Lcom/freshchat/consumer/sdk/i/c;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/c$3;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c$3;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/i/c;->c(Lcom/freshchat/consumer/sdk/i/c;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/i/c$3;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/i/c;->b(Lcom/freshchat/consumer/sdk/i/c;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatPlayIcon:I

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c$3;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/i/c;->a(Lcom/freshchat/consumer/sdk/i/c;)Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    return-void
.end method
