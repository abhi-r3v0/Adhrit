.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->warmup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

.field final synthetic onPostMessage:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;->onMessageChannelReady:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;->onPostMessage:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$4;->onPostMessage:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    return-void
.end method
