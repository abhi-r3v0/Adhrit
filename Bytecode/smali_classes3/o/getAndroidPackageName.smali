.class final Lo/getAndroidPackageName;
.super Landroid/widget/GridView;
.source ""


# instance fields
.field private final onNavigationEvent:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lo/getAndroidPackageName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lo/getAndroidPackageName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "UTC"

    .line 2042
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 1074
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 38
    iput-object p1, p0, Lo/getAndroidPackageName;->onNavigationEvent:Ljava/util/Calendar;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/getIOSBundleId;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    sget p1, Lo/toStringMap$asInterface;->cancel_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 52
    sget p1, Lo/toStringMap$asInterface;->confirm_button:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 54
    :cond_0
    new-instance p1, Lo/getAndroidPackageName$1;

    invoke-direct {p1}, Lo/getAndroidPackageName$1;-><init>()V

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setIOSBundleId;
    .locals 1

    .line 102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lo/setIOSBundleId;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 30102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lo/setIOSBundleId;

    return-object v0
.end method

.method public final bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 29102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lo/setIOSBundleId;

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 2102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lo/setIOSBundleId;

    .line 70
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    .line 119
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 11102
    invoke-super/range {p0 .. p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lo/setIOSBundleId;

    .line 121
    iget-object v2, v1, Lo/setIOSBundleId;->ICustomTabsCallback:Lo/AnalyticsConnectorRegistrar;

    .line 122
    iget-object v3, v1, Lo/setIOSBundleId;->extraCallback:Lo/onMessageTriggered;

    .line 11167
    iget-object v4, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 12105
    iget-object v5, v4, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v7, v4, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v5, v7

    if-gez v5, :cond_0

    .line 12107
    iget v4, v4, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v5, v4

    .line 123
    :cond_0
    invoke-virtual {v1, v5}, Lo/setIOSBundleId;->onMessageChannelReady(I)Ljava/lang/Long;

    move-result-object v4

    .line 12178
    iget-object v5, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 13105
    iget-object v7, v5, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, v5, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    sub-int/2addr v7, v8

    if-gez v7, :cond_1

    .line 13107
    iget v5, v5, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v7, v5

    .line 12178
    :cond_1
    iget-object v5, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v5, v5, Lo/setUrl;->onTransact:I

    add-int/2addr v7, v5

    const/4 v5, 0x1

    sub-int/2addr v7, v5

    .line 124
    invoke-virtual {v1, v7}, Lo/setIOSBundleId;->onMessageChannelReady(I)Ljava/lang/Long;

    move-result-object v7

    .line 126
    invoke-interface {v2}, Lo/AnalyticsConnectorRegistrar;->onNavigationEvent()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/getPercentRating;

    .line 127
    iget-object v9, v8, Lo/getPercentRating;->extraCallback:Ljava/lang/Object;

    if-eqz v9, :cond_13

    iget-object v9, v8, Lo/getPercentRating;->onPostMessage:Ljava/lang/Object;

    if-eqz v9, :cond_13

    .line 130
    iget-object v9, v8, Lo/getPercentRating;->extraCallback:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    .line 131
    iget-object v8, v8, Lo/getPercentRating;->onPostMessage:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 133
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    if-eqz v4, :cond_4

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    if-nez v13, :cond_2

    goto :goto_1

    .line 13207
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    cmp-long v8, v15, v17

    if-gtz v8, :cond_4

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v17

    cmp-long v8, v15, v17

    if-gez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    const/4 v8, 0x5

    cmp-long v13, v9, v15

    if-gez v13, :cond_9

    .line 14167
    iget-object v9, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 15105
    iget-object v10, v9, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v10, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v13, v9, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v13

    sub-int/2addr v10, v13

    if-gez v10, :cond_6

    .line 15107
    iget v9, v9, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v10, v9

    .line 15208
    :cond_6
    iget-object v9, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v9, v9, Lo/setUrl;->onNavigationEvent:I

    rem-int v9, v10, v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v9, v10, -0x1

    .line 144
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    goto :goto_4

    .line 146
    :cond_9
    iget-object v13, v0, Lo/getAndroidPackageName;->onNavigationEvent:Ljava/util/Calendar;

    invoke-virtual {v13, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    iget-object v9, v0, Lo/getAndroidPackageName;->onNavigationEvent:Ljava/util/Calendar;

    invoke-virtual {v9, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v9, v5

    .line 17167
    iget-object v10, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 18105
    iget-object v13, v10, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v13

    iget-object v15, v10, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v15

    sub-int/2addr v13, v15

    if-gez v13, :cond_a

    .line 18107
    iget v10, v10, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v13, v10

    :cond_a
    add-int v10, v13, v9

    .line 148
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 18211
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v13

    .line 153
    :goto_4
    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    cmp-long v13, v11, v15

    if-lez v13, :cond_e

    .line 19178
    iget-object v8, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 20105
    iget-object v11, v8, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v12, v8, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v12

    sub-int/2addr v11, v12

    if-gez v11, :cond_b

    .line 20107
    iget v8, v8, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v11, v8

    .line 19178
    :cond_b
    iget-object v8, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v8, v8, Lo/setUrl;->onTransact:I

    add-int/2addr v11, v8

    sub-int/2addr v11, v5

    add-int/lit8 v8, v11, 0x1

    .line 20216
    iget-object v12, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget v12, v12, Lo/setUrl;->onNavigationEvent:I

    rem-int/2addr v8, v12

    if-nez v8, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_d

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    goto :goto_6

    .line 158
    :cond_d
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    goto :goto_6

    .line 160
    :cond_e
    iget-object v13, v0, Lo/getAndroidPackageName;->onNavigationEvent:Ljava/util/Calendar;

    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    iget-object v11, v0, Lo/getAndroidPackageName;->onNavigationEvent:Ljava/util/Calendar;

    invoke-virtual {v11, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v8, v5

    .line 22167
    iget-object v11, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 23105
    iget-object v12, v11, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v12, v6}, Ljava/util/Calendar;->get(I)I

    move-result v12

    iget-object v13, v11, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v13

    sub-int/2addr v12, v13

    if-gez v12, :cond_f

    .line 23107
    iget v11, v11, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v12, v11

    :cond_f
    add-int v11, v12, v8

    .line 162
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 23211
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v12

    .line 165
    :goto_6
    invoke-virtual {v1, v10}, Lo/setIOSBundleId;->getItemId(I)J

    move-result-wide v12

    long-to-int v13, v12

    move-object v15, v7

    .line 166
    invoke-virtual {v1, v11}, Lo/setIOSBundleId;->getItemId(I)J

    move-result-wide v6

    long-to-int v7, v6

    :goto_7
    if-gt v13, v7, :cond_12

    .line 168
    invoke-virtual/range {p0 .. p0}, Lo/getAndroidPackageName;->getNumColumns()I

    move-result v6

    mul-int v6, v6, v13

    .line 169
    invoke-virtual/range {p0 .. p0}, Lo/getAndroidPackageName;->getNumColumns()I

    move-result v16

    add-int v16, v6, v16

    add-int/lit8 v12, v16, -0x1

    .line 170
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 171
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    iget-object v5, v3, Lo/onMessageTriggered;->onPostMessage:Lo/getPreviousEmail;

    .line 24162
    iget-object v5, v5, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v18, v5

    .line 172
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    iget-object v14, v3, Lo/onMessageTriggered;->onPostMessage:Lo/getPreviousEmail;

    .line 24166
    iget-object v14, v14, Lo/getPreviousEmail;->onMessageChannelReady:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v16, v14

    if-le v6, v10, :cond_10

    const/4 v6, 0x0

    goto :goto_8

    :cond_10
    move v6, v9

    :goto_8
    if-le v11, v12, :cond_11

    .line 174
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_9

    :cond_11
    move v12, v8

    :goto_9
    int-to-float v6, v6

    int-to-float v5, v5

    int-to-float v12, v12

    int-to-float v14, v14

    .line 175
    iget-object v0, v3, Lo/onMessageTriggered;->asBinder:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move/from16 v20, v6

    move/from16 v21, v5

    move/from16 v22, v12

    move/from16 v23, v14

    move-object/from16 v24, v0

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_12
    const/4 v6, 0x7

    move-object/from16 v0, p0

    move-object v7, v15

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method protected final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_4

    const/16 p1, 0x21

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-ne p2, p1, :cond_1

    .line 25102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lo/setIOSBundleId;

    .line 25178
    iget-object p2, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 26105
    iget-object p3, p2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p3, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    iget-object v1, p2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr p3, v1

    if-gez p3, :cond_0

    .line 26107
    iget p2, p2, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr p3, p2

    .line 25178
    :cond_0
    iget-object p1, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget p1, p1, Lo/setUrl;->onTransact:I

    add-int/2addr p3, p1

    sub-int/2addr p3, v0

    .line 24191
    invoke-virtual {p0, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    :cond_1
    const/16 p1, 0x82

    if-ne p2, p1, :cond_3

    .line 27102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lo/setIOSBundleId;

    .line 27167
    iget-object p1, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 28105
    iget-object p2, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object p3, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p3

    sub-int/2addr p2, p3

    if-gez p2, :cond_2

    .line 28107
    iget p1, p1, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr p2, p1

    .line 24193
    :cond_2
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void

    .line 24195
    :cond_3
    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 84
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_5

    .line 89
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    .line 7102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lo/setIOSBundleId;

    .line 7167
    iget-object v1, v1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 8105
    iget-object v3, v1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v5, v1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    sub-int/2addr v3, v5

    if-gez v3, :cond_1

    .line 8107
    iget v1, v1, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v3, v1

    :cond_1
    if-lt p2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x13

    if-ne p2, p1, :cond_4

    .line 9102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lo/setIOSBundleId;

    .line 9167
    iget-object p1, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 10105
    iget-object p2, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_3

    .line 10107
    iget p1, p1, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr p2, p1

    .line 93
    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 36
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 107
    instance-of v0, p1, Lo/setIOSBundleId;

    if-eqz v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-class v2, Lo/getAndroidPackageName;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lo/setIOSBundleId;

    .line 112
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%1$s must have its Adapter set to a %2$s"

    .line 109
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSelection(I)V
    .locals 4

    .line 3102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lo/setIOSBundleId;

    .line 3167
    iget-object v0, v0, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 4105
    iget-object v1, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    sub-int/2addr v1, v3

    if-gez v1, :cond_0

    .line 4107
    iget v0, v0, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v1, v0

    :cond_0
    if-ge p1, v1, :cond_2

    .line 5102
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lo/setIOSBundleId;

    .line 5167
    iget-object p1, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 6105
    iget-object v0, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p1, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 6107
    iget p1, p1, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr v0, p1

    .line 76
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    return-void

    .line 78
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
