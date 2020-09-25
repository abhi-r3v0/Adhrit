.class final Landroidx/cardview/widget/CardView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaBrowserCompat$MediaBrowserImplBase$4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/cardview/widget/CardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/cardview/widget/CardView;

.field private onNavigationEvent:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 0

    .line 447
    iput-object p1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 485
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final ICustomTabsCallback(IIII)V
    .locals 2

    .line 468
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget-object v1, v0, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget-object v1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget-object v1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget-object v1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget-object v1, v1, Landroidx/cardview/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->access$001(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(II)V
    .locals 1

    .line 475
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget v0, v0, Landroidx/cardview/widget/CardView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 476
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-static {v0, p1}, Landroidx/cardview/widget/CardView;->access$101(Landroidx/cardview/widget/CardView;I)V

    .line 478
    :cond_0
    iget-object p1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    iget p1, p1, Landroidx/cardview/widget/CardView;->mUserSetMinHeight:I

    if-le p2, p1, :cond_1

    .line 479
    iget-object p1, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-static {p1, p2}, Landroidx/cardview/widget/CardView;->access$201(Landroidx/cardview/widget/CardView;I)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 463
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 452
    iput-object p1, p0, Landroidx/cardview/widget/CardView$4;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 453
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onPostMessage()Landroid/view/View;
    .locals 1

    .line 490
    iget-object v0, p0, Landroidx/cardview/widget/CardView$4;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    return-object v0
.end method
