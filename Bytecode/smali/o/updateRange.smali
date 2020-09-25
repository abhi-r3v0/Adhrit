.class public final Lo/updateRange;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u001a&\u0010\u0008\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000cH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "PAYMENT_FABRIK_DIALOG_TAG",
        "",
        "SCREEN_TAG",
        "adjustBottom",
        "",
        "Landroid/view/View;",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setVisibility",
        "show",
        "",
        "next",
        "Lkotlin/Function0;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:I

.field public onMessageChannelReady:Landroid/graphics/ColorFilter;

.field public onNavigationEvent:Z

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1022
    iput v0, p0, Lo/updateRange;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 1023
    iput-boolean v1, p0, Lo/updateRange;->onNavigationEvent:Z

    const/4 v1, 0x0

    .line 1024
    iput-object v1, p0, Lo/updateRange;->onMessageChannelReady:Landroid/graphics/ColorFilter;

    .line 1025
    iput v0, p0, Lo/updateRange;->onPostMessage:I

    .line 1026
    iput v0, p0, Lo/updateRange;->extraCallback:I

    return-void
.end method

.method public static final ICustomTabsCallback(Landroid/view/View;ZLo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 646
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 647
    new-instance v0, Lo/updateRange$onNavigationEvent;

    invoke-direct {v0, p0, p2}, Lo/updateRange$onNavigationEvent;-><init>(Landroid/view/View;Lo/getServerTime;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 657
    new-instance v0, Lo/updateRange$ICustomTabsCallback;

    invoke-direct {v0, p0, p2}, Lo/updateRange$ICustomTabsCallback;-><init>(Landroid/view/View;Lo/getServerTime;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1050
    :cond_0
    iget v0, p0, Lo/updateRange;->ICustomTabsCallback:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1051
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1053
    :cond_1
    iget-boolean v0, p0, Lo/updateRange;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    .line 1054
    iget-object v0, p0, Lo/updateRange;->onMessageChannelReady:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1056
    :cond_2
    iget v0, p0, Lo/updateRange;->onPostMessage:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1057
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1059
    :cond_4
    iget v0, p0, Lo/updateRange;->extraCallback:I

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 1060
    :goto_1
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_6
    return-void
.end method
