.class public final Lo/setHasNonEmbeddedTabs;
.super Lo/setOverlayMode;
.source ""


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lo/setOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
