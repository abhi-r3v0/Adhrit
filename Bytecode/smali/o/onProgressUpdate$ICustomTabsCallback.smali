.class Lo/onProgressUpdate$ICustomTabsCallback;
.super Lo/validateRelationship;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onProgressUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field onMessageChannelReady:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lo/validateRelationship;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 398
    iget-boolean v0, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-super {p0, p1}, Lo/validateRelationship;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 405
    iget-boolean v0, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-super {p0, p1, p2}, Lo/validateRelationship;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 412
    iget-boolean v0, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 413
    invoke-super {p0, p1, p2, p3, p4}, Lo/validateRelationship;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-super {p0, p1}, Lo/validateRelationship;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lo/onProgressUpdate$ICustomTabsCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-super {p0, p1, p2}, Lo/validateRelationship;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
