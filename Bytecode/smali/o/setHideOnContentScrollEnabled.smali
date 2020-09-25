.class Lo/setHideOnContentScrollEnabled;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/describeContents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/describeContents<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Landroid/view/animation/Interpolator;

.field private static onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lo/setHideOnContentScrollEnabled;->onNavigationEvent:Landroid/view/animation/Interpolator;

    const-string/jumbo v1, "t"

    const-string/jumbo v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string/jumbo v7, "to"

    const-string/jumbo v8, "ti"

    .line 29
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/restoreToolbarHierarchyState$onMessageChannelReady;->extraCallback([Ljava/lang/String;)Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    move-result-object v0

    sput-object v0, Lo/setHideOnContentScrollEnabled;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(I)Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .line 51
    const-class v0, Lo/setHideOnContentScrollEnabled;

    monitor-enter v0

    .line 1041
    :try_start_0
    sget-object v1, Lo/setHideOnContentScrollEnabled;->extraCallback:Lo/describeContents;

    if-nez v1, :cond_0

    .line 1042
    new-instance v1, Lo/describeContents;

    invoke-direct {v1}, Lo/describeContents;-><init>()V

    sput-object v1, Lo/setHideOnContentScrollEnabled;->extraCallback:Lo/describeContents;

    .line 1044
    :cond_0
    sget-object v1, Lo/setHideOnContentScrollEnabled;->extraCallback:Lo/describeContents;

    .line 52
    invoke-virtual {v1, p0}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0

    throw p0
.end method

.method private static extraCallback(Lo/createCheckBox;Lo/restoreToolbarHierarchyState;FLo/hasLogo;)Lo/ActionMenuView;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/createCheckBox;",
            "Lo/restoreToolbarHierarchyState;",
            "F",
            "Lo/hasLogo<",
            "TT;>;)",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 92
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->extraCallback()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v14, v10

    move-object v15, v14

    const/4 v6, 0x0

    const/4 v13, 0x0

    .line 93
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 94
    sget-object v11, Lo/setHideOnContentScrollEnabled;->onPostMessage:Lo/restoreToolbarHierarchyState$onMessageChannelReady;

    invoke-virtual {v0, v11}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady(Lo/restoreToolbarHierarchyState$onMessageChannelReady;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    .line 117
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object v14

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static/range {p1 .. p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object v15

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->newSession()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-static/range {p1 .. p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-static/range {p1 .. p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object v7

    goto :goto_0

    .line 102
    :pswitch_5
    invoke-interface {v2, v0, v1}, Lo/hasLogo;->extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    .line 99
    :pswitch_6
    invoke-interface {v2, v0, v1}, Lo/hasLogo;->extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 96
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v11

    double-to-float v13, v11

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsCallback()V

    if-eqz v6, :cond_2

    .line 128
    sget-object v0, Lo/setHideOnContentScrollEnabled;->onNavigationEvent:Landroid/view/animation/Interpolator;

    move-object v12, v0

    move-object v11, v10

    goto/16 :goto_3

    :cond_2
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 130
    iget v0, v7, Landroid/graphics/PointF;->x:F

    neg-float v2, v1

    invoke-static {v0, v2, v1}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 131
    iget v0, v7, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v6, -0x3d380000    # -100.0f

    invoke-static {v0, v6, v3}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v0

    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 132
    iget v0, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v2, v1}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v0

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 133
    iget v0, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v6, v3}, Lo/onContentScrollStopped;->onPostMessage(FFF)F

    move-result v0

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 134
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v6, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3, v6}, Lo/ActionBarOverlayLayout$LayoutParams;->onNavigationEvent(FFFF)I

    move-result v2

    .line 135
    invoke-static {v2}, Lo/setHideOnContentScrollEnabled;->ICustomTabsCallback(I)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 137
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/view/animation/Interpolator;

    :cond_3
    if-eqz v0, :cond_4

    if-nez v5, :cond_6

    .line 140
    :cond_4
    iget v0, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/PointF;->x:F

    .line 141
    iget v0, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/PointF;->y:F

    .line 142
    iget v0, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 143
    iget v0, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 145
    :try_start_0
    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    iget v5, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v3, v5}, Lo/getRepeatMode;->ICustomTabsCallback(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Path cannot loop back on itself."

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    iget v0, v7, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v7, Landroid/graphics/PointF;->y:F

    iget v3, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v3, v4}, Lo/getRepeatMode;->ICustomTabsCallback(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_1
    move-object v5, v0

    .line 158
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lo/setHideOnContentScrollEnabled;->onMessageChannelReady(ILjava/lang/ref/WeakReference;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    move-object v12, v5

    goto :goto_2

    .line 168
    :cond_7
    sget-object v0, Lo/setHideOnContentScrollEnabled;->onNavigationEvent:Landroid/view/animation/Interpolator;

    move-object v12, v0

    :goto_2
    move-object v11, v9

    .line 171
    :goto_3
    new-instance v0, Lo/ActionMenuView;

    const/4 v1, 0x0

    move-object v8, v0

    move-object/from16 v9, p0

    move-object v5, v14

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lo/ActionMenuView;-><init>(Lo/createCheckBox;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 173
    iput-object v15, v0, Lo/ActionMenuView;->ICustomTabsCallback$Stub$Proxy:Landroid/graphics/PointF;

    .line 174
    iput-object v5, v0, Lo/ActionMenuView;->newSession:Landroid/graphics/PointF;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static onMessageChannelReady(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .line 59
    const-class v0, Lo/setHideOnContentScrollEnabled;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lo/setHideOnContentScrollEnabled;->extraCallback:Lo/describeContents;

    invoke-virtual {v1, p0, p1}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static onPostMessage(Lo/restoreToolbarHierarchyState;Lo/createCheckBox;FLo/hasLogo;Z)Lo/ActionMenuView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/restoreToolbarHierarchyState;",
            "Lo/createCheckBox;",
            "F",
            "Lo/hasLogo<",
            "TT;>;Z)",
            "Lo/ActionMenuView<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 68
    invoke-static {p1, p0, p2, p3}, Lo/setHideOnContentScrollEnabled;->extraCallback(Lo/createCheckBox;Lo/restoreToolbarHierarchyState;FLo/hasLogo;)Lo/ActionMenuView;

    move-result-object p0

    return-object p0

    .line 1180
    :cond_0
    invoke-interface {p3, p0, p2}, Lo/hasLogo;->extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;

    move-result-object p0

    .line 1181
    new-instance p1, Lo/ActionMenuView;

    invoke-direct {p1, p0}, Lo/ActionMenuView;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
