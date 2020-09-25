.class final Lo/getViewLifecycleOwner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getViewLifecycleOwner$onMessageChannelReady;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

.field private final extraCallback:F

.field private final onMessageChannelReady:F

.field final onNavigationEvent:Landroid/graphics/PointF;

.field private final onPostMessage:F

.field private final onTransact:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getViewLifecycleOwner$onMessageChannelReady;Lo/setScrimColor;FF)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    .line 64
    iput-object p1, p0, Lo/getViewLifecycleOwner;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    .line 1161
    iget p1, p2, Lo/setScrimColor;->onNavigationEvent:F

    iget v0, p2, Lo/setScrimColor;->asBinder:F

    iget v1, p2, Lo/setScrimColor;->newSession:F

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 65
    iput p1, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    .line 1168
    iget p1, p2, Lo/setScrimColor;->onPostMessage:F

    iget v0, p2, Lo/setScrimColor;->asInterface:F

    iget v1, p2, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 66
    iput p1, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    .line 1175
    iget p1, p2, Lo/setScrimColor;->extraCallback:F

    iget v0, p2, Lo/setScrimColor;->ICustomTabsCallback$Stub:F

    iget v1, p2, Lo/setScrimColor;->newSession:F

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 67
    iput p1, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    .line 1182
    iget p1, p2, Lo/setScrimColor;->onRelationshipValidationResult:F

    iget v0, p2, Lo/setScrimColor;->onTransact:F

    iget v1, p2, Lo/setScrimColor;->ICustomTabsService:F

    div-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 68
    iput p1, p0, Lo/getViewLifecycleOwner;->onTransact:F

    .line 2146
    iget-object p1, p2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    iget-object v0, p2, Lo/setScrimColor;->ICustomTabsCallback:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2147
    iget-object p1, p2, Lo/setScrimColor;->onMessageChannelReady:Landroid/graphics/RectF;

    .line 3145
    sget-object p2, Lo/getViewLifecycleOwner$4;->onMessageChannelReady:[I

    iget-object v0, p0, Lo/getViewLifecycleOwner;->ICustomTabsCallback:Lo/getViewLifecycleOwner$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_3

    .line 3179
    :pswitch_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float v0, p2, p3

    .line 3180
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    goto :goto_2

    .line 3176
    :pswitch_1
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 3171
    :pswitch_2
    iget p1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 3168
    :pswitch_3
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 3163
    :pswitch_4
    iget p1, p1, Landroid/graphics/RectF;->left:F

    :goto_1
    sub-float/2addr p1, p3

    move v0, p1

    goto :goto_0

    .line 3159
    :pswitch_5
    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, p2, p3

    .line 3160
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 3155
    :pswitch_6
    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, p3

    .line 3156
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 3151
    :pswitch_7
    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float v0, p2, p3

    .line 3152
    iget p1, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 3147
    :pswitch_8
    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p2, p3

    .line 3148
    iget p1, p1, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, p4

    .line 3186
    :goto_3
    iget-object p2, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 3187
    iget-object p2, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iput p1, p2, Landroid/graphics/PointF;->y:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static ICustomTabsCallback(Landroid/graphics/RectF;F)V
    .locals 2

    .line 725
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method static extraCallback(Landroid/graphics/RectF;F)V
    .locals 2

    .line 709
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method static extraCallback(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 747
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 748
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 749
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 751
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 752
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method static onMessageChannelReady(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    return p2
.end method

.method static onMessageChannelReady(Landroid/graphics/RectF;F)V
    .locals 2

    .line 717
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method static onMessageChannelReady(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    .line 333
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p2

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 334
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 336
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 337
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 339
    :cond_1
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 340
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 342
    :cond_2
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    cmpl-float p2, v0, v1

    if-lez p2, :cond_3

    .line 343
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, v2, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method

.method static onPostMessage(Landroid/graphics/RectF;F)V
    .locals 2

    .line 701
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method static onPostMessage(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    .line 733
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 734
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 735
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 737
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 738
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 631
    iget-object v0, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 634
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 635
    iget-object p4, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->y:F

    .line 638
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 639
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    .line 643
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 644
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    add-float/2addr p2, p4

    .line 648
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    iget v0, p0, Lo/getViewLifecycleOwner;->onTransact:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 649
    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget p4, p0, Lo/getViewLifecycleOwner;->onTransact:F

    add-float/2addr p2, p4

    .line 652
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 653
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 658
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 661
    iget p5, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 662
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 663
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    .line 667
    :cond_6
    iget p5, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 668
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 669
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 674
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    .line 675
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 678
    iget p5, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 679
    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    iget p5, p1, Landroid/graphics/RectF;->right:F

    iget p7, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p5, p7

    div-float/2addr p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 680
    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p4, p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 684
    iget p5, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 685
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p6

    add-float/2addr p5, p3

    .line 688
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 686
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 693
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method final onMessageChannelReady(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 3

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    .line 456
    iget-object v0, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 459
    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p2, p4

    if-lez p4, :cond_1

    .line 460
    iget-object p4, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    sub-float v1, p2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p4, Landroid/graphics/PointF;->x:F

    .line 464
    :cond_1
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_2

    .line 465
    iget p2, p3, Landroid/graphics/RectF;->right:F

    .line 469
    :cond_2
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    .line 470
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    add-float/2addr p2, p4

    .line 474
    :cond_3
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    iget v0, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    cmpl-float p4, p4, v0

    if-lez p4, :cond_4

    .line 475
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p4, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    add-float/2addr p2, p4

    .line 479
    :cond_4
    iget p4, p3, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    cmpg-float p4, p4, p5

    if-gez p4, :cond_5

    .line 480
    iget p2, p3, Landroid/graphics/RectF;->right:F

    :cond_5
    const/4 p4, 0x0

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 485
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 488
    iget p5, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    cmpg-float p5, p4, p5

    if-gez p5, :cond_6

    .line 489
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 490
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    .line 494
    :cond_6
    iget p5, p0, Lo/getViewLifecycleOwner;->onTransact:F

    cmpl-float p5, p4, p5

    if-lez p5, :cond_7

    .line 495
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p0, Lo/getViewLifecycleOwner;->onTransact:F

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 496
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    .line 501
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    .line 502
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    .line 505
    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p5, p4

    iget p7, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p5, p5, p7

    if-gez p5, :cond_9

    .line 506
    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    iget p7, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p5, p7

    mul-float p5, p5, p6

    add-float/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 507
    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float/2addr p4, p6

    :cond_9
    if-eqz p8, :cond_a

    .line 511
    iget p5, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p5, p4

    if-lez p4, :cond_a

    .line 512
    iget p4, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p6

    add-float/2addr p5, p3

    .line 515
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 513
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 520
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method final onNavigationEvent(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 544
    iget-object v1, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 547
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 548
    iget-object v1, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 551
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 552
    iget p2, p3, Landroid/graphics/RectF;->top:F

    .line 556
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 557
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    sub-float/2addr p2, v1

    .line 561
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    iget v2, p0, Lo/getViewLifecycleOwner;->onTransact:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 562
    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lo/getViewLifecycleOwner;->onTransact:F

    sub-float/2addr p2, v1

    .line 565
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 566
    iget p2, p3, Landroid/graphics/RectF;->top:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 571
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 574
    iget v0, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 575
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 576
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    .line 580
    :cond_6
    iget v0, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 581
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    div-float/2addr v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 582
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 587
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 590
    iget p6, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 591
    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p6, v0

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 592
    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float p4, p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 596
    iget p6, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 597
    iget p4, p3, Landroid/graphics/RectF;->top:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p7, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p3, p7

    div-float/2addr p3, p5

    sub-float/2addr p6, p3

    .line 600
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 598
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 605
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method final onPostMessage(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    .line 368
    iget-object v1, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 371
    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 372
    iget-object v1, p0, Lo/getViewLifecycleOwner;->onNavigationEvent:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float v3, p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 375
    :cond_1
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float v1, v1, p4

    if-gez v1, :cond_2

    .line 376
    iget p2, p3, Landroid/graphics/RectF;->left:F

    .line 380
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 381
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lo/getViewLifecycleOwner;->onMessageChannelReady:F

    sub-float/2addr p2, v1

    .line 385
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p2

    iget v2, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 386
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lo/getViewLifecycleOwner;->onPostMessage:F

    sub-float/2addr p2, v1

    .line 389
    :cond_4
    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v1

    cmpg-float p4, v1, p4

    if-gez p4, :cond_5

    .line 390
    iget p2, p3, Landroid/graphics/RectF;->left:F

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    .line 395
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 398
    iget v0, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_6

    .line 399
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lo/getViewLifecycleOwner;->extraCallback:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 400
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    .line 404
    :cond_6
    iget v0, p0, Lo/getViewLifecycleOwner;->onTransact:F

    cmpl-float v0, p4, v0

    if-lez v0, :cond_7

    .line 405
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lo/getViewLifecycleOwner;->onTransact:F

    mul-float v0, v0, p5

    sub-float/2addr p4, v0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 406
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    .line 411
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    .line 412
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    .line 415
    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, p4

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    .line 416
    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    iget p6, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p6, v0

    mul-float p6, p6, p5

    sub-float/2addr p4, p6

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 417
    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_9
    if-eqz p7, :cond_a

    .line 421
    iget p6, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p6, p4

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p6, p4

    if-lez p4, :cond_a

    .line 422
    iget p4, p3, Landroid/graphics/RectF;->left:F

    iget p6, p1, Landroid/graphics/RectF;->right:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p7, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p7

    mul-float p3, p3, p5

    sub-float/2addr p6, p3

    .line 425
    invoke-static {p4, p6}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 423
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 430
    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method
