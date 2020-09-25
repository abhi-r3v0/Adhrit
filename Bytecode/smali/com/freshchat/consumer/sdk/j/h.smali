.class public Lcom/freshchat/consumer/sdk/j/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/h$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final channelId:J

.field private final context:Landroid/content/Context;

.field private gZ:Landroid/telephony/TelephonyManager;

.field private hp:Lcom/freshchat/consumer/sdk/j/h$a;

.field private final hq:Lcom/freshchat/consumer/sdk/j/ax;

.field private hr:Landroid/media/AudioManager;

.field private hs:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freshchat/consumer/sdk/j/h;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/freshchat/consumer/sdk/j/ax;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    iput-wide p3, p0, Lcom/freshchat/consumer/sdk/j/h;->channelId:J

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/h;)Lcom/freshchat/consumer/sdk/j/ax;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    return-object p0
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/j/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/j/h;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->ep()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/j/h;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method private ej()V
    .locals 2

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/j/h$a;->er()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    return-void
.end method

.method private em()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hr:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hr:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hr:Landroid/media/AudioManager;

    return-object v0
.end method

.method private eo()V
    .locals 4

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->em()Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->em()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    return-void
.end method

.method private ep()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->en()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->en()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private q(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/h$a;->r(Z)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h$a;->eq()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/j/ax;->an()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/j/ax;->ao()V

    :try_start_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->el()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/h$a;->er()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    sget-object v2, Lcom/freshchat/consumer/sdk/j/h;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "stopRecordingInternal() audio file exists = ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] at loc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/h;->ek()Lcom/freshchat/consumer/sdk/j/h$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/j/ax;->a(Lcom/freshchat/consumer/sdk/j/h$a;)V

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->em()Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/j/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/h;->hp:Lcom/freshchat/consumer/sdk/j/h$a;

    return-void
.end method

.method public eh()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/h;->q(Z)V

    return-void
.end method

.method public ei()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/j/h;->q(Z)V

    return-void
.end method

.method public ek()Lcom/freshchat/consumer/sdk/j/h$a;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hp:Lcom/freshchat/consumer/sdk/j/h$a;

    return-object v0
.end method

.method public el()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public en()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->gZ:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->gZ:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->gZ:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public startRecording()V
    .locals 10

    const-string v0, " ms"

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/i/c;->dU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/i/c;->dW()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lcom/freshchat/consumer/sdk/j/h$a;

    invoke-direct {v3, p0}, Lcom/freshchat/consumer/sdk/j/h$a;-><init>(Lcom/freshchat/consumer/sdk/j/h;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/freshchat/consumer/sdk/j/h$a;->setStartTime(J)V

    new-instance v4, Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-direct {v4}, Lcom/freshchat/consumer/sdk/beans/Message;-><init>()V

    iget-wide v5, p0, Lcom/freshchat/consumer/sdk/j/h;->channelId:J

    invoke-virtual {v4, v5, v6}, Lcom/freshchat/consumer/sdk/beans/Message;->setChannelId(J)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/freshchat/consumer/sdk/beans/Message;->setAlias(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/freshchat/consumer/sdk/j/x;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/Message;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/j/h$a;->a(Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/freshchat/consumer/sdk/j/h$a;->r(Z)V

    invoke-virtual {p0, v3}, Lcom/freshchat/consumer/sdk/j/h;->b(Lcom/freshchat/consumer/sdk/j/h$a;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->eo()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/h;->ej()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/h;->hs:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    invoke-interface {v5}, Lcom/freshchat/consumer/sdk/j/ax;->am()V

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/j/h;->hq:Lcom/freshchat/consumer/sdk/j/ax;

    invoke-interface {v5}, Lcom/freshchat/consumer/sdk/j/ax;->ap()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Lcom/freshchat/consumer/sdk/j/h;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Time taken to show progress "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v5, v3

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/freshchat/consumer/sdk/j/h;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Post-recorder "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v3, v1

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/j/h$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/j/h$1;-><init>(Lcom/freshchat/consumer/sdk/j/h;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/h;->context:Landroid/content/Context;

    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->dk:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/j/h;->b(Lcom/freshchat/consumer/sdk/j/h$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-void
.end method
