.class public final Lo/onLeftHiddenState;
.super Lo/getUnmodifiedPayloads;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000cJ \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/ui/neu/internals/PitHelperCompat;",
        "Lcom/dreamplug/ui/neu/internals/PitHelperInterface;",
        "baseColor",
        "",
        "cornerRadius",
        "",
        "pressedDepth",
        "paintHelper",
        "Lcom/dreamplug/ui/neu/internals/PaintHelper;",
        "drawBackground",
        "",
        "drawShadows",
        "(IFFLcom/dreamplug/ui/neu/internals/PaintHelper;ZZ)V",
        "getBaseColor",
        "()I",
        "fillBackgroundHelper",
        "Lcom/dreamplug/ui/neu/internals/BlurHelper;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "height",
        "width",
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
.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:I

.field private final onPostMessage:Lo/createPayloadsIfNeeded;


# direct methods
.method public constructor <init>(IFLo/MediaSessionCompat$1$onMessageChannelReady;Z)V
    .locals 7

    const-string v0, "paintHelper"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p3}, Lo/getUnmodifiedPayloads;-><init>(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    iput p1, p0, Lo/onLeftHiddenState;->onNavigationEvent:I

    iput-boolean p4, p0, Lo/onLeftHiddenState;->onMessageChannelReady:Z

    .line 15
    new-instance p4, Lo/createPayloadsIfNeeded;

    const-wide v0, 0x3faeb851eb851eb8L    # 0.06

    const/4 v2, 0x0

    .line 1024
    invoke-static {p1, v0, v1, v2}, Lo/extraCallback;->onPostMessage(IDLjava/lang/Double;)I

    move-result v4

    const/4 v2, 0x0

    const/16 v6, 0x8

    move-object v1, p4

    move v3, p2

    move-object v5, p3

    .line 15
    invoke-direct/range {v1 .. v6}, Lo/createPayloadsIfNeeded;-><init>(FFILo/MediaSessionCompat$1$onMessageChannelReady;I)V

    iput-object p4, p0, Lo/onLeftHiddenState;->onPostMessage:Lo/createPayloadsIfNeeded;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/graphics/Canvas;II)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-boolean v0, p0, Lo/onLeftHiddenState;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lo/onLeftHiddenState;->onPostMessage:Lo/createPayloadsIfNeeded;

    invoke-virtual {v0, p1, p2, p3}, Lo/isAttachedToTransitionOverlay;->ICustomTabsCallback(Landroid/graphics/Canvas;II)V

    :cond_0
    return-void
.end method
