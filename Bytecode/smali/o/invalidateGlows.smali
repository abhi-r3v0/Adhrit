.class public final Lo/invalidateGlows;
.super Lo/getContentPaddingTop;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/referal/ReferralImagesAdapter;",
        "Lcom/dreamplug/androidapp/ui/widget/ViewPagerAdapter;",
        "imagesList",
        "",
        "",
        "downloadFailAction",
        "Lkotlin/Function0;",
        "",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V",
        "getCount",
        "",
        "getView",
        "Landroid/view/View;",
        "position",
        "pager",
        "Landroidx/viewpager/widget/ViewPager;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imagesList"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadFailAction"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lo/getContentPaddingTop;-><init>()V

    iput-object p1, p0, Lo/invalidateGlows;->onPostMessage:Ljava/util/List;

    iput-object p2, p0, Lo/invalidateGlows;->onNavigationEvent:Lo/getServerTime;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Lo/invalidateGlows;)Lo/getServerTime;
    .locals 0

    .line 16
    iget-object p0, p0, Lo/invalidateGlows;->onNavigationEvent:Lo/getServerTime;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
    .locals 11

    const-string v0, "pager"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v1, Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v1, Lo/setSpeed;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Lo/setSpeed;-><init>(Landroid/content/Context;)V

    .line 1116
    iget-object p2, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 1216
    iget-object p2, p2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    check-cast p2, Lo/setMaxFrame;

    .line 22
    check-cast p2, Lo/getComposition;

    const-string v3, "imageView.hierarchy"

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    if-eqz v4, :cond_7

    const/4 v5, 0x2

    .line 3369
    invoke-virtual {p2, v5}, Lo/getComposition;->onPostMessage(I)Lo/LottieAnimationView;

    move-result-object p2

    .line 3370
    instance-of v5, p2, Lo/fromAssets;

    if-eqz v5, :cond_0

    .line 3371
    check-cast p2, Lo/fromAssets;

    goto :goto_0

    .line 3373
    :cond_0
    sget-object v5, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    invoke-static {p2, v5}, Lo/playAnimation;->onMessageChannelReady(Lo/LottieAnimationView;Lo/setFailureListener$extraCallback;)Lo/fromAssets;

    move-result-object p2

    .line 4094
    :goto_0
    iget-object v5, p2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    const/4 v6, 0x1

    if-eq v5, v4, :cond_2

    if-eqz v5, :cond_1

    .line 5053
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_3

    .line 4098
    iput-object v4, p2, Lo/fromAssets;->onPostMessage:Lo/setFailureListener$extraCallback;

    .line 4099
    iput-object v2, p2, Lo/fromAssets;->extraCallback:Ljava/lang/Object;

    .line 4100
    invoke-virtual {p2}, Lo/fromAssets;->ICustomTabsCallback()V

    .line 4101
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5116
    :cond_3
    iget-object p2, v1, Lo/setMinAndMaxProgress;->onNavigationEvent:Lo/setMinProgress;

    .line 5216
    iget-object p2, p2, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-eqz p2, :cond_6

    check-cast p2, Lo/setMaxFrame;

    .line 23
    check-cast p2, Lo/getComposition;

    invoke-static {p2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Resources.getSystem()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    .line 7022
    invoke-static {v6, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 7170
    new-instance v3, Lo/hasMatte;

    invoke-direct {v3}, Lo/hasMatte;-><init>()V

    .line 8157
    iget-object v4, v3, Lo/hasMatte;->extraCallback:[F

    if-nez v4, :cond_4

    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 8158
    iput-object v4, v3, Lo/hasMatte;->extraCallback:[F

    .line 8160
    :cond_4
    iget-object v4, v3, Lo/hasMatte;->extraCallback:[F

    .line 8077
    invoke-static {v4, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 23
    invoke-virtual {p2, v3}, Lo/getComposition;->onPostMessage(Lo/hasMatte;)V

    .line 24
    iget-object p2, p0, Lo/invalidateGlows;->onPostMessage:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance p1, Lo/invalidateGlows$onPostMessage;

    invoke-direct {p1, p0}, Lo/invalidateGlows$onPostMessage;-><init>(Lo/invalidateGlows;)V

    move-object v9, p1

    check-cast v9, Lo/onDisconnectSetValue;

    const/16 v10, 0x1e

    move-object v3, v1

    invoke-static/range {v3 .. v10}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 29
    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p2, -0x1

    .line 32
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 39
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6215
    :cond_6
    throw v2

    .line 3215
    :cond_7
    throw v2

    .line 2215
    :cond_8
    throw v2
.end method

.method public final extraCallback()I
    .locals 1

    .line 17
    iget-object v0, p0, Lo/invalidateGlows;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
