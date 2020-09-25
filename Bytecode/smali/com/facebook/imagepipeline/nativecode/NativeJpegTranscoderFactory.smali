.class public Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/handleDeepLinkCallback;


# annotations
.annotation build Lo/getGroupName;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:I

.field private final onNavigationEvent:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0
    .annotation build Lo/getGroupName;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->extraCallback:I

    .line 30
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->onNavigationEvent:Z

    .line 31
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public createImageTranscoder(Lo/setProgress;Z)Lo/AppsFlyerLibCore;
    .locals 3
    .annotation build Lo/getGroupName;
    .end annotation

    .line 38
    sget-object v0, Lo/getFrame;->ICustomTabsCallback:Lo/setProgress;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_0
    new-instance p1, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;

    iget v0, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->extraCallback:I

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->onNavigationEvent:Z

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoderFactory;->ICustomTabsCallback:Z

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/facebook/imagepipeline/nativecode/NativeJpegTranscoder;-><init>(ZIZZ)V

    return-object p1
.end method
