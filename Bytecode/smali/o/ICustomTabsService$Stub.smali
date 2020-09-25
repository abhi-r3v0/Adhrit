.class Lo/ICustomTabsService$Stub;
.super Lo/IPostMessageService$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ICustomTabsService$Stub$extraCallback;
    }
.end annotation


# instance fields
.field private onNavigationEvent:Z

.field private onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Lo/ICustomTabsService$Stub;-><init>(Lo/ICustomTabsService$Stub$extraCallback;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lo/ICustomTabsService$Stub$extraCallback;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Lo/IPostMessageService$Stub;-><init>()V

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p0, p1}, Lo/ICustomTabsService$Stub;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lo/ICustomTabsService$Stub$extraCallback;Landroid/content/res/Resources;)V
    .locals 1

    .line 403
    invoke-direct {p0}, Lo/IPostMessageService$Stub;-><init>()V

    .line 405
    new-instance v0, Lo/ICustomTabsService$Stub$extraCallback;

    invoke-direct {v0, p1, p0, p2}, Lo/ICustomTabsService$Stub$extraCallback;-><init>(Lo/ICustomTabsService$Stub$extraCallback;Lo/ICustomTabsService$Stub;Landroid/content/res/Resources;)V

    .line 406
    invoke-virtual {p0, v0}, Lo/ICustomTabsService$Stub;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ICustomTabsService$Stub;->onStateChange([I)Z

    return-void
.end method

.method private onNavigationEvent(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    .line 158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 159
    iget v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    .line 161
    :cond_0
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_variablePadding:I

    iget-boolean v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 163
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_constantSize:I

    iget-boolean v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    .line 165
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_enterFadeDuration:I

    iget v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    .line 167
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_exitFadeDuration:I

    iget v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    .line 169
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_dither:I

    iget-boolean v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    return-void
.end method

.method private onPostMessage(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    .line 180
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 183
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_8

    .line 184
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v1, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    if-gt v4, v1, :cond_0

    .line 189
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    sget-object v3, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawableItem:[I

    if-nez p5, :cond_2

    .line 2253
    invoke-virtual {p2, p4, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 2255
    invoke-virtual {p5, p4, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    .line 197
    sget v6, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawableItem_android_drawable:I

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_3

    .line 200
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v4

    invoke-virtual {v4, p1, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 202
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-virtual {p0, p4}, Lo/ICustomTabsService$Stub;->onPostMessage(Landroid/util/AttributeSet;)[I

    move-result-object v3

    if-nez v4, :cond_7

    .line 208
    :cond_4
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_6

    .line 217
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_5

    .line 218
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 220
    :cond_5
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_2

    .line 212
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_7
    :goto_2
    invoke-virtual {v0, v3, v4}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([ILandroid/graphics/drawable/Drawable;)I

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V
    .locals 1

    .line 397
    invoke-super {p0, p1}, Lo/IPostMessageService$Stub;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    .line 398
    instance-of v0, p1, Lo/ICustomTabsService$Stub$extraCallback;

    if-eqz v0, :cond_0

    .line 399
    check-cast p1, Lo/ICustomTabsService$Stub$extraCallback;

    iput-object p1, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Lo/IPostMessageService$Stub;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ICustomTabsService$Stub;->onStateChange([I)Z

    return-void
.end method

.method extraCallback()Lo/ICustomTabsService$Stub$extraCallback;
    .locals 3

    .line 319
    new-instance v0, Lo/ICustomTabsService$Stub$extraCallback;

    iget-object v1, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/ICustomTabsService$Stub$extraCallback;-><init>(Lo/ICustomTabsService$Stub$extraCallback;Lo/ICustomTabsService$Stub;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 310
    iget-boolean v0, p0, Lo/ICustomTabsService$Stub;->onNavigationEvent:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/IPostMessageService$Stub;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 311
    iget-object v0, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    invoke-virtual {v0}, Lo/ICustomTabsService$Stub$extraCallback;->onNavigationEvent()V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lo/ICustomTabsService$Stub;->onNavigationEvent:Z

    :cond_0
    return-object p0
.end method

.method synthetic onMessageChannelReady()Lo/IPostMessageService$Stub$onNavigationEvent;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lo/ICustomTabsService$Stub;->extraCallback()Lo/ICustomTabsService$Stub$extraCallback;

    move-result-object v0

    return-object v0
.end method

.method public onNavigationEvent(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    sget-object v0, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable:[I

    if-nez p5, :cond_0

    .line 1253
    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1255
    invoke-virtual {p5, p4, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    :goto_0
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->StateListDrawable_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 145
    invoke-direct {p0, v0}, Lo/ICustomTabsService$Stub;->onNavigationEvent(Landroid/content/res/TypedArray;)V

    .line 146
    invoke-virtual {p0, p2}, Lo/ICustomTabsService$Stub;->onNavigationEvent(Landroid/content/res/Resources;)V

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    invoke-direct/range {p0 .. p5}, Lo/ICustomTabsService$Stub;->onPostMessage(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 149
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/ICustomTabsService$Stub;->onStateChange([I)Z

    return-void
.end method

.method onPostMessage(Landroid/util/AttributeSet;)[I
    .locals 8

    .line 235
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 236
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 238
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_1

    const v6, 0x10100d0

    if-eq v5, v6, :cond_1

    const v6, 0x1010199

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 248
    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    neg-int v5, v5

    .line 249
    :goto_1
    aput v5, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lo/IPostMessageService$Stub;->onStateChange([I)Z

    move-result v0

    .line 114
    iget-object v1, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    invoke-virtual {v1, p1}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([I)I

    move-result p1

    if-gez p1, :cond_0

    .line 120
    iget-object p1, p0, Lo/ICustomTabsService$Stub;->onPostMessage:Lo/ICustomTabsService$Stub$extraCallback;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lo/ICustomTabsService$Stub$extraCallback;->ICustomTabsCallback([I)I

    move-result p1

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lo/ICustomTabsService$Stub;->ICustomTabsCallback(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
