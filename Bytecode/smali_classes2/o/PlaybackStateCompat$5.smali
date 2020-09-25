.class final Lo/PlaybackStateCompat$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ArrayCreatingInputMerger$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PlaybackStateCompat;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/graphics/Rect;

.field final synthetic onPostMessage:Lo/PlaybackStateCompat;


# direct methods
.method constructor <init>(Lo/PlaybackStateCompat;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lo/PlaybackStateCompat$5;->onPostMessage:Lo/PlaybackStateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompat$5;->onNavigationEvent:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 5

    .line 436
    invoke-static {p1, p2}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onMessageChannelReady()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 449
    :cond_0
    iget-object p2, p0, Lo/PlaybackStateCompat$5;->onNavigationEvent:Landroid/graphics/Rect;

    .line 450
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 451
    invoke-virtual {p1}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 452
    invoke-virtual {p1}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 453
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lo/PlaybackStateCompat$5;->onPostMessage:Lo/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 456
    iget-object v2, p0, Lo/PlaybackStateCompat$5;->onPostMessage:Lo/PlaybackStateCompat;

    .line 457
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lo/unregisterCallbackListener;->onNavigationEvent(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lo/getVolumeAttributes;->onPostMessage()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 462
    invoke-virtual {v2}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 464
    invoke-virtual {v2}, Lo/getVolumeAttributes;->ICustomTabsCallback()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 466
    invoke-virtual {v2}, Lo/getVolumeAttributes;->onNavigationEvent()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Lo/getVolumeAttributes;->ICustomTabsCallback(IIII)Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method
