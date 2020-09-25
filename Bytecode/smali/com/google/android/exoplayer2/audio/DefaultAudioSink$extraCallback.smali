.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:J

.field private final onMessageChannelReady:Lo/r;

.field private final onPostMessage:J


# direct methods
.method private constructor <init>(Lo/r;JJ)V
    .locals 0

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onMessageChannelReady:Lo/r;

    .line 1253
    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->extraCallback:J

    .line 1254
    iput-wide p4, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onPostMessage:J

    return-void
.end method

.method synthetic constructor <init>(Lo/r;JJLcom/google/android/exoplayer2/audio/DefaultAudioSink$2;)V
    .locals 0

    .line 1244
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;-><init>(Lo/r;JJ)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)J
    .locals 2

    .line 1244
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->extraCallback:J

    return-wide v0
.end method

.method static synthetic extraCallback(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)Lo/r;
    .locals 0

    .line 1244
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onMessageChannelReady:Lo/r;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;)J
    .locals 2

    .line 1244
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$extraCallback;->onPostMessage:J

    return-wide v0
.end method
