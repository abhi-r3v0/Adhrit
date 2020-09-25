.class public Lo/getApp;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lo/getApp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lo/getApp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 58
    iput-boolean p3, p0, Lo/getApp;->onNavigationEvent:Z

    .line 1072
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lo/toStringMap$newSession;->FlowLayout:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1073
    sget p2, Lo/toStringMap$newSession;->FlowLayout_lineSpacing:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/getApp;->onMessageChannelReady:I

    .line 1074
    sget p2, Lo/toStringMap$newSession;->FlowLayout_itemSpacing:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lo/getApp;->ICustomTabsCallback:I

    .line 1075
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static extraCallback(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_0

    return p2

    :cond_0
    return p0

    .line 181
    :cond_1
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lo/getApp;->onNavigationEvent:Z

    return v0
.end method

.method protected final extraCallback(I)V
    .locals 0

    .line 91
    iput p1, p0, Lo/getApp;->ICustomTabsCallback:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 189
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result p1

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    :goto_1
    if-eqz p3, :cond_3

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 198
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    move v2, p1

    move p2, v1

    const/4 v0, 0x0

    .line 204
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 205
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 211
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 214
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_4

    .line 215
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 216
    invoke-static {v4}, Lo/onExtrasChanged;->onPostMessage(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    .line 217
    invoke-static {v4}, Lo/onExtrasChanged;->onMessageChannelReady(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    add-int v6, v2, v5

    .line 220
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 222
    iget-boolean v7, p0, Lo/getApp;->onNavigationEvent:Z

    if-nez v7, :cond_5

    if-le v6, p4, :cond_5

    .line 224
    iget p2, p0, Lo/getApp;->onMessageChannelReady:I

    add-int/2addr p2, v1

    move v2, p1

    :cond_5
    add-int v1, v2, v5

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    .line 228
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p2

    if-eqz p3, :cond_6

    sub-int v1, p4, v6

    sub-int v6, p4, v2

    sub-int/2addr v6, v5

    .line 231
    invoke-virtual {v3, v1, p2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 234
    :cond_6
    invoke-virtual {v3, v1, p2, v6, v7}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/2addr v5, v4

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v5, v1

    iget v1, p0, Lo/getApp;->ICustomTabsCallback:I

    add-int/2addr v5, v1

    add-int/2addr v2, v5

    move v1, v7

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 106
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 107
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 109
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 110
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_1

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    const v5, 0x7fffffff

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    .line 117
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v5, v8

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 123
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-ge v10, v12, :cond_7

    .line 124
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 126
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_6

    move/from16 v13, p1

    move/from16 v14, p2

    .line 129
    invoke-virtual {v0, v12, v13, v14}, Lo/getApp;->measureChild(Landroid/view/View;II)V

    .line 131
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 134
    instance-of v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_2

    .line 135
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 136
    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v16, 0x0

    add-int/lit8 v8, v8, 0x0

    .line 137
    iget v15, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/lit8 v15, v15, 0x0

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    :goto_3
    add-int v17, v6, v8

    .line 140
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v19, v6

    add-int v6, v17, v18

    if-le v6, v5, :cond_3

    .line 145
    invoke-virtual/range {p0 .. p0}, Lo/getApp;->ICustomTabsCallback()Z

    move-result v6

    if-nez v6, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 147
    iget v9, v0, Lo/getApp;->onMessageChannelReady:I

    add-int/2addr v9, v7

    goto :goto_4

    :cond_3
    move/from16 v6, v19

    :goto_4
    add-int v7, v6, v8

    .line 150
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v7, v7, v17

    .line 151
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v17, v9, v17

    if-le v7, v11, :cond_4

    move v11, v7

    :cond_4
    add-int/2addr v8, v15

    .line 158
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v8, v7

    iget v7, v0, Lo/getApp;->ICustomTabsCallback:I

    add-int/2addr v8, v7

    add-int/2addr v6, v8

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v10, v7, :cond_5

    add-int/2addr v11, v15

    :cond_5
    move/from16 v7, v17

    goto :goto_5

    :cond_6
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v19, v6

    const/16 v16, 0x0

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v11, v5

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v7, v5

    .line 171
    invoke-static {v1, v2, v11}, Lo/getApp;->extraCallback(III)I

    move-result v1

    .line 172
    invoke-static {v3, v4, v7}, Lo/getApp;->extraCallback(III)I

    move-result v2

    .line 173
    invoke-virtual {v0, v1, v2}, Lo/getApp;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onMessageChannelReady(I)V
    .locals 0

    .line 83
    iput p1, p0, Lo/getApp;->onMessageChannelReady:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lo/getApp;->onNavigationEvent:Z

    return-void
.end method
