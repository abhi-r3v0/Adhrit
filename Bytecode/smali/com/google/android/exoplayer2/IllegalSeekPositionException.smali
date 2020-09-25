.class public final Lcom/google/android/exoplayer2/IllegalSeekPositionException;
.super Ljava/lang/IllegalStateException;
.source ""


# instance fields
.field public final extraCallback:J

.field public final onMessageChannelReady:I

.field public final onPostMessage:Lo/t;


# direct methods
.method public constructor <init>(Lo/t;IJ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->onPostMessage:Lo/t;

    .line 44
    iput p2, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->onMessageChannelReady:I

    .line 45
    iput-wide p3, p0, Lcom/google/android/exoplayer2/IllegalSeekPositionException;->extraCallback:J

    return-void
.end method
