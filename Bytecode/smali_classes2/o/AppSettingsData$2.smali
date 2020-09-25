.class final Lo/AppSettingsData$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AppSettingsData;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/AppSettingsData;


# direct methods
.method constructor <init>(Lo/AppSettingsData;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 5091
    iget-object p1, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 6049
    iget-object p1, p1, Lo/AppSettingsData;->onPostMessage:Landroid/view/GestureDetector;

    .line 5091
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final run()V
    .locals 13

    .line 87
    iget-object v0, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 1049
    iget-object v0, v0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 2049
    iget-object v0, v0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 3049
    iget-object v0, v0, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 95
    sget v1, Lo/writeCachedSettings$ICustomTabsCallback;->com_mixpanel_android_notification_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 4049
    iget-object v1, v1, Lo/AppSettingsData;->onMessageChannelReady:Landroid/app/Activity;

    .line 97
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x42820000    # 65.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 98
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 99
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v3, 0xc8

    .line 100
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 101
    iget-object v5, p0, Lo/AppSettingsData$2;->onMessageChannelReady:Lo/AppSettingsData;

    .line 5049
    iget-object v5, v5, Lo/AppSettingsData;->ICustomTabsCallback$Stub:Landroid/view/View;

    .line 101
    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x40000000    # 2.0f

    div-float v12, v1, v5

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v6, v2

    move v11, v12

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 104
    new-instance v1, Lo/AppSettingsData$ICustomTabsCallback;

    invoke-direct {v1}, Lo/AppSettingsData$ICustomTabsCallback;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v5, 0x190

    .line 105
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
