.class public final Lo/getDecorToolbar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Lo/writeToParcel;",
        ">;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lo/getDecorToolbar;->onMessageChannelReady:I

    return-void
.end method

.method private onPostMessage(Lo/writeToParcel;Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/writeToParcel;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 106
    iget v3, v1, Lo/getDecorToolbar;->onMessageChannelReady:I

    shl-int/lit8 v3, v3, 0x2

    .line 107
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 112
    new-array v5, v4, [D

    .line 113
    new-array v6, v4, [D

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 115
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 116
    rem-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_1

    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    float-to-double v9, v9

    aput-wide v9, v5, v8

    goto :goto_1

    .line 119
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    float-to-double v9, v9

    aput-wide v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    :goto_2
    iget-object v2, v0, Lo/writeToParcel;->onPostMessage:[I

    array-length v2, v2

    if-ge v7, v2, :cond_5

    .line 2021
    iget-object v2, v0, Lo/writeToParcel;->onPostMessage:[I

    .line 125
    aget v2, v2, v7

    .line 3017
    iget-object v3, v0, Lo/writeToParcel;->ICustomTabsCallback:[F

    .line 127
    aget v3, v3, v7

    float-to-double v8, v3

    const/4 v3, 0x1

    :goto_3
    const-wide v10, 0x406fe00000000000L    # 255.0

    if-ge v3, v4, :cond_4

    add-int/lit8 v12, v3, -0x1

    .line 3139
    aget-wide v13, v5, v12

    .line 3140
    aget-wide v15, v5, v3

    .line 3141
    aget-wide v17, v5, v3

    cmpl-double v19, v17, v8

    if-ltz v19, :cond_3

    sub-double/2addr v8, v13

    sub-double/2addr v15, v13

    div-double v21, v8, v15

    .line 3143
    aget-wide v17, v6, v12

    aget-wide v19, v6, v3

    invoke-static/range {v17 .. v22}, Lo/onContentScrollStopped;->onPostMessage(DDD)D

    move-result-wide v8

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v4, -0x1

    .line 3146
    aget-wide v8, v6, v3

    :goto_4
    mul-double v8, v8, v10

    double-to-int v3, v8

    .line 128
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 129
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v9

    .line 130
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 126
    invoke-static {v3, v8, v9, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 4021
    iget-object v3, v0, Lo/writeToParcel;->onPostMessage:[I

    .line 132
    aput v2, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4048
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4051
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4053
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 4055
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4056
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 4059
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 4061
    :cond_3
    iget p1, p0, Lo/getDecorToolbar;->onMessageChannelReady:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 4062
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/getDecorToolbar;->onMessageChannelReady:I

    .line 4065
    :cond_4
    iget p1, p0, Lo/getDecorToolbar;->onMessageChannelReady:I

    new-array v0, p1, [F

    .line 4066
    new-array p1, p1, [I

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 4070
    :goto_2
    iget v5, p0, Lo/getDecorToolbar;->onMessageChannelReady:I

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    if-ge v3, v5, :cond_9

    .line 4071
    div-int/lit8 v5, v3, 0x4

    .line 4072
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    float-to-double v7, v7

    .line 4073
    rem-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_8

    const-wide v10, 0x406fe00000000000L    # 255.0

    if-eq v9, v2, :cond_7

    if-eq v9, v6, :cond_6

    const/4 v6, 0x3

    if-eq v9, v6, :cond_5

    goto :goto_3

    :cond_5
    mul-double v7, v7, v10

    double-to-int v6, v7

    const/16 v7, 0xff

    .line 4086
    invoke-static {v7, v1, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, p1, v5

    goto :goto_3

    :cond_6
    mul-double v7, v7, v10

    double-to-int v4, v7

    goto :goto_3

    :cond_7
    mul-double v7, v7, v10

    double-to-int v1, v7

    goto :goto_3

    :cond_8
    double-to-float v6, v7

    .line 4076
    aput v6, v0, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4091
    :cond_9
    new-instance v1, Lo/writeToParcel;

    invoke-direct {v1, v0, p1}, Lo/writeToParcel;-><init>([F[I)V

    .line 4092
    invoke-direct {p0, v1, p2}, Lo/getDecorToolbar;->onPostMessage(Lo/writeToParcel;Ljava/util/List;)V

    return-object v1
.end method
