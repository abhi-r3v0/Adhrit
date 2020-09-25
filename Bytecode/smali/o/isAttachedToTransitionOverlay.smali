.class public abstract Lo/isAttachedToTransitionOverlay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0011\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0001J \u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H&J\u0011\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0001R\u0018\u0010\u0004\u001a\u00020\u0005X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/BaseUiHelper;",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "paintHelper",
        "(Lcom/dreamplug/ui/neu/internals/PaintHelper;)V",
        "alpha",
        "",
        "getAlpha",
        "()I",
        "setAlpha",
        "(I)V",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "getColorFilter",
        "()Landroid/graphics/ColorFilter;",
        "setColorFilter",
        "(Landroid/graphics/ColorFilter;)V",
        "addPaint",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
        "removePaint",
        "uikit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/isAttachedToTransitionOverlay;-><init>(B)V

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .line 6
    new-instance p1, Lo/performClickableSpanAction$onMessageChannelReady;

    invoke-direct {p1}, Lo/performClickableSpanAction$onMessageChannelReady;-><init>()V

    check-cast p1, Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-direct {p0, p1}, Lo/isAttachedToTransitionOverlay;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method

.method public constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V
    .locals 1

    const-string v0, "paintHelper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Landroid/graphics/Canvas;II)V
.end method
