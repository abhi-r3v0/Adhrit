.class public final Lo/onSetRating;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchUIUtil;


# static fields
.field public static final ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lo/onSetRating;

    invoke-direct {v0}, Lo/onSetRating;-><init>()V

    sput-object v0, Lo/onSetRating;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearView(Landroid/view/View;)V
    .locals 2

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 76
    sget v0, Lo/onPause$onNavigationEvent;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 77
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 78
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    .line 80
    :cond_0
    sget v0, Lo/onPause$onNavigationEvent;->item_touch_helper_previous_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 4

    .line 36
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p1, p6, :cond_2

    if-eqz p7, :cond_2

    .line 38
    sget p1, Lo/onPause$onNavigationEvent;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 40
    invoke-static {p3}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/high16 p6, 0x3f800000    # 1.0f

    .line 1053
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p7, :cond_1

    .line 1056
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v2, p3, :cond_0

    .line 1060
    invoke-static {v2}, Lo/unregisterCallbackListener;->mayLaunchUrl(Landroid/view/View;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-float/2addr p6, v0

    .line 42
    invoke-static {p3, p6}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;F)V

    .line 43
    sget p2, Lo/onPause$onNavigationEvent;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    invoke-virtual {p3, p5}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0

    return-void
.end method

.method public final onSelected(Landroid/view/View;)V
    .locals 0

    return-void
.end method
