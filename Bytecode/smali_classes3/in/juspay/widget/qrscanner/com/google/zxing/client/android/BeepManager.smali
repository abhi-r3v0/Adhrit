.class public final Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->c:Z

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->d:Z

    const/4 v0, 0x3

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final isBeepEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->c:Z

    return v0
.end method

.method public final isVibrateEnabled()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->d:Z

    return v0
.end method

.method public final playBeepSound()Landroid/media/MediaPlayer;
    .locals 8

    .line 93
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    const/4 v0, 0x3

    .line 94
    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 95
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$1;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$1;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;)V

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 102
    new-instance v0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$2;

    invoke-direct {v0, p0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager$2;-><init>(Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;)V

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 113
    :try_start_0
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lin/juspay/widget/qrscanner/R$raw;->zxing_beep:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    const v0, 0x3dcccccd    # 0.1f

    .line 119
    invoke-virtual {v6, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 120
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 121
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    return-object v6

    :catchall_0
    move-exception v0

    .line 117
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized playBeepSoundAndVibrate()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->c:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->playBeepSound()Landroid/media/MediaPlayer;

    .line 85
    :cond_0
    iget-boolean v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->d:Z

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->b:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setBeepEnabled(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->c:Z

    return-void
.end method

.method public final setVibrateEnabled(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lin/juspay/widget/qrscanner/com/google/zxing/client/android/BeepManager;->d:Z

    return-void
.end method
