.class public final Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final onNavigationEvent:I

.field private final onPostMessage:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onNavigationEvent:I

    .line 182
    iput-wide p2, p0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onPostMessage:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/upstream/Loader$2;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;-><init>(IJ)V

    return-void
.end method

.method static synthetic extraCallback(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)I
    .locals 0

    .line 175
    iget p0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onNavigationEvent:I

    return p0
.end method

.method static synthetic onNavigationEvent(Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;)J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onPostMessage:J

    return-wide v0
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 2

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$onPostMessage;->onNavigationEvent:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
