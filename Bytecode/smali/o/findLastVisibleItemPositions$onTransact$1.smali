.class public final Lo/findLastVisibleItemPositions$onTransact$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findLastVisibleItemPositions$onTransact;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/widget/BottomSheetFragment$slideUp$1$1",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;",
        "onSlide",
        "",
        "bottomSheet",
        "Landroid/view/View;",
        "slideOffset",
        "",
        "onStateChanged",
        "newState",
        "",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/findLastVisibleItemPositions$onTransact;


# direct methods
.method constructor <init>(Lo/findLastVisibleItemPositions$onTransact;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/view/View;F)V
    .locals 4

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p1, v0

    .line 131
    :goto_0
    iget-object p2, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p2, p2, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    .line 1029
    iget-object p2, p2, Lo/findLastVisibleItemPositions;->ICustomTabsCallback$Stub:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    if-eqz p2, :cond_1

    mul-float v2, p1, v1

    .line 131
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 132
    :cond_1
    iget-object p2, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p2, p2, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    .line 2028
    iget-object p2, p2, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_2

    mul-float v1, v1, p1

    .line 132
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 133
    :cond_2
    iget-object p2, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p2, p2, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    .line 3028
    iget-object p2, p2, Lo/findLastVisibleItemPositions;->onTransact:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_3

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Resources.getSystem()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42c80000    # 100.0f

    .line 4010
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sub-float/2addr v0, p1

    mul-float v1, v1, v0

    neg-float p1, v1

    .line 133
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method public final onPostMessage(Landroid/view/View;I)V
    .locals 1

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 138
    iget-object p1, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p1, p1, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->g_()V

    .line 139
    iget-object p1, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p1, p1, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    invoke-static {p1}, Lo/findLastVisibleItemPositions;->ICustomTabsCallback(Lo/findLastVisibleItemPositions;)Lo/getServerTime;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 143
    iget-object p1, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p1, p1, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    const/4 p2, 0x0

    .line 5114
    iput-boolean p2, p1, Lo/findLastVisibleItemPositions;->asBinder:Z

    .line 144
    iget-object p1, p0, Lo/findLastVisibleItemPositions$onTransact$1;->extraCallback:Lo/findLastVisibleItemPositions$onTransact;

    iget-object p1, p1, Lo/findLastVisibleItemPositions$onTransact;->ICustomTabsCallback:Lo/findLastVisibleItemPositions;

    invoke-virtual {p1}, Lo/findLastVisibleItemPositions;->onPostMessage()V

    :cond_1
    return-void
.end method
