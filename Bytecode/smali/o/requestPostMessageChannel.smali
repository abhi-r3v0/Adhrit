.class public Lo/requestPostMessageChannel;
.super Lo/ICustomTabsService$Stub;
.source ""

# interfaces
.implements Lo/getMediaMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requestPostMessageChannel$onNavigationEvent;,
        Lo/requestPostMessageChannel$ICustomTabsCallback;,
        Lo/requestPostMessageChannel$onMessageChannelReady;,
        Lo/requestPostMessageChannel$extraCallback;,
        Lo/requestPostMessageChannel$onPostMessage;,
        Lo/requestPostMessageChannel$onRelationshipValidationResult;
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Ljava/lang/String;


# instance fields
.field private ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

.field private ICustomTabsCallback$Stub:Z

.field private extraCallback:I

.field private onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

.field private onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Lo/requestPostMessageChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/requestPostMessageChannel;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0}, Lo/requestPostMessageChannel;-><init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lo/ICustomTabsService$Stub;-><init>(Lo/ICustomTabsService$Stub$extraCallback;)V

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lo/requestPostMessageChannel;->extraCallback:I

    .line 107
    iput v0, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    .line 118
    new-instance v0, Lo/requestPostMessageChannel$ICustomTabsCallback;

    invoke-direct {v0, p1, p0, p2}, Lo/requestPostMessageChannel$ICustomTabsCallback;-><init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Lo/requestPostMessageChannel;Landroid/content/res/Resources;)V

    .line 119
    invoke-virtual {p0, v0}, Lo/requestPostMessageChannel;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/requestPostMessageChannel;->onStateChange([I)Z

    .line 121
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->jumpToCurrentState()V

    return-void
.end method

.method private ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    sget-object v0, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableTransition:[I

    const/4 v1, 0x0

    if-nez p5, :cond_0

    .line 2253
    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 2255
    :cond_0
    invoke-virtual {p5, p4, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 512
    :goto_0
    sget v2, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 514
    sget v4, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/4 v5, 0x0

    .line 517
    sget v6, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-lez v6, :cond_1

    .line 520
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v5

    invoke-virtual {v5, p1, v6}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 522
    :cond_1
    sget v6, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableTransition_android_reversible:I

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v5, :cond_6

    .line 529
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 537
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "animated-vector"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 538
    invoke-static {p1, p2, p3, p4, p5}, Lo/createItem;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/createItem;

    move-result-object v5

    goto :goto_1

    .line 540
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt p1, v5, :cond_4

    .line 541
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 543
    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 533
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eqz v5, :cond_8

    if-eq v2, v3, :cond_7

    if-eq v4, v3, :cond_7

    .line 554
    iget-object p1, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    invoke-virtual {p1, v2, v4, v5, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->onNavigationEvent(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    .line 551
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :cond_8
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private extraCallback(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 485
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 486
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    if-gt v3, v0, :cond_0

    .line 494
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 495
    invoke-direct/range {p0 .. p5}, Lo/requestPostMessageChannel;->onPostMessage(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    .line 496
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-direct/range {p0 .. p5}, Lo/requestPostMessageChannel;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_0

    :cond_3
    return-void
.end method

.method private extraCallback(I)Z
    .locals 9

    .line 293
    iget-object v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 295
    iget v2, p0, Lo/requestPostMessageChannel;->extraCallback:I

    if-ne p1, v2, :cond_0

    return v1

    .line 298
    :cond_0
    iget v2, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-virtual {v0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->extraCallback()V

    .line 301
    iget v0, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    iput v0, p0, Lo/requestPostMessageChannel;->extraCallback:I

    .line 302
    iput p1, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    return v1

    .line 306
    :cond_1
    iget v2, p0, Lo/requestPostMessageChannel;->extraCallback:I

    .line 308
    invoke-virtual {v0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->ICustomTabsCallback()V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->ICustomTabsCallback()I

    move-result v2

    :goto_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    const/4 v0, -0x1

    .line 314
    iput v0, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    .line 315
    iput v0, p0, Lo/requestPostMessageChannel;->extraCallback:I

    .line 316
    iget-object v0, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    .line 317
    invoke-virtual {v0, v2}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback(I)I

    move-result v3

    .line 318
    invoke-virtual {v0, p1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    if-nez v3, :cond_3

    goto :goto_2

    .line 323
    :cond_3
    invoke-virtual {v0, v3, v4}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback(II)I

    move-result v6

    if-gez v6, :cond_4

    return v5

    .line 328
    :cond_4
    invoke-virtual {v0, v3, v4}, Lo/requestPostMessageChannel$ICustomTabsCallback;->onPostMessage(II)Z

    move-result v7

    .line 330
    invoke-virtual {p0, v6}, Lo/requestPostMessageChannel;->ICustomTabsCallback(I)Z

    .line 332
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 333
    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_5

    .line 334
    invoke-virtual {v0, v3, v4}, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback(II)Z

    move-result v0

    .line 335
    new-instance v3, Lo/requestPostMessageChannel$extraCallback;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, Lo/requestPostMessageChannel$extraCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_1

    .line 337
    :cond_5
    instance-of v0, v6, Lo/createItem;

    if-eqz v0, :cond_6

    .line 339
    new-instance v3, Lo/requestPostMessageChannel$onMessageChannelReady;

    check-cast v6, Lo/createItem;

    invoke-direct {v3, v6}, Lo/requestPostMessageChannel$onMessageChannelReady;-><init>(Lo/createItem;)V

    goto :goto_1

    .line 340
    :cond_6
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_7

    .line 341
    new-instance v3, Lo/requestPostMessageChannel$onPostMessage;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, Lo/requestPostMessageChannel$onPostMessage;-><init>(Landroid/graphics/drawable/Animatable;)V

    .line 346
    :goto_1
    invoke-virtual {v3}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->onMessageChannelReady()V

    .line 347
    iput-object v3, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    .line 348
    iput v2, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    .line 349
    iput p1, p0, Lo/requestPostMessageChannel;->extraCallback:I

    return v1

    :cond_7
    :goto_2
    return v5
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/requestPostMessageChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 171
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Lo/requestPostMessageChannel;

    invoke-direct {v0}, Lo/requestPostMessageChannel;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 177
    invoke-virtual/range {v2 .. v7}, Lo/requestPostMessageChannel;->onNavigationEvent(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    .line 173
    :cond_0
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private onNavigationEvent()V
    .locals 1

    .line 472
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/requestPostMessageChannel;->onStateChange([I)Z

    return-void
.end method

.method private onPostMessage(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    sget-object v0, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableItem:[I

    const/4 v1, 0x0

    if-nez p5, :cond_0

    .line 3253
    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 3255
    :cond_0
    invoke-virtual {p5, p4, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 566
    :goto_0
    sget v2, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableItem_android_id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x0

    .line 569
    sget v3, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v4, -0x1

    .line 570
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_1

    .line 572
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 574
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 575
    invoke-virtual {p0, p4}, Lo/requestPostMessageChannel;->onPostMessage(Landroid/util/AttributeSet;)[I

    move-result-object p1

    const-string v0, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v2, :cond_6

    .line 580
    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 588
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vector"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    invoke-static {p2, p3, p4, p5}, Lo/MediaSessionCompatApi23$CallbackProxy;->ICustomTabsCallback(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lo/MediaSessionCompatApi23$CallbackProxy;

    move-result-object v2

    goto :goto_1

    .line 590
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    .line 591
    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 593
    :cond_4
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 584
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eqz v2, :cond_7

    .line 600
    iget-object p2, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    invoke-virtual {p2, p1, v2, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    .line 597
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    .line 451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 452
    iget v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->asBinder:I

    .line 455
    :cond_0
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 456
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 455
    invoke-virtual {v0, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->onPostMessage(Z)V

    .line 458
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->getInterfaceDescriptor:Z

    .line 459
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 458
    invoke-virtual {v0, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback(Z)V

    .line 461
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancel:I

    .line 462
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 461
    invoke-virtual {v0, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->onPostMessage(I)V

    .line 464
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->INotificationSideChannel:I

    .line 465
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 464
    invoke-virtual {v0, v1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->ICustomTabsCallback(I)V

    .line 467
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Lo/IPostMessageService$Stub$onNavigationEvent;->cancelAll:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V
    .locals 1

    .line 718
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->ICustomTabsCallback(Lo/IPostMessageService$Stub$onNavigationEvent;)V

    .line 719
    instance-of v0, p1, Lo/requestPostMessageChannel$ICustomTabsCallback;

    if-eqz v0, :cond_0

    .line 720
    check-cast p1, Lo/requestPostMessageChannel$ICustomTabsCallback;

    iput-object p1, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    :cond_0
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method synthetic extraCallback()Lo/ICustomTabsService$Stub$extraCallback;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->onPostMessage()Lo/requestPostMessageChannel$ICustomTabsCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    .line 89
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 264
    invoke-super {p0}, Lo/ICustomTabsService$Stub;->jumpToCurrentState()V

    .line 265
    iget-object v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    .line 268
    iget v0, p0, Lo/requestPostMessageChannel;->extraCallback:I

    invoke-virtual {p0, v0}, Lo/requestPostMessageChannel;->ICustomTabsCallback(I)Z

    const/4 v0, -0x1

    .line 269
    iput v0, p0, Lo/requestPostMessageChannel;->extraCallback:I

    .line 270
    iput v0, p0, Lo/requestPostMessageChannel;->onPostMessage:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 605
    iget-boolean v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ICustomTabsService$Stub;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 606
    iget-object v0, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/requestPostMessageChannel$ICustomTabsCallback;->onNavigationEvent()V

    const/4 v0, 0x1

    .line 607
    iput-boolean v0, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback$Stub:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->onLayoutDirectionChanged(I)Z

    move-result p1

    return p1
.end method

.method synthetic onMessageChannelReady()Lo/IPostMessageService$Stub$onNavigationEvent;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->onPostMessage()Lo/requestPostMessageChannel$ICustomTabsCallback;

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

    .line 201
    sget-object v0, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat:[I

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

    .line 203
    :goto_0
    sget v1, Lo/IPostMessageService$ICustomTabsCallback;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 205
    invoke-direct {p0, v0}, Lo/requestPostMessageChannel;->onPostMessage(Landroid/content/res/TypedArray;)V

    .line 206
    invoke-virtual {p0, p2}, Lo/requestPostMessageChannel;->onNavigationEvent(Landroid/content/res/Resources;)V

    .line 207
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    invoke-direct/range {p0 .. p5}, Lo/requestPostMessageChannel;->extraCallback(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 209
    invoke-direct {p0}, Lo/requestPostMessageChannel;->onNavigationEvent()V

    return-void
.end method

.method onPostMessage()Lo/requestPostMessageChannel$ICustomTabsCallback;
    .locals 3

    .line 614
    new-instance v0, Lo/requestPostMessageChannel$ICustomTabsCallback;

    iget-object v1, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lo/requestPostMessageChannel$ICustomTabsCallback;-><init>(Lo/requestPostMessageChannel$ICustomTabsCallback;Lo/requestPostMessageChannel;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 278
    iget-object v0, p0, Lo/requestPostMessageChannel;->onMessageChannelReady:Lo/requestPostMessageChannel$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/requestPostMessageChannel$ICustomTabsCallback;->extraCallback([I)I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->ICustomTabsCallback()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 280
    invoke-direct {p0, v0}, Lo/requestPostMessageChannel;->extraCallback(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lo/requestPostMessageChannel;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 284
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 286
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lo/ICustomTabsService$Stub;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lo/ICustomTabsService$Stub;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Lo/ICustomTabsService$Stub;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lo/ICustomTabsService$Stub;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 214
    invoke-super {p0, p1, p2}, Lo/ICustomTabsService$Stub;->setVisible(ZZ)Z

    move-result v0

    .line 215
    iget-object v1, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 217
    iget-object p1, p0, Lo/requestPostMessageChannel;->ICustomTabsCallback:Lo/requestPostMessageChannel$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/requestPostMessageChannel$onRelationshipValidationResult;->onMessageChannelReady()V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lo/requestPostMessageChannel;->jumpToCurrentState()V

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Lo/ICustomTabsService$Stub;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
