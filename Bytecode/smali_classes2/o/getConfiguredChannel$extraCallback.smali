.class public final Lo/getConfiguredChannel$extraCallback;
.super Lo/getConfiguredChannel$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getConfiguredChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getConfiguredChannel$onMessageChannelReady<",
        "Lo/getConfiguredChannel$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 411
    invoke-direct {p0}, Lo/getConfiguredChannel$onMessageChannelReady;-><init>()V

    .line 412
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/getConfiguredChannel;->postMessage:Z

    return-void
.end method


# virtual methods
.method protected final bridge synthetic onNavigationEvent()Lo/getConfiguredChannel$onMessageChannelReady;
    .locals 0

    return-object p0
.end method

.method final synthetic onNavigationEvent(Landroid/content/res/TypedArray;)Lo/getConfiguredChannel$onMessageChannelReady;
    .locals 4

    .line 1429
    invoke-super {p0, p1}, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent(Landroid/content/res/TypedArray;)Lo/getConfiguredChannel$onMessageChannelReady;

    .line 1430
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_base_color:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    .line 1432
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 2423
    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget-object v2, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v2, v2, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    const v3, 0xffffff

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    iput v0, v1, Lo/getConfiguredChannel;->ICustomTabsCallback:I

    .line 1434
    :cond_0
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1435
    sget v0, Lo/Ɩ$extraCallback;->ShimmerFrameLayout_shimmer_highlight_color:I

    iget-object v1, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iget v1, v1, Lo/getConfiguredChannel;->onMessageChannelReady:I

    .line 1436
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 3417
    iget-object v0, p0, Lo/getConfiguredChannel$onMessageChannelReady;->onNavigationEvent:Lo/getConfiguredChannel;

    iput p1, v0, Lo/getConfiguredChannel;->onMessageChannelReady:I

    :cond_1
    return-object p0
.end method
