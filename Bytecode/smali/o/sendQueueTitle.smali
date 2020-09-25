.class public final Lo/sendQueueTitle;
.super Lo/fromQueueItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/sendQueueTitle$extraCallback;
    }
.end annotation


# static fields
.field private static ICustomTabsService:Lo/MediaSessionCompat$MediaSessionImplBase$Command;

.field private static final asBinder:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lo/sendQueueTitle$extraCallback;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final asInterface:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lo/sendQueueTitle$extraCallback;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final getInterfaceDescriptor:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final newSession:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:[Ljava/lang/String;

.field private static final warmup:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android:changeBounds:bounds"

    const-string v1, "android:changeBounds:clip"

    const-string v2, "android:changeBounds:parent"

    const-string v3, "android:changeBounds:windowX"

    const-string v4, "android:changeBounds:windowY"

    .line 61
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/sendQueueTitle;->onRelationshipValidationResult:[Ljava/lang/String;

    .line 69
    new-instance v0, Lo/sendQueueTitle$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lo/sendQueueTitle$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lo/sendQueueTitle$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lo/sendQueueTitle$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/sendQueueTitle;->asInterface:Landroid/util/Property;

    .line 100
    new-instance v0, Lo/sendQueueTitle$5;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lo/sendQueueTitle$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/sendQueueTitle;->asBinder:Landroid/util/Property;

    .line 113
    new-instance v0, Lo/sendQueueTitle$3;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lo/sendQueueTitle$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/sendQueueTitle;->getInterfaceDescriptor:Landroid/util/Property;

    .line 130
    new-instance v0, Lo/sendQueueTitle$1;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lo/sendQueueTitle$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/sendQueueTitle;->newSession:Landroid/util/Property;

    .line 147
    new-instance v0, Lo/sendQueueTitle$10;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lo/sendQueueTitle$10;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lo/sendQueueTitle;->warmup:Landroid/util/Property;

    .line 168
    new-instance v0, Lo/MediaSessionCompat$MediaSessionImplBase$Command;

    invoke-direct {v0}, Lo/MediaSessionCompat$MediaSessionImplBase$Command;-><init>()V

    sput-object v0, Lo/sendQueueTitle;->ICustomTabsService:Lo/MediaSessionCompat$MediaSessionImplBase$Command;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Lo/fromQueueItem;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lo/sendQueueTitle;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 176
    invoke-direct {p0, p1, p2}, Lo/fromQueueItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lo/sendQueueTitle;->ICustomTabsCallback$Stub$Proxy:Z

    .line 178
    sget-object v1, Lo/getQueueItem;->onPostMessage:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 179
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v1, "resizeClip"

    invoke-static {p1, p2, v1, v0, v0}, Lo/getText;->onMessageChannelReady(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    .line 181
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1205
    iput-boolean p2, p0, Lo/sendQueueTitle;->ICustomTabsCallback$Stub$Proxy:Z

    return-void
.end method

.method private onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 7

    .line 220
    iget-object v0, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    .line 222
    invoke-static {v0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    iget-object v1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    .line 223
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    iget-object v2, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-boolean v1, p0, Lo/sendQueueTitle;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v1, :cond_1

    .line 232
    iget-object p1, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v0}, Lo/unregisterCallbackListener;->cancel(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lo/sendQueueTitle;->onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    return-void
.end method

.method public final extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lo/sendQueueTitle;->onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    return-void
.end method

.method public final onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_1f

    if-nez v1, :cond_0

    goto/16 :goto_f

    .line 267
    :cond_0
    iget-object v3, v0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    .line 268
    iget-object v4, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    .line 269
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 270
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1e

    if-nez v4, :cond_1

    goto/16 :goto_e

    .line 274
    :cond_1
    iget-object v9, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    .line 276
    iget-object v3, v0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v4, "android:changeBounds:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 277
    iget-object v5, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 278
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 279
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 280
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 281
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 282
    iget v11, v3, Landroid/graphics/Rect;->right:I

    .line 283
    iget v12, v4, Landroid/graphics/Rect;->right:I

    .line 284
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 285
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v11, v5

    sub-int v14, v3, v7

    sub-int v15, v12, v6

    sub-int v2, v13, v10

    .line 290
    iget-object v0, v0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 291
    iget-object v1, v1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v2, :cond_7

    :cond_3
    if-ne v5, v6, :cond_5

    if-eq v7, v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v17, 0x1

    :goto_1
    if-ne v11, v12, :cond_6

    if-eq v3, v13, :cond_8

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_7
    const/16 v17, 0x0

    :cond_8
    :goto_2
    if-eqz v0, :cond_9

    .line 297
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    if-nez v0, :cond_b

    if-eqz v9, :cond_b

    :cond_a
    add-int/lit8 v17, v17, 0x1

    :cond_b
    move/from16 v1, v17

    if-lez v1, :cond_1d

    move-object/from16 v17, v9

    .line 303
    iget-boolean v9, v8, Lo/sendQueueTitle;->ICustomTabsCallback$Stub$Proxy:Z

    move-object/from16 v18, v0

    const/4 v0, 0x2

    if-nez v9, :cond_15

    move-object/from16 v9, v16

    .line 304
    invoke-static {v9, v5, v7, v11, v3}, Lo/equals;->extraCallback(Landroid/view/View;IIII)V

    if-ne v1, v0, :cond_10

    if-ne v4, v15, :cond_d

    if-ne v14, v2, :cond_d

    .line 308
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v1

    int-to-float v2, v5

    int-to-float v3, v7

    int-to-float v4, v6

    int-to-float v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 310
    sget-object v2, Lo/sendQueueTitle;->warmup:Landroid/util/Property;

    .line 2028
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_c

    const/4 v3, 0x0

    .line 2029
    invoke-static {v9, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_6

    .line 2031
    :cond_c
    new-instance v3, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v3, v2, v1}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v9, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_6

    .line 313
    :cond_d
    new-instance v1, Lo/sendQueueTitle$extraCallback;

    invoke-direct {v1, v9}, Lo/sendQueueTitle$extraCallback;-><init>(Landroid/view/View;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v2

    int-to-float v4, v5

    int-to-float v5, v7

    int-to-float v6, v6

    int-to-float v7, v10

    invoke-virtual {v2, v4, v5, v6, v7}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v2

    .line 316
    sget-object v4, Lo/sendQueueTitle;->asInterface:Landroid/util/Property;

    .line 3028
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_e

    const/4 v5, 0x0

    .line 3029
    invoke-static {v1, v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_3

    .line 3031
    :cond_e
    new-instance v5, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v5, v4, v2}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 319
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v4

    int-to-float v5, v11

    int-to-float v3, v3

    int-to-float v6, v12

    int-to-float v7, v13

    invoke-virtual {v4, v5, v3, v6, v7}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 321
    sget-object v4, Lo/sendQueueTitle;->asBinder:Landroid/util/Property;

    .line 4028
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_f

    const/4 v5, 0x0

    .line 4029
    invoke-static {v1, v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_4

    .line 4031
    :cond_f
    new-instance v5, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v5, v4, v3}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    invoke-static {v1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 323
    :goto_4
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 324
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 326
    new-instance v0, Lo/sendQueueTitle$8;

    invoke-direct {v0, v8, v1}, Lo/sendQueueTitle$8;-><init>(Lo/sendQueueTitle;Lo/sendQueueTitle$extraCallback;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v4

    goto :goto_6

    :cond_10
    if-ne v5, v6, :cond_13

    if-eq v7, v10, :cond_11

    goto :goto_5

    .line 339
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v1

    int-to-float v2, v11

    int-to-float v3, v3

    int-to-float v4, v12

    int-to-float v5, v13

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 341
    sget-object v2, Lo/sendQueueTitle;->getInterfaceDescriptor:Landroid/util/Property;

    .line 6028
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_12

    const/4 v3, 0x0

    .line 6029
    invoke-static {v9, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_6

    .line 6031
    :cond_12
    new-instance v3, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v3, v2, v1}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    invoke-static {v9, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_6

    .line 334
    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v1

    int-to-float v2, v5

    int-to-float v3, v7

    int-to-float v4, v6

    int-to-float v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 336
    sget-object v2, Lo/sendQueueTitle;->newSession:Landroid/util/Property;

    .line 5028
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_14

    const/4 v3, 0x0

    .line 5029
    invoke-static {v9, v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_6

    .line 5031
    :cond_14
    new-instance v3, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v3, v2, v1}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    invoke-static {v9, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_d

    :cond_15
    move-object/from16 v9, v16

    .line 345
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 346
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v5

    add-int/2addr v3, v7

    .line 348
    invoke-static {v9, v5, v7, v1, v3}, Lo/equals;->extraCallback(Landroid/view/View;IIII)V

    if-ne v5, v6, :cond_17

    if-eq v7, v10, :cond_16

    goto :goto_7

    :cond_16
    const/4 v11, 0x0

    goto :goto_9

    .line 353
    :cond_17
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lo/fromQueueItem;->asInterface()Lo/sendCaptioningEnabled;

    move-result-object v1

    int-to-float v3, v5

    int-to-float v5, v7

    int-to-float v7, v6

    int-to-float v11, v10

    invoke-virtual {v1, v3, v5, v7, v11}, Lo/sendCaptioningEnabled;->onMessageChannelReady(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 355
    sget-object v3, Lo/sendQueueTitle;->warmup:Landroid/util/Property;

    .line 7028
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v5, v7, :cond_18

    const/4 v5, 0x0

    .line 7029
    invoke-static {v9, v3, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_8

    .line 7031
    :cond_18
    new-instance v5, Lo/MediaSessionCompat$MediaSessionImplBase$1;

    invoke-direct {v5, v3, v1}, Lo/MediaSessionCompat$MediaSessionImplBase$1;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    invoke-static {v9, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    :goto_8
    move-object v3, v1

    move-object v11, v3

    :goto_9
    if-nez v18, :cond_19

    .line 360
    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v4, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_a

    :cond_19
    const/4 v3, 0x0

    move-object/from16 v1, v18

    :goto_a
    if-nez v17, :cond_1a

    .line 363
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v15, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_1a
    move-object/from16 v4, v17

    .line 366
    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 367
    invoke-static {v9, v1}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 368
    sget-object v2, Lo/sendQueueTitle;->ICustomTabsService:Lo/MediaSessionCompat$MediaSessionImplBase$Command;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const-string v3, "clipBounds"

    invoke-static {v9, v3, v2, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 370
    new-instance v15, Lo/sendQueueTitle$6;

    move-object v0, v15

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, v17

    move v4, v6

    move v5, v10

    move v6, v12

    const/4 v10, 0x1

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lo/sendQueueTitle$6;-><init>(Lo/sendQueueTitle;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v14, v15}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v2, v14

    goto :goto_c

    :cond_1b
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 388
    :goto_c
    invoke-static {v11, v2}, Lo/MediaSessionCompat$QueueItem$1;->onMessageChannelReady(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 391
    :goto_d
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1c

    .line 392
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 393
    invoke-static {v1, v10}, Lo/getExtraBinder;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    .line 394
    new-instance v2, Lo/sendQueueTitle$7;

    invoke-direct {v2, v8, v1}, Lo/sendQueueTitle$7;-><init>(Lo/sendQueueTitle;Landroid/view/ViewGroup;)V

    .line 421
    invoke-virtual {v8, v2}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    :cond_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0

    :cond_1e
    :goto_e
    const/4 v0, 0x0

    return-object v0

    :cond_1f
    :goto_f
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onNavigationEvent()[Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Lo/sendQueueTitle;->onRelationshipValidationResult:[Ljava/lang/String;

    return-object v0
.end method
