.class Lcom/freshchat/consumer/sdk/i/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic he:Lcom/freshchat/consumer/sdk/i/c;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/i/c;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/i/c$4;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c$4;->he:Lcom/freshchat/consumer/sdk/i/c;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/i/c;->a(Lcom/freshchat/consumer/sdk/i/c;)Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
