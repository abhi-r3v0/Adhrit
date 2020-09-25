.class final Lo/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method static onMessageChannelReady(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/Shader;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 90
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gradient"

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 96
    sget-object v3, Lo/getIconUri$onPostMessage;->GradientColor:[I

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object/from16 v5, p0

    .line 1253
    invoke-virtual {v5, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    .line 1255
    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 98
    :goto_0
    sget v6, Lo/getIconUri$onPostMessage;->GradientColor_android_startX:I

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v8, "startX"

    .line 3058
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v10, 0x0

    if-nez v8, :cond_2

    const/4 v12, 0x0

    goto :goto_2

    .line 2074
    :cond_2
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v12, v6

    .line 100
    :goto_2
    sget v6, Lo/getIconUri$onPostMessage;->GradientColor_android_startY:I

    const-string/jumbo v8, "startY"

    .line 4058
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_4

    const/4 v13, 0x0

    goto :goto_4

    .line 3074
    :cond_4
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v13, v6

    .line 102
    :goto_4
    sget v6, Lo/getIconUri$onPostMessage;->GradientColor_android_endX:I

    const-string v8, "endX"

    .line 5058
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_6

    const/4 v14, 0x0

    goto :goto_6

    .line 4074
    :cond_6
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v14, v6

    .line 104
    :goto_6
    sget v6, Lo/getIconUri$onPostMessage;->GradientColor_android_endY:I

    const-string v8, "endY"

    .line 6058
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    .line 5074
    :cond_8
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    move v15, v6

    .line 106
    :goto_8
    sget v6, Lo/getIconUri$onPostMessage;->GradientColor_android_centerX:I

    const-string v8, "centerX"

    .line 7058
    invoke-interface {v0, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    goto :goto_9

    :cond_9
    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_a

    const/4 v6, 0x0

    goto :goto_a

    .line 6074
    :cond_a
    invoke-virtual {v3, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 108
    :goto_a
    sget v8, Lo/getIconUri$onPostMessage;->GradientColor_android_centerY:I

    const-string v11, "centerY"

    .line 8058
    invoke-interface {v0, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    if-nez v11, :cond_c

    const/4 v8, 0x0

    goto :goto_c

    .line 7074
    :cond_c
    invoke-virtual {v3, v8, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 110
    :goto_c
    sget v11, Lo/getIconUri$onPostMessage;->GradientColor_android_type:I

    const-string/jumbo v9, "type"

    .line 9058
    invoke-interface {v0, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    if-nez v9, :cond_e

    const/4 v9, 0x0

    goto :goto_e

    .line 8108
    :cond_e
    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 112
    :goto_e
    sget v11, Lo/getIconUri$onPostMessage;->GradientColor_android_startColor:I

    const-string/jumbo v10, "startColor"

    .line 10058
    invoke-interface {v0, v7, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_f

    :cond_f
    const/4 v10, 0x0

    :goto_f
    if-nez v10, :cond_10

    const/4 v10, 0x0

    goto :goto_10

    .line 9126
    :cond_10
    invoke-virtual {v3, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    :goto_10
    const-string v11, "centerColor"

    .line 11058
    invoke-interface {v0, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_11

    const/16 v23, 0x1

    goto :goto_11

    :cond_11
    const/16 v23, 0x0

    .line 115
    :goto_11
    sget v4, Lo/getIconUri$onPostMessage;->GradientColor_android_centerColor:I

    .line 12058
    invoke-interface {v0, v7, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    goto :goto_12

    :cond_12
    const/4 v11, 0x0

    :goto_12
    if-nez v11, :cond_13

    const/4 v4, 0x0

    goto :goto_13

    :cond_13
    const/4 v11, 0x0

    .line 11126
    invoke-virtual {v3, v4, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 117
    :goto_13
    sget v11, Lo/getIconUri$onPostMessage;->GradientColor_android_endColor:I

    const-string v1, "endColor"

    .line 13058
    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_14

    :cond_14
    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_15

    const/4 v11, 0x0

    goto :goto_15

    :cond_15
    const/4 v1, 0x0

    .line 12126
    invoke-virtual {v3, v11, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 119
    :goto_15
    sget v1, Lo/getIconUri$onPostMessage;->GradientColor_android_tileMode:I

    const-string/jumbo v2, "tileMode"

    .line 14058
    invoke-interface {v0, v7, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_16

    :cond_16
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_17

    const/4 v1, 0x0

    goto :goto_17

    :cond_17
    const/4 v2, 0x0

    .line 13108
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 121
    :goto_17
    sget v2, Lo/getIconUri$onPostMessage;->GradientColor_android_gradientRadius:I

    const-string v5, "gradientRadius"

    .line 15058
    invoke-interface {v0, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    const/16 v18, 0x1

    goto :goto_18

    :cond_18
    const/16 v18, 0x0

    :goto_18
    if-nez v18, :cond_19

    const/16 v19, 0x0

    goto :goto_19

    :cond_19
    const/4 v5, 0x0

    .line 14074
    invoke-virtual {v3, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    move/from16 v19, v2

    .line 123
    :goto_19
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    invoke-static/range {p0 .. p3}, Lo/MediaDescriptionCompatApi21$Builder;->onPostMessage(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;

    move-result-object v0

    move/from16 v2, v23

    .line 126
    invoke-static {v0, v10, v11, v2, v4}, Lo/MediaDescriptionCompatApi21$Builder;->onPostMessage(Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;IIZI)Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v9, v2, :cond_1b

    const/4 v2, 0x2

    if-eq v9, v2, :cond_1a

    .line 141
    new-instance v2, Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    iget-object v0, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    .line 142
    invoke-static {v1}, Lo/MediaDescriptionCompatApi21$Builder;->onPostMessage(I)Landroid/graphics/Shader$TileMode;

    move-result-object v18

    move-object v11, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v2

    .line 137
    :cond_1a
    new-instance v1, Landroid/graphics/SweepGradient;

    iget-object v2, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    iget-object v0, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    invoke-direct {v1, v6, v8, v2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v1

    :cond_1b
    const/4 v2, 0x0

    cmpg-float v2, v19, v2

    if-lez v2, :cond_1c

    .line 134
    new-instance v2, Landroid/graphics/RadialGradient;

    iget-object v3, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->onPostMessage:[I

    iget-object v0, v0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;->extraCallback:[F

    .line 135
    invoke-static {v1}, Lo/MediaDescriptionCompatApi21$Builder;->onPostMessage(I)Landroid/graphics/Shader$TileMode;

    move-result-object v22

    move-object/from16 v16, v2

    move/from16 v17, v6

    move/from16 v18, v8

    move-object/from16 v20, v3

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v22}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v2

    .line 131
    :cond_1c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": invalid gradient color tag "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static onPostMessage(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 209
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 206
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 204
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private static onPostMessage(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v0, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_4

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    if-gt v5, v0, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "item"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    sget-object v3, Lo/getIconUri$onPostMessage;->GradientColorItem:[I

    const/4 v5, 0x0

    if-nez p3, :cond_2

    .line 15253
    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_1

    .line 15255
    :cond_2
    invoke-virtual {p3, p2, v3, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 169
    :goto_1
    sget v6, Lo/getIconUri$onPostMessage;->GradientColorItem_android_color:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    .line 170
    sget v7, Lo/getIconUri$onPostMessage;->GradientColorItem_android_offset:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v6, :cond_3

    if-eqz v7, :cond_3

    .line 178
    sget v6, Lo/getIconUri$onPostMessage;->GradientColorItem_android_color:I

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 179
    sget v6, Lo/getIconUri$onPostMessage;->GradientColorItem_android_offset:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 180
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_5

    new-instance p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;

    invoke-direct {p0, v4, v2}, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onPostMessage(Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;IIZI)Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 195
    new-instance p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;

    invoke-direct {p0, p1, p4, p2}, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;-><init>(III)V

    return-object p0

    .line 197
    :cond_1
    new-instance p0, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;

    invoke-direct {p0, p1, p2}, Lo/MediaDescriptionCompatApi21$Builder$ICustomTabsCallback;-><init>(II)V

    return-object p0
.end method
