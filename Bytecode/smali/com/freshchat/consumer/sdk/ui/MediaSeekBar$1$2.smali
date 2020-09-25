.class Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hi:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;->hk:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v1, v1, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hg:Landroid/app/Activity;

    sget v2, Lcom/freshchat/consumer/sdk/R$attr;->freshchatPlayIcon:I

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
