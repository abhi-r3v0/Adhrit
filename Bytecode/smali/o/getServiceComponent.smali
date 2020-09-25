.class public abstract Lo/getServiceComponent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/sendCustomAction;
.implements Lo/getSessionToken;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field asBinder:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static onMessageChannelReady(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x0

    .line 147
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 148
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 149
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    .line 151
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    :cond_0
    if-nez p1, :cond_1

    .line 158
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 161
    :cond_1
    invoke-interface {p0, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p3, :cond_2

    return p3

    :cond_2
    if-le v8, v5, :cond_3

    move v5, v8

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method protected static onNavigationEvent(Lo/AudioAttributesImplBaseParcelizer;)Z
    .locals 5

    .line 203
    invoke-virtual {p0}, Lo/AudioAttributesImplBaseParcelizer;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Lo/AudioAttributesImplBaseParcelizer;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 207
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 0

    return-void
.end method

.method public abstract ICustomTabsCallback(Landroid/view/View;)V
.end method

.method public abstract extraCallback(I)V
.end method

.method public final extraCallback(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    .line 1184
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_0

    .line 1185
    move-object p2, p1

    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lo/disconnect;

    goto :goto_0

    .line 1187
    :cond_0
    move-object p2, p1

    check-cast p2, Lo/disconnect;

    .line 128
    :goto_0
    iget-object p2, p2, Lo/disconnect;->extraCallback:Lo/AudioAttributesImplBaseParcelizer;

    .line 129
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 131
    invoke-virtual {p0}, Lo/getServiceComponent;->onMessageChannelReady()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    const/4 p3, 0x4

    .line 128
    :goto_1
    invoke-virtual {p2, p1, p0, p3}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage(Landroid/view/MenuItem;Lo/getSessionToken;I)Z

    return-void
.end method

.method public abstract onMessageChannelReady(I)V
.end method

.method public abstract onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;)V
.end method

.method public abstract onMessageChannelReady(Z)V
.end method

.method protected onMessageChannelReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract onNavigationEvent(I)V
.end method

.method public abstract onNavigationEvent(Z)V
.end method

.method public abstract onPostMessage(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method
