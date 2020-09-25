.class public Lcom/freshchat/consumer/sdk/i/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static volatile gY:Landroid/media/MediaPlayer;


# instance fields
.field private final cL:Lcom/freshchat/consumer/sdk/b/e;

.field private final context:Landroid/content/Context;

.field private final gZ:Landroid/telephony/TelephonyManager;

.field private final gz:Lcom/freshchat/consumer/sdk/beans/Message;

.field private final ha:Landroid/app/Activity;

.field private final hb:Landroid/view/View;

.field private final hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

.field hd:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/i/c;)Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/i/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/i/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    return-object p0
.end method

.method public static final dU()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private dV()V
    .locals 2

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    :cond_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized dW()V
    .locals 3

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-void

    :catch_2
    move-exception v1

    :try_start_6
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-void

    :goto_0
    :try_start_7
    sget-object v2, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_8
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private dX()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/i/c$4;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/i/c$4;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dY()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v1, Lcom/freshchat/consumer/sdk/i/c$5;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/i/c$5;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private r(I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/i/b;->aq(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dX()V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Integer;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/i/c;->gZ:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/i/c;->gZ:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 12

    const-class v0, Lcom/freshchat/consumer/sdk/i/c;

    const/4 v1, 0x0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dV()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Media init "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->hd:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/freshchat/consumer/sdk/i/c$1;

    invoke-direct {v6, p0}, Lcom/freshchat/consumer/sdk/i/c$1;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {v5, v6}, Lcom/freshchat/consumer/sdk/j/x;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    sget-object v7, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Audio file received for playing "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    const-string v8, "Does the media player\'s file exist ? "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Pre-file check "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v7, v2

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/i/b;->aq(Ljava/lang/String;)I

    move-result v2

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dX()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/freshchat/consumer/sdk/i/c;->r(I)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Post-file check "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v2, v7

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/i/c;->dY()V

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v6, p0, Lcom/freshchat/consumer/sdk/i/c;->cL:Lcom/freshchat/consumer/sdk/b/e;

    invoke-virtual {v6}, Lcom/freshchat/consumer/sdk/b/e;->bo()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    sget-object v9, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->reset()V

    sget-object v9, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v6, Lcom/freshchat/consumer/sdk/i/c$2;

    invoke-direct {v6, p0}, Lcom/freshchat/consumer/sdk/i/c$2;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/i/c;->context:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v1, v7, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    sget-object v5, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "File-play "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v2

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x1

    :try_start_6
    sget-object v2, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Message;->getAlias()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    sget-object v4, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3, v4}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->a(Landroid/view/View;Landroid/media/MediaPlayer;)V

    :cond_2
    :goto_2
    sget-object v2, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v0, [Ljava/lang/Integer;

    sget-object v3, Lcom/freshchat/consumer/sdk/i/c;->gY:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v2}, Lcom/freshchat/consumer/sdk/i/c;->a([Ljava/lang/Integer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_7
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    :cond_3
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/i/c;->a([Ljava/lang/Integer;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v2, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v3

    sget-object v4, Lcom/freshchat/consumer/sdk/i/c;->TAG:Ljava/lang/String;

    const-string v5, "Was audio file deleted ? "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    monitor-exit v0

    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_c
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v2, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    return-void

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_4
    :try_start_f
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->hb:Landroid/view/View;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->hc:Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/ui/MediaSeekBar;->dZ()V

    sput-object v1, Lcom/freshchat/consumer/sdk/j/b/c;->kq:Ljava/lang/String;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    new-instance v3, Lcom/freshchat/consumer/sdk/i/c$3;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/i/c$3;-><init>(Lcom/freshchat/consumer/sdk/i/c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0

    :catchall_2
    move-exception v2

    monitor-exit v0

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_10
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_5
    :try_start_12
    iget-object v2, p0, Lcom/freshchat/consumer/sdk/i/c;->ha:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    throw v0
.end method
