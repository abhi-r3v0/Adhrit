.class public final Lo/getConversionData;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onNavigationEvent:Lo/getRotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRotation<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x7

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 15035
    new-instance v2, Lo/getRotation;

    invoke-direct {v2, v0}, Lo/getRotation;-><init>(I)V

    .line 15036
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 32
    sput-object v2, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x10e

    if-gt p0, v0, :cond_0

    .line 45
    rem-int/lit8 p0, p0, 0x5a

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback(Lo/ɩ;Lo/getCardBackgroundColor;)I
    .locals 4

    .line 7120
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 105
    :cond_1
    invoke-static {p1}, Lo/getConversionData;->onPostMessage(Lo/getCardBackgroundColor;)I

    move-result p1

    .line 8116
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return p1

    .line 9116
    :cond_3
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 8133
    iget p0, p0, Lo/ɩ;->ICustomTabsCallback:I

    add-int/2addr p1, p0

    .line 109
    rem-int/lit16 p1, p1, 0x168

    return p1

    .line 8131
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Rotation is set to use EXIF"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extraCallback(Lo/getCardBackgroundColor;Lo/ɩ;)Landroid/graphics/Matrix;
    .locals 4

    .line 183
    sget-object v0, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    .line 11326
    iget v1, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v1, :cond_0

    iget v1, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v1, :cond_1

    .line 11327
    :cond_0
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 11224
    :cond_1
    iget v1, p0, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 188
    invoke-static {p1, p0}, Lo/getConversionData;->onMessageChannelReady(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p0

    .line 12210
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    .line 12224
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12225
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_3
    const/high16 p0, 0x43340000    # 180.0f

    .line 12220
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12221
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_4
    const/high16 p0, -0x3d4c0000    # -90.0f

    .line 12216
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12217
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 12213
    :cond_5
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 192
    :cond_6
    invoke-static {p1, p0}, Lo/getConversionData;->extraCallback(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p0

    if-eqz p0, :cond_7

    .line 194
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 195
    invoke-virtual {v1, p0}, Landroid/graphics/Matrix;->setRotate(F)V

    :cond_7
    :goto_1
    return-object v1
.end method

.method public static onMessageChannelReady(Lo/ɩ;Lo/getCardBackgroundColor;)I
    .locals 4

    .line 9326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 9327
    :cond_0
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 9224
    :cond_1
    iget p1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 122
    sget-object v0, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_6

    .line 10116
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 11116
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    .line 10133
    iget v3, p0, Lo/ɩ;->ICustomTabsCallback:I

    goto :goto_2

    .line 10131
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Rotation is set to use EXIF"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_5
    :goto_2
    div-int/lit8 v3, v3, 0x5a

    .line 131
    sget-object p0, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    add-int/2addr p1, v3

    .line 132
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 131
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 124
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only accepts inverted exif orientations"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onMessageChannelReady(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static onNavigationEvent(I)I
    .locals 1

    const/16 v0, 0x8

    .line 167
    div-int/2addr v0, p0

    const/4 p0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static onNavigationEvent(Lo/ɩ;Lo/ǃ;Lo/getCardBackgroundColor;Z)I
    .locals 4

    const/16 v0, 0x8

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 77
    :cond_1
    invoke-static {p0, p2}, Lo/getConversionData;->extraCallback(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p3

    .line 79
    sget-object v1, Lo/getConversionData;->onNavigationEvent:Lo/getRotation;

    .line 1326
    iget v2, p2, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v2, :cond_2

    iget v2, p2, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v2, :cond_3

    .line 1327
    :cond_2
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 1224
    :cond_3
    iget v2, p2, Lo/getCardBackgroundColor;->ICustomTabsCallback:I

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 80
    invoke-static {p0, p2}, Lo/getConversionData;->onMessageChannelReady(Lo/ɩ;Lo/getCardBackgroundColor;)I

    move-result p0

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x5a

    const/4 v3, 0x1

    if-eq p3, v1, :cond_5

    const/16 v1, 0x10e

    if-eq p3, v1, :cond_5

    const/4 p3, 0x5

    if-eq p0, p3, :cond_5

    const/4 p3, 0x7

    if-ne p0, p3, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_9

    .line 2326
    iget p0, p2, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz p0, :cond_7

    iget p0, p2, Lo/getCardBackgroundColor;->onTransact:I

    if-gez p0, :cond_8

    .line 2327
    :cond_7
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 2236
    :cond_8
    iget p0, p2, Lo/getCardBackgroundColor;->onTransact:I

    goto :goto_1

    .line 3326
    :cond_9
    iget p0, p2, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz p0, :cond_a

    iget p0, p2, Lo/getCardBackgroundColor;->onTransact:I

    if-gez p0, :cond_b

    .line 3327
    :cond_a
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3230
    :cond_b
    iget p0, p2, Lo/getCardBackgroundColor;->asInterface:I

    :goto_1
    if-eqz v2, :cond_e

    .line 4326
    iget p3, p2, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz p3, :cond_c

    iget p3, p2, Lo/getCardBackgroundColor;->onTransact:I

    if-gez p3, :cond_d

    .line 4327
    :cond_c
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 4230
    :cond_d
    iget p2, p2, Lo/getCardBackgroundColor;->asInterface:I

    goto :goto_2

    .line 5326
    :cond_e
    iget p3, p2, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz p3, :cond_f

    iget p3, p2, Lo/getCardBackgroundColor;->onTransact:I

    if-gez p3, :cond_10

    .line 5327
    :cond_f
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 5236
    :cond_10
    iget p2, p2, Lo/getCardBackgroundColor;->onTransact:I

    :goto_2
    if-nez p1, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_3

    .line 6141
    :cond_11
    iget p3, p1, Lo/ǃ;->extraCallback:I

    int-to-float p3, p3

    int-to-float p0, p0

    div-float/2addr p3, p0

    .line 6142
    iget v1, p1, Lo/ǃ;->onPostMessage:I

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 6143
    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    mul-float v1, p0, p3

    .line 6145
    iget v2, p1, Lo/ǃ;->ICustomTabsCallback:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_12

    .line 6146
    iget p3, p1, Lo/ǃ;->ICustomTabsCallback:F

    div-float/2addr p3, p0

    :cond_12
    mul-float p0, p2, p3

    .line 6148
    iget v1, p1, Lo/ǃ;->ICustomTabsCallback:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_13

    .line 6149
    iget p0, p1, Lo/ǃ;->ICustomTabsCallback:F

    div-float/2addr p0, p2

    goto :goto_3

    :cond_13
    move p0, p3

    .line 94
    :goto_3
    iget p1, p1, Lo/ǃ;->onNavigationEvent:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float p0, p0, p2

    add-float/2addr p1, p0

    float-to-int p0, p1

    if-le p0, v0, :cond_14

    return v0

    :cond_14
    if-gtz p0, :cond_15

    return v3

    :cond_15
    return p0
.end method

.method private static onPostMessage(Lo/getCardBackgroundColor;)I
    .locals 2

    .line 13326
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_0

    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_1

    .line 13327
    :cond_0
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 13218
    :cond_1
    iget v0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 14326
    :cond_2
    iget v0, p0, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_3

    iget v0, p0, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_4

    .line 14327
    :cond_3
    invoke-virtual {p0}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 14218
    :cond_4
    iget p0, p0, Lo/getCardBackgroundColor;->onNavigationEvent:I

    return p0
.end method
