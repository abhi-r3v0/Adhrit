.class public final Lo/clearTmpDetachFlag;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0012\u0010\u0019\u001a\u00020\u00122\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/DividerDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "drawShadows",
        "",
        "colorArray",
        "",
        "(Z[I)V",
        "getColorArray",
        "()[I",
        "setColorArray",
        "([I)V",
        "getDrawShadows",
        "()Z",
        "shadow",
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "shape",
        "Lcom/dreamplug/ui/neu/internals/LinearBlurGradientHelper;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private onMessageChannelReady:[I

.field private final onNavigationEvent:Lo/createPayloadsIfNeeded;

.field private final onPostMessage:Lo/addFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/clearTmpDetachFlag;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lo/clearTmpDetachFlag;-><init>(Z[I)V

    return-void
.end method

.method public constructor <init>(Z[I)V
    .locals 7

    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean p1, p0, Lo/clearTmpDetachFlag;->ICustomTabsCallback:Z

    iput-object p2, p0, Lo/clearTmpDetachFlag;->onMessageChannelReady:[I

    .line 15
    new-instance p1, Lo/addFlags;

    invoke-direct {p1}, Lo/addFlags;-><init>()V

    iput-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    .line 16
    new-instance p1, Lo/createPayloadsIfNeeded;

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "Resources.getSystem()"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v6, 0x1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 2010
    invoke-static {v6, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x60000000

    const/4 v4, 0x0

    const/16 v5, 0x18

    move-object v0, p1

    .line 16
    invoke-direct/range {v0 .. v5}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object p1, p0, Lo/clearTmpDetachFlag;->onNavigationEvent:Lo/createPayloadsIfNeeded;

    .line 19
    sget-object p1, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-virtual {p1}, Lo/clearOldPosition;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onMessageChannelReady:[I

    const/4 p2, 0x2

    if-eqz p1, :cond_3

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    array-length p1, p1

    if-le p1, v6, :cond_3

    .line 21
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    new-array v0, p2, [I

    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lo/clearTmpDetachFlag;->onMessageChannelReady:[I

    if-nez v2, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    aget v2, v2, v6

    aput v2, v0, v1

    .line 23
    iget-object v1, p0, Lo/clearTmpDetachFlag;->onMessageChannelReady:[I

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    aget v1, v1, v6

    aput v1, v0, v6

    .line 2015
    iput-object v0, p1, Lo/addFlags;->onMessageChannelReady:[I

    goto :goto_0

    .line 26
    :cond_3
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    new-array v0, p2, [I

    fill-array-data v0, :array_0

    .line 3015
    iput-object v0, p1, Lo/addFlags;->onMessageChannelReady:[I

    .line 31
    :goto_0
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    new-array p2, p2, [F

    fill-array-data p2, :array_1

    .line 4014
    iput-object p2, p1, Lo/addFlags;->extraCallback:[F

    return-void

    .line 33
    :cond_4
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onMessageChannelReady:[I

    const/4 p2, 0x3

    if-eqz p1, :cond_5

    .line 34
    iget-object v0, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    .line 4015
    iput-object p1, v0, Lo/addFlags;->onMessageChannelReady:[I

    goto :goto_1

    .line 36
    :cond_5
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    new-array v0, p2, [I

    fill-array-data v0, :array_2

    .line 5015
    iput-object v0, p1, Lo/addFlags;->onMessageChannelReady:[I

    .line 42
    :goto_1
    iget-object p1, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    new-array p2, p2, [F

    fill-array-data p2, :array_3

    .line 6014
    iput-object p2, p1, Lo/addFlags;->extraCallback:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0xe5e3e3
        -0xe5e3e3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0xdedbda
        -0xd1cdcc
        -0xdedbda
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lo/clearTmpDetachFlag;->onPostMessage:Lo/addFlags;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    .line 48
    sget-object v0, Lo/clearOldPosition;->extraCallback:Lo/clearOldPosition;

    invoke-virtual {v0}, Lo/clearOldPosition;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/clearTmpDetachFlag;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 1010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    :try_start_0
    iget-object v0, p0, Lo/clearTmpDetachFlag;->onNavigationEvent:Lo/createPayloadsIfNeeded;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_0
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
