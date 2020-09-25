.class final Landroidx/coordinatorlayout/widget/CoordinatorLayout$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ArrayCreatingInputMerger$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNavigationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 3312
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$4;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 4

    .line 3316
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$4;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3384
    iget-object v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    invoke-static {v0, p2}, Lo/isThumbUp;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3385
    iput-object p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->extraCallback:Lo/getVolumeAttributes;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3386
    invoke-virtual {p2}, Lo/getVolumeAttributes;->extraCallback()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback:Z

    .line 3387
    iget-boolean v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->ICustomTabsCallback:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3854
    invoke-virtual {p2}, Lo/getVolumeAttributes;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3858
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 3859
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3860
    invoke-static {v2}, Lo/unregisterCallbackListener;->extraCommand(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3861
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;

    .line 3952
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$onPostMessage;->onMessageChannelReady:Landroidx/coordinatorlayout/widget/CoordinatorLayout$onNavigationEvent;

    if-eqz v2, :cond_2

    .line 3867
    invoke-virtual {p2}, Lo/getVolumeAttributes;->onMessageChannelReady()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3391
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-object p2
.end method
