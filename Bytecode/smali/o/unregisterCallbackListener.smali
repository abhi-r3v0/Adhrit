.class public Lo/unregisterCallbackListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/unregisterCallbackListener$onMessageChannelReady;,
        Lo/unregisterCallbackListener$onPostMessage;,
        Lo/unregisterCallbackListener$ICustomTabsCallback;,
        Lo/unregisterCallbackListener$onRelationshipValidationResult;,
        Lo/unregisterCallbackListener$extraCallback;,
        Lo/unregisterCallbackListener$onNavigationEvent;,
        Lo/unregisterCallbackListener$ICustomTabsCallback$Stub;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Z

.field private static ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lo/getLaunchPendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static asBinder:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static asInterface:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static extraCallback:Z

.field private static getInterfaceDescriptor:Lo/unregisterCallbackListener$extraCallback;

.field private static final newSession:[I

.field private static onMessageChannelReady:Ljava/lang/reflect/Field;

.field private static onNavigationEvent:Ljava/lang/reflect/Field;

.field private static final onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static onRelationshipValidationResult:Ljava/lang/reflect/Field;

.field private static onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 461
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lo/unregisterCallbackListener;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 473
    sput-object v0, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    .line 477
    sput-boolean v0, Lo/unregisterCallbackListener;->onTransact:Z

    const/16 v2, 0x20

    new-array v2, v2, [I

    .line 1226
    sget v3, Lo/getIconUri$extraCallback;->accessibility_custom_action_0:I

    aput v3, v2, v0

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_1:I

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_2:I

    const/4 v1, 0x2

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_3:I

    const/4 v1, 0x3

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_4:I

    const/4 v1, 0x4

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_5:I

    const/4 v1, 0x5

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_6:I

    const/4 v1, 0x6

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_7:I

    const/4 v1, 0x7

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_8:I

    const/16 v1, 0x8

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_9:I

    const/16 v1, 0x9

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_10:I

    const/16 v1, 0xa

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_11:I

    const/16 v1, 0xb

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_12:I

    const/16 v1, 0xc

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_13:I

    const/16 v1, 0xd

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_14:I

    const/16 v1, 0xe

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_15:I

    const/16 v1, 0xf

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_16:I

    const/16 v1, 0x10

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_17:I

    const/16 v1, 0x11

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_18:I

    const/16 v1, 0x12

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_19:I

    const/16 v1, 0x13

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_20:I

    const/16 v1, 0x14

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_21:I

    const/16 v1, 0x15

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_22:I

    const/16 v1, 0x16

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_23:I

    const/16 v1, 0x17

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_24:I

    const/16 v1, 0x18

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_25:I

    const/16 v1, 0x19

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_26:I

    const/16 v1, 0x1a

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_27:I

    const/16 v1, 0x1b

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_28:I

    const/16 v1, 0x1c

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_29:I

    const/16 v1, 0x1d

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_30:I

    const/16 v1, 0x1e

    aput v0, v2, v1

    sget v0, Lo/getIconUri$extraCallback;->accessibility_custom_action_31:I

    const/16 v1, 0x1f

    aput v0, v2, v1

    sput-object v2, Lo/unregisterCallbackListener;->newSession:[I

    .line 4171
    new-instance v0, Lo/unregisterCallbackListener$extraCallback;

    invoke-direct {v0}, Lo/unregisterCallbackListener$extraCallback;-><init>()V

    sput-object v0, Lo/unregisterCallbackListener;->getInterfaceDescriptor:Lo/unregisterCallbackListener$extraCallback;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 3851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static AudioAttributesCompatParcelizer(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 2

    .line 935
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 936
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0

    .line 938
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->read(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback()Landroid/graphics/Rect;
    .locals 2

    .line 482
    sget-object v0, Lo/unregisterCallbackListener;->asInterface:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/unregisterCallbackListener;->asInterface:Ljava/lang/ThreadLocal;

    .line 485
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->asInterface:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 488
    sget-object v1, Lo/unregisterCallbackListener;->asInterface:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 490
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0
.end method

.method public static ICustomTabsCallback(Landroid/view/View;Lo/getVolumeAttributes;Landroid/graphics/Rect;)Lo/getVolumeAttributes;
    .locals 2

    .line 2601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2602
    invoke-static {p0, p1, p2}, Lo/unregisterCallbackListener$ICustomTabsCallback;->onMessageChannelReady(Landroid/view/View;Lo/getVolumeAttributes;Landroid/graphics/Rect;)Lo/getVolumeAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method static ICustomTabsCallback(Landroid/view/View;)Lo/onSessionDestroyed;
    .locals 1

    .line 924
    invoke-static {p0}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;)Lo/onSessionDestroyed;

    move-result-object v0

    if-nez v0, :cond_0

    .line 926
    new-instance v0, Lo/onSessionDestroyed;

    invoke-direct {v0}, Lo/onSessionDestroyed;-><init>()V

    .line 928
    :cond_0
    invoke-static {p0, v0}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Landroid/view/View;I)V
    .locals 6

    .line 3295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3296
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void

    .line 3297
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3298
    invoke-static {}, Lo/unregisterCallbackListener;->ICustomTabsCallback()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 3301
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3302
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 3303
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 3304
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3307
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3308
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3307
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 3312
    :cond_1
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onRelationshipValidationResult(Landroid/view/View;I)V

    if-eqz v1, :cond_2

    .line 3316
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3317
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 3316
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3318
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void

    .line 3321
    :cond_3
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onRelationshipValidationResult(Landroid/view/View;I)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;II)V
    .locals 2

    .line 3492
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3493
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 3403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3404
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;Lo/ArrayCreatingInputMerger$extraCallback;)V
    .locals 2

    .line 2463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2465
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    .line 2469
    :cond_0
    new-instance v0, Lo/unregisterCallbackListener$4;

    invoke-direct {v0, p1}, Lo/unregisterCallbackListener$4;-><init>(Lo/ArrayCreatingInputMerger$extraCallback;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    return-void
.end method

.method public static ICustomTabsCallback(Landroid/view/View;Lo/getPlaybackState$extraCallback;Ljava/lang/CharSequence;Lo/getRatingType;)V
    .locals 0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 1296
    invoke-virtual {p1}, Lo/getPlaybackState$extraCallback;->onMessageChannelReady()I

    move-result p1

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onMessageChannelReady(Landroid/view/View;I)V

    return-void

    .line 1298
    :cond_0
    invoke-virtual {p1, p2, p3}, Lo/getPlaybackState$extraCallback;->onNavigationEvent(Ljava/lang/CharSequence;Lo/getRatingType;)Lo/getPlaybackState$extraCallback;

    move-result-object p1

    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onPostMessage(Landroid/view/View;Lo/getPlaybackState$extraCallback;)V

    return-void
.end method

.method static ICustomTabsCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3871
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3874
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener$onRelationshipValidationResult;->onNavigationEvent(Landroid/view/View;)Lo/unregisterCallbackListener$onRelationshipValidationResult;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo/unregisterCallbackListener$onRelationshipValidationResult;->onPostMessage(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback$Stub(Landroid/view/View;)I
    .locals 2

    .line 1557
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1558
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ICustomTabsCallback$Stub(Landroid/view/View;I)V
    .locals 0

    .line 3374
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3375
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3376
    invoke-static {p0}, Lo/unregisterCallbackListener;->write(Landroid/view/View;)V

    .line 3378
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 3379
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3380
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lo/unregisterCallbackListener;->write(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static ICustomTabsCallback$Stub$Proxy(Landroid/view/View;)I
    .locals 2

    .line 1802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1803
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    return p0

    .line 1805
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method public static ICustomTabsService(Landroid/view/View;)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2280
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    return p0
.end method

.method public static ICustomTabsService$Stub(Landroid/view/View;)Z
    .locals 2

    .line 2665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2666
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ICustomTabsService$Stub$Proxy(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 2

    .line 2692
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2693
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 2695
    :cond_0
    instance-of v0, p0, Lo/IMediaControllerCallback$Stub$Proxy;

    if-eqz v0, :cond_1

    .line 2696
    check-cast p0, Lo/IMediaControllerCallback$Stub$Proxy;

    invoke-interface {p0}, Lo/IMediaControllerCallback$Stub$Proxy;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static INotificationSideChannel(Landroid/view/View;)V
    .locals 2

    .line 2857
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2858
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    return-void

    .line 2859
    :cond_0
    instance-of v0, p0, Lo/onShuffleModeChanged;

    if-eqz v0, :cond_1

    .line 2860
    check-cast p0, Lo/onShuffleModeChanged;

    invoke-interface {p0}, Lo/onShuffleModeChanged;->stopNestedScroll()V

    :cond_1
    return-void
.end method

.method public static INotificationSideChannel$Default(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 3995
    invoke-static {}, Lo/unregisterCallbackListener;->onNavigationEvent()Lo/unregisterCallbackListener$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static INotificationSideChannel$Stub(Landroid/view/View;)Z
    .locals 2

    .line 3428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3429
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 3431
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static INotificationSideChannel$Stub$Proxy(Landroid/view/View;)Z
    .locals 1

    .line 3922
    invoke-static {}, Lo/unregisterCallbackListener;->onPostMessage()Lo/unregisterCallbackListener$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3923
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static IPostMessageService(Landroid/view/View;)Lo/getVolumeAttributes;
    .locals 2

    .line 2581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2582
    invoke-static {p0}, Lo/unregisterCallbackListener$onPostMessage;->extraCallback(Landroid/view/View;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static IPostMessageService$Stub(Landroid/view/View;)Z
    .locals 2

    .line 2652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2653
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static IPostMessageService$Stub$Proxy(Landroid/view/View;)F
    .locals 2

    .line 3265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3266
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static IconCompatParcelizer(Landroid/view/View;)Z
    .locals 1

    .line 4035
    invoke-static {}, Lo/unregisterCallbackListener;->onMessageChannelReady()Lo/unregisterCallbackListener$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/unregisterCallbackListener$onNavigationEvent;->ICustomTabsCallback(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4036
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static RemoteActionCompatParcelizer(Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lo/getPlaybackState$extraCallback;",
            ">;"
        }
    .end annotation

    .line 1340
    sget v0, Lo/getIconUri$extraCallback;->tag_accessibility_actions:I

    .line 1341
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    sget v1, Lo/getIconUri$extraCallback;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static asBinder(Landroid/view/View;)I
    .locals 2

    .line 1091
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1092
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static asBinder(Landroid/view/View;I)V
    .locals 6

    .line 3343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3344
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void

    .line 3345
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3346
    invoke-static {}, Lo/unregisterCallbackListener;->ICustomTabsCallback()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 3349
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 3350
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 3351
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    .line 3352
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3355
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3356
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 3355
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 3360
    :cond_1
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;I)V

    if-eqz v1, :cond_2

    .line 3364
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 3365
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    .line 3364
    invoke-virtual {v0, p1, v1, v3, p0}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 3366
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    return-void

    .line 3369
    :cond_3
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;I)V

    return-void
.end method

.method public static asInterface(Landroid/view/View;)I
    .locals 2

    .line 1786
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1787
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    return p0

    .line 1789
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public static cancel(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 3418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3419
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cancelAll(Landroid/view/View;)Z
    .locals 2

    .line 3234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3235
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    return p0

    .line 3237
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback()I
    .locals 3

    .line 3758
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3759
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0

    .line 3762
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const v2, 0xffffff

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3766
    :cond_1
    sget-object v2, Lo/unregisterCallbackListener;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method private static extraCallback(ILandroid/view/View;)V
    .locals 2

    .line 1329
    invoke-static {p1}, Lo/unregisterCallbackListener;->RemoteActionCompatParcelizer(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 1330
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1331
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getPlaybackState$extraCallback;

    invoke-virtual {v1}, Lo/getPlaybackState$extraCallback;->onMessageChannelReady()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1332
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static extraCallback(Landroid/view/View;)V
    .locals 2

    .line 1007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void

    .line 1010
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public static extraCallback(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2086
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method public static extraCallback(Landroid/view/View;I)V
    .locals 2

    .line 1118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 1120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 1128
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public static extraCallback(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 2755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2756
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2758
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_5

    .line 2761
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2762
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2763
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 2765
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2766
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2768
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    .line 2771
    :cond_4
    instance-of v0, p0, Lo/IMediaControllerCallback$Stub$Proxy;

    if-eqz v0, :cond_5

    .line 2772
    check-cast p0, Lo/IMediaControllerCallback$Stub$Proxy;

    invoke-interface {p0, p1}, Lo/IMediaControllerCallback$Stub$Proxy;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_5
    return-void
.end method

.method public static extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2679
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 2681
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static extraCallback(Landroid/view/View;Lo/getPlaybackState;)V
    .locals 0

    .line 684
    invoke-virtual {p1}, Lo/getPlaybackState;->onPostMessage()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public static extraCallback(Landroid/view/View;Z)V
    .locals 2

    .line 992
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 993
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_0
    return-void
.end method

.method public static extraCommand(Landroid/view/View;)Z
    .locals 2

    .line 2424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2425
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getDefaultImpl(Landroid/view/View;)Landroid/view/Display;
    .locals 2

    .line 3539
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3540
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 3542
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3543
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 3545
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInterfaceDescriptor(Landroid/view/View;)I
    .locals 3

    .line 1946
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1947
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p0

    return p0

    .line 1950
    :cond_0
    sget-boolean v0, Lo/unregisterCallbackListener;->ICustomTabsCallback:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1952
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1953
    sput-object v1, Lo/unregisterCallbackListener;->onNavigationEvent:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1957
    :catch_0
    sput-boolean v0, Lo/unregisterCallbackListener;->ICustomTabsCallback:Z

    .line 1960
    :cond_1
    sget-object v0, Lo/unregisterCallbackListener;->onNavigationEvent:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1962
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static mayLaunchUrl(Landroid/view/View;)F
    .locals 2

    .line 2298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2299
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;
    .locals 2

    .line 2014
    sget-object v0, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 2015
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    .line 2017
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getLaunchPendingIntent;

    if-nez v0, :cond_1

    .line 2019
    new-instance v0, Lo/getLaunchPendingIntent;

    invoke-direct {v0, p0}, Lo/getLaunchPendingIntent;-><init>(Landroid/view/View;)V

    .line 2020
    sget-object v1, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static notify(Landroid/view/View;)Z
    .locals 2

    .line 2816
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2817
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    .line 2819
    :cond_0
    instance-of v0, p0, Lo/onShuffleModeChanged;

    if-eqz v0, :cond_1

    .line 2820
    check-cast p0, Lo/onShuffleModeChanged;

    invoke-interface {p0}, Lo/onShuffleModeChanged;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static onMessageChannelReady(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 2

    .line 2496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2497
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onRelationshipValidationResult()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2499
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 2500
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2502
    invoke-static {p0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static onMessageChannelReady()Lo/unregisterCallbackListener$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/unregisterCallbackListener$onNavigationEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4056
    new-instance v0, Lo/unregisterCallbackListener$5;

    sget v1, Lo/getIconUri$extraCallback;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lo/unregisterCallbackListener$5;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2071
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;I)V
    .locals 2

    .line 1321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1322
    invoke-static {p1, p0}, Lo/unregisterCallbackListener;->extraCallback(ILandroid/view/View;)V

    const/4 p1, 0x0

    .line 1323
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onTransact(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .locals 2

    .line 513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 514
    invoke-static/range {p0 .. p6}, Lo/unregisterCallbackListener$onMessageChannelReady;->onPostMessage(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 2708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2709
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2711
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne p1, v1, :cond_5

    .line 2714
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2715
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2716
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 2718
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2719
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2721
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    .line 2724
    :cond_4
    instance-of v0, p0, Lo/IMediaControllerCallback$Stub$Proxy;

    if-eqz v0, :cond_5

    .line 2725
    check-cast p0, Lo/IMediaControllerCallback$Stub$Proxy;

    invoke-interface {p0, p1}, Lo/IMediaControllerCallback$Stub$Proxy;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Lo/onSessionDestroyed;)V
    .locals 1

    if-nez p1, :cond_0

    .line 715
    invoke-static {p0}, Lo/unregisterCallbackListener;->AudioAttributesCompatParcelizer(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Lo/onSessionDestroyed$extraCallback;

    if-eqz v0, :cond_0

    .line 716
    new-instance p1, Lo/onSessionDestroyed;

    invoke-direct {p1}, Lo/onSessionDestroyed;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p1}, Lo/onSessionDestroyed;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;Z)V
    .locals 1

    .line 4052
    invoke-static {}, Lo/unregisterCallbackListener;->onMessageChannelReady()Lo/unregisterCallbackListener$onNavigationEvent;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lo/unregisterCallbackListener$onNavigationEvent;->extraCallback(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/view/View;)Z
    .locals 2

    .line 978
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 979
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Landroid/view/View;)I
    .locals 2

    .line 772
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 773
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onNavigationEvent(Landroid/view/View;Lo/getVolumeAttributes;)Lo/getVolumeAttributes;
    .locals 2

    .line 2524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2525
    invoke-virtual {p1}, Lo/getVolumeAttributes;->onRelationshipValidationResult()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2527
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    .line 2528
    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2530
    invoke-static {v0}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static onNavigationEvent()Lo/unregisterCallbackListener$onNavigationEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/unregisterCallbackListener$onNavigationEvent<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 3999
    new-instance v0, Lo/unregisterCallbackListener$1;

    sget v1, Lo/getIconUri$extraCallback;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lo/unregisterCallbackListener$1;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static onNavigationEvent(Landroid/view/View;I)V
    .locals 2

    .line 1771
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1772
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    :cond_0
    return-void
.end method

.method public static onNavigationEvent(Landroid/view/View;IIII)V
    .locals 2

    .line 1823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1824
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void

    .line 1826
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static onNavigationEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 2333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2334
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void

    .line 2336
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->asBinder:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2337
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lo/unregisterCallbackListener;->asBinder:Ljava/util/WeakHashMap;

    .line 2339
    :cond_1
    sget-object v0, Lo/unregisterCallbackListener;->asBinder:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onNavigationEvent(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1192
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static onNavigationEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 3879
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3882
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener$onRelationshipValidationResult;->onNavigationEvent(Landroid/view/View;)Lo/unregisterCallbackListener$onRelationshipValidationResult;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lo/unregisterCallbackListener$onRelationshipValidationResult;->extraCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static onPostMessage(Landroid/view/View;)Lo/onSessionDestroyed;
    .locals 1

    .line 912
    invoke-static {p0}, Lo/unregisterCallbackListener;->AudioAttributesCompatParcelizer(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 916
    :cond_0
    instance-of v0, p0, Lo/onSessionDestroyed$extraCallback;

    if-eqz v0, :cond_1

    .line 917
    check-cast p0, Lo/onSessionDestroyed$extraCallback;

    iget-object p0, p0, Lo/onSessionDestroyed$extraCallback;->ICustomTabsCallback:Lo/onSessionDestroyed;

    return-object p0

    .line 919
    :cond_1
    new-instance v0, Lo/onSessionDestroyed;

    invoke-direct {v0, p0}, Lo/onSessionDestroyed;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    return-object v0
.end method

.method private static onPostMessage()Lo/unregisterCallbackListener$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/unregisterCallbackListener$onNavigationEvent<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 3927
    new-instance v0, Lo/unregisterCallbackListener$2;

    sget v1, Lo/getIconUri$extraCallback;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lo/unregisterCallbackListener$2;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static onPostMessage(Landroid/view/View;F)V
    .locals 2

    .line 2287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2288
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/view/View;I)V
    .locals 2

    .line 816
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 817
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    :cond_0
    return-void
.end method

.method public static onPostMessage(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 1047
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1048
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 1050
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static onPostMessage(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2

    .line 1069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1070
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 1072
    :cond_0
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static onPostMessage(Landroid/view/View;Lo/getPlaybackState$extraCallback;)V
    .locals 2

    .line 1304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1305
    invoke-static {p0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;)Lo/onSessionDestroyed;

    .line 1306
    invoke-virtual {p1}, Lo/getPlaybackState$extraCallback;->onMessageChannelReady()I

    move-result v0

    invoke-static {v0, p0}, Lo/unregisterCallbackListener;->extraCallback(ILandroid/view/View;)V

    .line 1307
    invoke-static {p0}, Lo/unregisterCallbackListener;->RemoteActionCompatParcelizer(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1308
    invoke-static {p0, p1}, Lo/unregisterCallbackListener;->onTransact(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static onRelationshipValidationResult(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 2

    .line 1595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1596
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0

    .line 1598
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method private static onRelationshipValidationResult(Landroid/view/View;I)V
    .locals 0

    .line 3326
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3327
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3328
    invoke-static {p0}, Lo/unregisterCallbackListener;->write(Landroid/view/View;)V

    .line 3330
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 3331
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3332
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lo/unregisterCallbackListener;->write(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static onTransact(Landroid/view/View;)I
    .locals 2

    .line 1735
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1736
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static onTransact(Landroid/view/View;I)V
    .locals 2

    .line 4147
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4148
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4151
    :cond_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->INotificationSideChannel$Default(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4154
    :goto_0
    invoke-static {p0}, Lo/unregisterCallbackListener;->onTransact(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    .line 4155
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 4161
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4163
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not fully implement ViewParent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    .line 4156
    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    goto :goto_2

    :cond_5
    const/16 v0, 0x800

    .line 4157
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4159
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4160
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static postMessage(Landroid/view/View;)I
    .locals 2

    .line 2368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2369
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static read(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 4

    .line 944
    sget-boolean v0, Lo/unregisterCallbackListener;->onTransact:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 947
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->onRelationshipValidationResult:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 949
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 950
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 951
    sput-object v0, Lo/unregisterCallbackListener;->onRelationshipValidationResult:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 953
    :catchall_0
    sput-boolean v2, Lo/unregisterCallbackListener;->onTransact:Z

    return-object v1

    .line 958
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lo/unregisterCallbackListener;->onRelationshipValidationResult:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 959
    instance-of v0, p0, Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_2

    .line 960
    check-cast p0, Landroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :cond_2
    return-object v1

    .line 964
    :catchall_1
    sput-boolean v2, Lo/unregisterCallbackListener;->onTransact:Z

    return-object v1
.end method

.method public static requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 2355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2356
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2358
    :cond_0
    sget-object v0, Lo/unregisterCallbackListener;->asBinder:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2361
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static setDefaultImpl(Landroid/view/View;)Z
    .locals 2

    .line 3440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 3441
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static updateVisuals(Landroid/view/View;)V
    .locals 2

    .line 2379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2380
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void

    .line 2381
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2382
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_1
    return-void
.end method

.method public static validateRelationship(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .line 2737
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2738
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 2740
    :cond_0
    instance-of v0, p0, Lo/IMediaControllerCallback$Stub$Proxy;

    if-eqz v0, :cond_1

    .line 2741
    check-cast p0, Lo/IMediaControllerCallback$Stub$Proxy;

    invoke-interface {p0}, Lo/IMediaControllerCallback$Stub$Proxy;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static warmup(Landroid/view/View;)I
    .locals 3

    .line 1980
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1981
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    .line 1984
    :cond_0
    sget-boolean v0, Lo/unregisterCallbackListener;->extraCallback:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1986
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1987
    sput-object v1, Lo/unregisterCallbackListener;->onMessageChannelReady:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1991
    :catch_0
    sput-boolean v0, Lo/unregisterCallbackListener;->extraCallback:Z

    .line 1994
    :cond_1
    sget-object v0, Lo/unregisterCallbackListener;->onMessageChannelReady:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 1996
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static write(Landroid/view/View;)V
    .locals 2

    .line 3386
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 3387
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3388
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
