.class final Landroidx/appcompat/widget/ActionMenuView$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AudioAttributesImplBaseParcelizer$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 0

    .line 773
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V
    .locals 1

    .line 784
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->mMenuBuilderCallback:Lo/AudioAttributesImplBaseParcelizer$extraCallback;

    invoke-interface {v0, p1}, Lo/AudioAttributesImplBaseParcelizer$extraCallback;->extraCallback(Lo/AudioAttributesImplBaseParcelizer;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 0

    .line 778
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$onPostMessage;->ICustomTabsCallback:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->mOnMenuItemClickListener:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    .line 779
    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
