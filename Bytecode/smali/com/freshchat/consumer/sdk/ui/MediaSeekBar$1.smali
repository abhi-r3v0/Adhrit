.class Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic hh:Landroid/media/MediaPlayer;

.field final synthetic hi:Landroid/view/View;

.field final synthetic hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;Landroid/media/MediaPlayer;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hh:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hi:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->a(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hh:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hg:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$1;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$1;-><init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->a(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hh:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hh:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->sleep(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;->hj:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->hg:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1$2;-><init>(Lcom/freshchat/consumer/sdk/ui/MediaSeekBar$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
