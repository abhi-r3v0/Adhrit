.class public final Lo/onWindowVisibilityChanged;
.super Lo/setOverlayMode;
.source ""


# instance fields
.field private final asBinder:Lo/setCheckable;


# direct methods
.method constructor <init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V
    .locals 3

    .line 21
    invoke-direct {p0, p1, p2}, Lo/setOverlayMode;-><init>(Lo/createCheckedTextView;Lo/setActionBarVisibilityCallback;)V

    .line 24
    new-instance v0, Lo/MediaBrowserCompat$MediaItem$Flags;

    .line 1143
    iget-object p2, p2, Lo/setActionBarVisibilityCallback;->extraCallback:Ljava/util/List;

    const-string v1, "__container"

    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, v1, p2, v2}, Lo/MediaBrowserCompat$MediaItem$Flags;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 25
    new-instance p2, Lo/setCheckable;

    invoke-direct {p2, p1, p0, v0}, Lo/setCheckable;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/MediaBrowserCompat$MediaItem$Flags;)V

    iput-object p2, p0, Lo/onWindowVisibilityChanged;->asBinder:Lo/setCheckable;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lo/setCheckable;->extraCallback(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/onWindowVisibilityChanged;->asBinder:Lo/setCheckable;

    invoke-virtual {v0, p1, p2, p3}, Lo/setCheckable;->onPostMessage(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2, p3}, Lo/setOverlayMode;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 35
    iget-object p2, p0, Lo/onWindowVisibilityChanged;->asBinder:Lo/setCheckable;

    iget-object v0, p0, Lo/setOverlayMode;->onNavigationEvent:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lo/setCheckable;->onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/onWindowVisibilityChanged;->asBinder:Lo/setCheckable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/setCheckable;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V

    return-void
.end method
