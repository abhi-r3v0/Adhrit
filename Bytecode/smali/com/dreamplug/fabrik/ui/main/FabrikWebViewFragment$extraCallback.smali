.class final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Landroid/view/WindowInsets;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "insets",
        "Landroid/view/WindowInsets;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 93
    check-cast p1, Landroid/view/WindowInsets;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1164
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1165
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1166
    :goto_1
    iget-object v3, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {v3, v4}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/safeSizeOf;

    const-string/jumbo v4, "webView"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v3, :cond_5

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1167
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1168
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1169
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {v2, v6}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/safeSizeOf;

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->fragment_container:I

    invoke-virtual {v2, v4}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentContainerView;

    const-string v4, "fragment_container"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1171
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->tryAgain:I

    invoke-virtual {v2, v3}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/saveOldPosition;

    const-string/jumbo v3, "tryAgain"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->tryAgain:I

    invoke-virtual {v4, v6}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/saveOldPosition;

    invoke-static {v4, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    if-eqz p1, :cond_2

    .line 1172
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    :cond_2
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1171
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string/jumbo v0, "videoFrame"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1175
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1176
    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$extraCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->videoFrame:I

    invoke-virtual {v1, v2}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 1174
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1171
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1166
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
