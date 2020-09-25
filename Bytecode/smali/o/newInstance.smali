.class public final Lo/newInstance;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ICustomTabsCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 66
    invoke-static {p0, p1, p2}, Lo/newInstance;->extraCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "CSLCompat"

    const-string p2, "Failed to inflate ColorStateList."

    .line 68
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static extraCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 89
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 98
    invoke-static {p0, p1, v0, p2}, Lo/newInstance;->onPostMessage(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 128
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x14

    new-array v4, v3, [[I

    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 136
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_b

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v1, :cond_0

    const/4 v9, 0x3

    if-eq v7, v9, :cond_b

    :cond_0
    const/4 v9, 0x2

    if-ne v7, v9, :cond_a

    if-gt v8, v1, :cond_a

    .line 139
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 143
    sget-object v7, Lo/getIconUri$onPostMessage;->ColorStateListItem:[I

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    invoke-static {v8, v9, v0, v7}, Lo/newInstance;->onPostMessage(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 144
    sget v10, Lo/getIconUri$onPostMessage;->ColorStateListItem_android_color:I

    const v11, -0xff01

    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 148
    sget v11, Lo/getIconUri$onPostMessage;->ColorStateListItem_android_alpha:I

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v11, :cond_1

    .line 149
    sget v11, Lo/getIconUri$onPostMessage;->ColorStateListItem_android_alpha:I

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    goto :goto_1

    .line 150
    :cond_1
    sget v11, Lo/getIconUri$onPostMessage;->ColorStateListItem_alpha:I

    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    sget v11, Lo/getIconUri$onPostMessage;->ColorStateListItem_alpha:I

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 154
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    .line 159
    new-array v11, v7, [I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v7, :cond_5

    .line 161
    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v15

    const v2, 0x10101a5

    if-eq v15, v2, :cond_4

    const v2, 0x101031f

    if-eq v15, v2, :cond_4

    .line 162
    sget v2, Lo/getIconUri$onMessageChannelReady;->alpha:I

    if-eq v15, v2, :cond_4

    add-int/lit8 v2, v14, 0x1

    .line 165
    invoke-interface {v0, v13, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_3

    :cond_3
    neg-int v15, v15

    .line 166
    :goto_3
    aput v15, v11, v14

    move v14, v2

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 169
    :cond_5
    invoke-static {v11, v14}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 174
    invoke-static {v10, v12}, Lo/newInstance;->onNavigationEvent(IF)I

    move-result v7

    add-int/lit8 v10, v6, 0x1

    .line 1056
    array-length v11, v3

    const/16 v12, 0x8

    const/4 v13, 0x4

    if-le v10, v11, :cond_7

    if-gt v6, v13, :cond_6

    const/16 v11, 0x8

    goto :goto_4

    :cond_6
    shl-int/lit8 v11, v6, 0x1

    .line 1057
    :goto_4
    new-array v11, v11, [I

    .line 1058
    invoke-static {v3, v5, v11, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v11

    .line 1061
    :cond_7
    aput v7, v3, v6

    .line 2042
    array-length v7, v4

    if-le v10, v7, :cond_9

    .line 2043
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    if-gt v6, v13, :cond_8

    goto :goto_5

    :cond_8
    shl-int/lit8 v12, v6, 0x1

    :goto_5
    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 2045
    invoke-static {v4, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v7

    .line 2048
    :cond_9
    aput-object v2, v4, v6

    .line 177
    check-cast v4, [[I

    move v6, v10

    goto :goto_6

    :cond_a
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    :cond_b
    new-array v0, v6, [I

    .line 182
    new-array v1, v6, [[I

    .line 183
    invoke-static {v3, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    invoke-static {v4, v5, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private static onNavigationEvent(IF)I
    .locals 1

    .line 198
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static onPostMessage(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selector"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {p0, p1, p2, p3}, Lo/newInstance;->extraCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": invalid color state list tag "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    if-nez p1, :cond_0

    .line 191
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 192
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method
