.class public Lo/MediaDescriptionCompatApi23;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaDescriptionCompatApi23$onNavigationEvent;,
        Lo/MediaDescriptionCompatApi23$onPostMessage;,
        Lo/MediaDescriptionCompatApi23$onMessageChannelReady;,
        Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method private static ICustomTabsCallback(Landroid/content/res/TypedArray;I)I
    .locals 2

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    return p0

    .line 233
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 234
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 235
    iget p0, v0, Landroid/util/TypedValue;->type:I

    return p0
.end method

.method private static ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 194
    sget-object v1, Lo/getIconUri$onPostMessage;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    sget v1, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    sget v2, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderPackage:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    sget v3, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderQuery:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    sget v4, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderCerts:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 199
    sget v5, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderFetchStrategy:I

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 201
    sget v6, Lo/getIconUri$onPostMessage;->FontFamily_fontProviderFetchTimeout:I

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v0, 0x3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 205
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v0, :cond_0

    .line 206
    invoke-static {p0}, Lo/MediaDescriptionCompatApi23;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p1, v4}, Lo/MediaDescriptionCompatApi23;->onPostMessage(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object p0

    .line 209
    new-instance p1, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;

    new-instance v0, Lo/extraCallback$onPostMessage;

    invoke-direct {v0, v1, v2, v3, p0}, Lo/extraCallback$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p1, v0, v5, v6}, Lo/MediaDescriptionCompatApi23$onMessageChannelReady;-><init>(Lo/extraCallback$onPostMessage;II)V

    return-object p1

    .line 212
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 214
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "font"

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-static {p0, p1}, Lo/MediaDescriptionCompatApi23;->onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$onPostMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_3
    invoke-static {p0}, Lo/MediaDescriptionCompatApi23;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 222
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_5
    new-instance p0, Lo/MediaDescriptionCompatApi23$onNavigationEvent;

    .line 226
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lo/MediaDescriptionCompatApi23$onPostMessage;

    .line 225
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lo/MediaDescriptionCompatApi23$onPostMessage;

    invoke-direct {p0, p1}, Lo/MediaDescriptionCompatApi23$onNavigationEvent;-><init>([Lo/MediaDescriptionCompatApi23$onPostMessage;)V

    return-object p0
.end method

.method private static extraCallback([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 278
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static extraCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 176
    invoke-static {p0, p1}, Lo/MediaDescriptionCompatApi23;->onPostMessage(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;

    move-result-object p0

    return-object p0

    .line 174
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extraCallback(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    .line 320
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static onMessageChannelReady(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$onPostMessage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 286
    sget-object v1, Lo/getIconUri$onPostMessage;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 287
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontWeight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontWeight:I

    goto :goto_0

    .line 289
    :cond_0
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_android_fontWeight:I

    :goto_0
    const/16 v1, 0x190

    .line 290
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 291
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontStyle:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontStyle:I

    goto :goto_1

    .line 293
    :cond_1
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_android_fontStyle:I

    :goto_1
    const/4 v1, 0x0

    .line 294
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 295
    :goto_2
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_ttcIndex:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_ttcIndex:I

    goto :goto_3

    .line 297
    :cond_3
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_android_ttcIndex:I

    .line 299
    :goto_3
    sget v2, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    sget v2, Lo/getIconUri$onPostMessage;->FontFamilyFont_fontVariationSettings:I

    goto :goto_4

    .line 301
    :cond_4
    sget v2, Lo/getIconUri$onPostMessage;->FontFamilyFont_android_fontVariationSettings:I

    .line 302
    :goto_4
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 304
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_font:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_font:I

    goto :goto_5

    .line 306
    :cond_5
    sget v0, Lo/getIconUri$onPostMessage;->FontFamilyFont_android_font:I

    .line 307
    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    .line 311
    invoke-static {p0}, Lo/MediaDescriptionCompatApi23;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 313
    :cond_6
    new-instance p0, Lo/MediaDescriptionCompatApi23$onPostMessage;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lo/MediaDescriptionCompatApi23$onPostMessage;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object p0
.end method

.method public static onPostMessage(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 255
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 258
    invoke-static {v0, v2}, Lo/MediaDescriptionCompatApi23;->ICustomTabsCallback(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 p1, 0x0

    .line 259
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 260
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/MediaDescriptionCompatApi23;->extraCallback([Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/MediaDescriptionCompatApi23;->extraCallback([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    throw p0
.end method

.method private static onPostMessage(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "font-family"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 181
    invoke-interface {p0, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {p0, p1}, Lo/MediaDescriptionCompatApi23;->ICustomTabsCallback(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Lo/MediaDescriptionCompatApi23$ICustomTabsCallback;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    invoke-static {p0}, Lo/MediaDescriptionCompatApi23;->extraCallback(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v1
.end method
