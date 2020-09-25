.class public Lcom/facebook/animated/gif/GifFrame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPerformanceTracker;


# instance fields
.field private mNativeContext:J
    .annotation build Lo/getGroupName;
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/facebook/animated/gif/GifFrame;->mNativeContext:J

    return-void
.end method

.method private native nativeFinalize()V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetDurationMs()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeGetTransparentPixelColor()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeHasTransparency()Z
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method private native nativeRenderFrame(IILandroid/graphics/Bitmap;)V
    .annotation build Lo/getGroupName;
    .end annotation
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeDispose()V

    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeGetXOffset()I

    move-result v0

    return v0
.end method

.method public final extraCallback(IILandroid/graphics/Bitmap;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/animated/gif/GifFrame;->nativeRenderFrame(IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeFinalize()V

    return-void
.end method

.method native nativeDispose()V
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method native nativeGetDisposalMode()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method native nativeGetHeight()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method native nativeGetWidth()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method native nativeGetXOffset()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method native nativeGetYOffset()I
    .annotation build Lo/getGroupName;
    .end annotation
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeGetYOffset()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeGetHeight()I

    move-result v0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/facebook/animated/gif/GifFrame;->nativeGetWidth()I

    move-result v0

    return v0
.end method
