.class public final Lo/stopIgnoring;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0012\u0010\u0012\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/drawables/ElevatedDrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "cornerRadius",
        "",
        "baseColor",
        "",
        "(Lcom/dreamplug/ui/neu/internals/PaintHelper;FI)V",
        "backgroundPlatformDrawable",
        "Lcom/dreamplug/ui/neu/internals/ElevatedFlatPlatformHelper;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
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
.field private onNavigationEvent:Lo/applyTrackTint;


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 1

    .line 14
    new-instance v0, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {v0}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast v0, Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 16
    invoke-direct {p0, v0, p1, p2}, Lo/stopIgnoring;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;FI)V

    return-void
.end method

.method private constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;FI)V
    .locals 8

    const-string v0, "paintHelper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    new-instance v0, Lo/applyTrackTint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1a

    move-object v1, v0

    move v2, p3

    move v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lo/applyTrackTint;-><init>(IFFZLo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object v0, p0, Lo/stopIgnoring;->onNavigationEvent:Lo/applyTrackTint;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 23
    iget-object v2, p0, Lo/stopIgnoring;->onNavigationEvent:Lo/applyTrackTint;

    invoke-virtual {v2, p1, v0, v1}, Lo/applyTrackTint;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

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
