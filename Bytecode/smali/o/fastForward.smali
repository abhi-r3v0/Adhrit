.class public final Lo/fastForward;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onChooseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fastForward$ICustomTabsCallback;,
        Lo/fastForward$extraCallback;,
        Lo/fastForward$onMessageChannelReady;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ICustomTabsCallback(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 406
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 408
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 404
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 400
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/AbstractList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    add-int/lit8 p0, p0, 0x1

    if-ge p0, p2, :cond_1

    .line 67
    invoke-virtual {p1, p0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extraCallback(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 432
    :cond_1
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 433
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    .line 432
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    .line 427
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    .line 427
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method private static extraCallback(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-nez p0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    .line 82
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    .line 378
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 380
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_1
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 376
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 372
    :cond_3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;Lo/fastForward$ICustomTabsCallback;Lo/fastForward$extraCallback;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Lo/fastForward$ICustomTabsCallback<",
            "T",
            "L;",
            "TT;>;",
            "Lo/fastForward$extraCallback<",
            "TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    .line 145
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_3

    const/16 v5, 0x21

    if-eq v3, v5, :cond_2

    const/16 v5, 0x42

    if-eq v3, v5, :cond_1

    const/16 v5, 0x82

    if-ne v3, v5, :cond_0

    .line 158
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v7

    neg-int v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v7

    neg-int v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    const/4 v5, 0x0

    .line 167
    invoke-interface {v1, v0}, Lo/fastForward$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v8

    .line 168
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_8

    .line 170
    invoke-interface {v1, v0, v10}, Lo/fastForward$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    if-eq v11, v12, :cond_7

    .line 176
    invoke-interface {v13, v11, v9}, Lo/fastForward$extraCallback;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1203
    invoke-static {v2, v9, v3}, Lo/fastForward;->onNavigationEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1209
    invoke-static {v2, v4, v3}, Lo/fastForward;->onNavigationEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v14

    if-nez v14, :cond_4

    :goto_2
    const/4 v14, 0x1

    goto :goto_3

    .line 1214
    :cond_4
    invoke-static {v3, v2, v9, v4}, Lo/fastForward;->onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    .line 1219
    :cond_5
    invoke-static {v3, v2, v4, v9}, Lo/fastForward;->onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1365
    invoke-static {v3, v2, v9}, Lo/fastForward;->onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1227
    invoke-static {v3, v2, v9}, Lo/fastForward;->extraCallback(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    mul-int/lit8 v16, v14, 0xd

    mul-int v16, v16, v14

    mul-int v15, v15, v15

    add-int v14, v16, v15

    .line 2365
    invoke-static {v3, v2, v4}, Lo/fastForward;->onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1230
    invoke-static {v3, v2, v4}, Lo/fastForward;->extraCallback(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v16

    mul-int/lit8 v17, v15, 0xd

    mul-int v17, v17, v15

    mul-int v16, v16, v16

    add-int v15, v17, v16

    if-ge v14, v15, :cond_6

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_7

    .line 178
    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v5, v11

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    return-object v5
.end method

.method private static onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    .line 243
    invoke-static {p0, p1, p2}, Lo/fastForward;->onNavigationEvent(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 244
    invoke-static {p0, p1, p3}, Lo/fastForward;->onNavigationEvent(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    invoke-static {p0, p1, p3}, Lo/fastForward;->onPostMessage(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x11

    if-eq p0, v0, :cond_4

    const/16 v0, 0x42

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 3365
    :cond_2
    invoke-static {p0, p1, p2}, Lo/fastForward;->onMessageChannelReady(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3392
    invoke-static {p0, p1, p3}, Lo/fastForward;->ICustomTabsCallback(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-ge p2, p0, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method private static onNavigationEvent(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_1
    :goto_0
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_2

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 329
    :cond_3
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_4

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private static onNavigationEvent(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_9

    const/16 v0, 0x21

    if-eq p2, v0, :cond_6

    const/16 v0, 0x42

    if-eq p2, v0, :cond_3

    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 308
    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gt p2, v0, :cond_1

    :cond_0
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 311
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 302
    :cond_3
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_4

    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gt p2, v0, :cond_5

    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_5

    return v1

    :cond_5
    return v2

    .line 305
    :cond_6
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_7

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-lt p2, v0, :cond_8

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_8

    return v1

    :cond_8
    return v2

    .line 299
    :cond_9
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_a

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, v0, :cond_b

    :cond_a
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_b

    return v1

    :cond_b
    return v2
.end method

.method public static onPostMessage(Ljava/lang/Object;Lo/fastForward$ICustomTabsCallback;Lo/fastForward$extraCallback;Ljava/lang/Object;IZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Lo/fastForward$ICustomTabsCallback<",
            "T",
            "L;",
            "TT;>;",
            "Lo/fastForward$extraCallback<",
            "TT;>;TT;IZ)TT;"
        }
    .end annotation

    .line 40
    invoke-interface {p1, p0}, Lo/fastForward$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 43
    invoke-interface {p1, p0, v3}, Lo/fastForward$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_0
    new-instance p0, Lo/fastForward$onMessageChannelReady;

    invoke-direct {p0, p5, p2}, Lo/fastForward$onMessageChannelReady;-><init>(ZLo/fastForward$extraCallback;)V

    .line 47
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x1

    if-eq p4, p0, :cond_2

    const/4 p0, 0x2

    if-ne p4, p0, :cond_1

    .line 51
    invoke-static {p3, v1, v2}, Lo/fastForward;->ICustomTabsCallback(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_2
    invoke-static {p3, v1, v2}, Lo/fastForward;->extraCallback(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 3

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x21

    if-eq p0, v0, :cond_4

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2

    const/16 v0, 0x82

    if-ne p0, v0, :cond_1

    .line 351
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-gt p0, p1, :cond_0

    return v1

    :cond_0
    return v2

    .line 353
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :cond_2
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-gt p0, p1, :cond_3

    return v1

    :cond_3
    return v2

    .line 349
    :cond_4
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p1, :cond_5

    return v1

    :cond_5
    return v2

    .line 345
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-lt p0, p1, :cond_7

    return v1

    :cond_7
    return v2
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/ActivityChooserView;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActivityChooserView;",
            "Ljava/util/List<",
            "Landroidx/databinding/ViewDataBinding$4;",
            ">;)V"
        }
    .end annotation

    .line 5481
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result v0

    .line 5489
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v0, v1

    .line 5012
    invoke-virtual {p1}, Lo/ActivityChooserView;->getInterfaceDescriptor()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6288
    iget v1, p1, Lo/ActivityChooserView;->asInterface:I

    .line 4014
    div-int/2addr v0, v1

    .line 4017
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/databinding/ViewDataBinding$4;

    .line 7015
    iget-object v2, v2, Landroidx/databinding/ViewDataBinding$4;->extraCallback:Landroid/graphics/Rect;

    .line 4020
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 7489
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 4023
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 8489
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9489
    iget-object v4, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v4}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v4

    .line 4025
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 4026
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v3

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 4029
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 4033
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    .line 4035
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    return-void
.end method
