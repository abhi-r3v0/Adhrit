.class final Lo/getAndroidMinimumVersion$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Calendar;

.field private synthetic extraCallback:Lo/getAndroidMinimumVersion;

.field private final onPostMessage:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;)V
    .locals 1

    .line 231
    iput-object p1, p0, Lo/getAndroidMinimumVersion$4;->extraCallback:Lo/getAndroidMinimumVersion;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const-string p1, "UTC"

    .line 2042
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1074
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 233
    iput-object v0, p0, Lo/getAndroidMinimumVersion$4;->ICustomTabsCallback:Ljava/util/Calendar;

    .line 3042
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 2074
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 2076
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 234
    iput-object p1, p0, Lo/getAndroidMinimumVersion$4;->onPostMessage:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 19

    move-object/from16 v0, p0

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lo/getContinueUrl;

    if-eqz v1, :cond_5

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 243
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lo/getContinueUrl;

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 246
    iget-object v3, v0, Lo/getAndroidMinimumVersion$4;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 3059
    iget-object v3, v3, Lo/getAndroidMinimumVersion;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    .line 246
    invoke-interface {v3}, Lo/AnalyticsConnectorRegistrar;->onNavigationEvent()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/getPercentRating;

    .line 247
    iget-object v5, v4, Lo/getPercentRating;->extraCallback:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lo/getPercentRating;->onPostMessage:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, v0, Lo/getAndroidMinimumVersion$4;->ICustomTabsCallback:Ljava/util/Calendar;

    iget-object v6, v4, Lo/getPercentRating;->extraCallback:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    iget-object v5, v0, Lo/getAndroidMinimumVersion$4;->onPostMessage:Ljava/util/Calendar;

    iget-object v4, v4, Lo/getPercentRating;->onPostMessage:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 253
    iget-object v4, v0, Lo/getAndroidMinimumVersion$4;->ICustomTabsCallback:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3100
    iget-object v6, v1, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 3289
    iget-object v6, v6, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 4083
    iget-object v6, v6, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 3100
    iget v6, v6, Lo/setUrl;->onPostMessage:I

    sub-int/2addr v4, v6

    .line 254
    iget-object v6, v0, Lo/getAndroidMinimumVersion$4;->onPostMessage:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 4100
    iget-object v6, v1, Lo/getContinueUrl;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 4289
    iget-object v6, v6, Lo/getAndroidMinimumVersion;->extraCallback:Lo/getMultiFactorInfo;

    .line 5083
    iget-object v6, v6, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 4100
    iget v6, v6, Lo/setUrl;->onPostMessage:I

    sub-int/2addr v5, v6

    .line 255
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 256
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 258
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v8

    div-int/2addr v4, v8

    .line 259
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v8

    div-int/2addr v5, v8

    move v8, v4

    :goto_0
    if-gt v8, v5, :cond_1

    .line 262
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v9

    mul-int v9, v9, v8

    .line 263
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 267
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, v0, Lo/getAndroidMinimumVersion$4;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 6059
    iget-object v11, v11, Lo/getAndroidMinimumVersion;->onNavigationEvent:Lo/onMessageTriggered;

    .line 267
    iget-object v11, v11, Lo/onMessageTriggered;->extraCallback:Lo/getPreviousEmail;

    .line 6162
    iget-object v11, v11, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    .line 268
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v11, v0, Lo/getAndroidMinimumVersion$4;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 7059
    iget-object v11, v11, Lo/getAndroidMinimumVersion;->onNavigationEvent:Lo/onMessageTriggered;

    .line 268
    iget-object v11, v11, Lo/onMessageTriggered;->extraCallback:Lo/getPreviousEmail;

    .line 7166
    iget-object v11, v11, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v11

    if-ne v8, v4, :cond_2

    .line 269
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-ne v8, v5, :cond_3

    .line 272
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v12

    :goto_2
    int-to-float v14, v11

    int-to-float v15, v10

    int-to-float v10, v12

    int-to-float v9, v9

    .line 274
    iget-object v11, v0, Lo/getAndroidMinimumVersion$4;->extraCallback:Lo/getAndroidMinimumVersion;

    .line 8059
    iget-object v11, v11, Lo/getAndroidMinimumVersion;->onNavigationEvent:Lo/onMessageTriggered;

    .line 274
    iget-object v11, v11, Lo/onMessageTriggered;->asBinder:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move/from16 v16, v10

    move/from16 v17, v9

    move-object/from16 v18, v11

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method
