.class public Lo/getPlaybackState$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getPlaybackState$extraCallback;

.field public static final ICustomTabsCallback$Stub:Lo/getPlaybackState$extraCallback;

.field public static final ICustomTabsCallback$Stub$Proxy:Lo/getPlaybackState$extraCallback;

.field public static final ICustomTabsService:Lo/getPlaybackState$extraCallback;

.field public static final ICustomTabsService$Stub:Lo/getPlaybackState$extraCallback;

.field public static final ICustomTabsService$Stub$Proxy:Lo/getPlaybackState$extraCallback;

.field public static final INotificationSideChannel:Lo/getPlaybackState$extraCallback;

.field public static final INotificationSideChannel$Default:Lo/getPlaybackState$extraCallback;

.field public static final INotificationSideChannel$Stub:Lo/getPlaybackState$extraCallback;

.field public static final INotificationSideChannel$Stub$Proxy:Lo/getPlaybackState$extraCallback;

.field public static final IPostMessageService:Lo/getPlaybackState$extraCallback;

.field public static final IPostMessageService$Stub:Lo/getPlaybackState$extraCallback;

.field public static final IPostMessageService$Stub$Proxy:Lo/getPlaybackState$extraCallback;

.field public static final IconCompatParcelizer:Lo/getPlaybackState$extraCallback;

.field public static final asBinder:Lo/getPlaybackState$extraCallback;

.field public static final asInterface:Lo/getPlaybackState$extraCallback;

.field public static final cancel:Lo/getPlaybackState$extraCallback;

.field public static final cancelAll:Lo/getPlaybackState$extraCallback;

.field public static final extraCallback:Lo/getPlaybackState$extraCallback;

.field public static final extraCommand:Lo/getPlaybackState$extraCallback;

.field public static final getDefaultImpl:Lo/getPlaybackState$extraCallback;

.field public static final getInterfaceDescriptor:Lo/getPlaybackState$extraCallback;

.field public static final mayLaunchUrl:Lo/getPlaybackState$extraCallback;

.field public static final newSession:Lo/getPlaybackState$extraCallback;

.field public static final notify:Lo/getPlaybackState$extraCallback;

.field public static final onMessageChannelReady:Lo/getPlaybackState$extraCallback;

.field public static final onNavigationEvent:Lo/getPlaybackState$extraCallback;

.field public static final onPostMessage:Lo/getPlaybackState$extraCallback;

.field public static final onRelationshipValidationResult:Lo/getPlaybackState$extraCallback;

.field public static final onTransact:Lo/getPlaybackState$extraCallback;

.field public static final postMessage:Lo/getPlaybackState$extraCallback;

.field public static final read:Lo/getPlaybackState$extraCallback;

.field public static final requestPostMessageChannel:Lo/getPlaybackState$extraCallback;

.field public static final setDefaultImpl:Lo/getPlaybackState$extraCallback;

.field public static final updateVisuals:Lo/getPlaybackState$extraCallback;

.field public static final validateRelationship:Lo/getPlaybackState$extraCallback;

.field public static final warmup:Lo/getPlaybackState$extraCallback;


# instance fields
.field final AudioAttributesCompatParcelizer:Ljava/lang/Object;

.field private final MediaBrowserCompat:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lo/getRatingType$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final RemoteActionCompatParcelizer:I

.field protected final write:Lo/getRatingType;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 103
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->onNavigationEvent:Lo/getPlaybackState$extraCallback;

    .line 109
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->extraCallback:Lo/getPlaybackState$extraCallback;

    .line 116
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->onMessageChannelReady:Lo/getPlaybackState$extraCallback;

    .line 123
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsCallback:Lo/getPlaybackState$extraCallback;

    .line 130
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->onPostMessage:Lo/getPlaybackState$extraCallback;

    .line 136
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->asInterface:Lo/getPlaybackState$extraCallback;

    .line 143
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->asBinder:Lo/getPlaybackState$extraCallback;

    .line 150
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x80

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsCallback$Stub:Lo/getPlaybackState$extraCallback;

    .line 198
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$onNavigationEvent;

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->onRelationshipValidationResult:Lo/getPlaybackState$extraCallback;

    .line 247
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$onNavigationEvent;

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->onTransact:Lo/getPlaybackState$extraCallback;

    .line 269
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$onPostMessage;

    const/16 v3, 0x400

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->getInterfaceDescriptor:Lo/getPlaybackState$extraCallback;

    .line 291
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$onPostMessage;

    const/16 v3, 0x800

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/getPlaybackState$extraCallback;

    .line 299
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x1000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->warmup:Lo/getPlaybackState$extraCallback;

    .line 306
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x2000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->newSession:Lo/getPlaybackState$extraCallback;

    .line 313
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/16 v2, 0x4000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsService:Lo/getPlaybackState$extraCallback;

    .line 319
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const v2, 0x8000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->postMessage:Lo/getPlaybackState$extraCallback;

    .line 325
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/high16 v2, 0x10000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->requestPostMessageChannel:Lo/getPlaybackState$extraCallback;

    .line 351
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$asBinder;

    const/high16 v3, 0x20000

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->extraCommand:Lo/getPlaybackState$extraCallback;

    .line 359
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/high16 v2, 0x40000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->mayLaunchUrl:Lo/getPlaybackState$extraCallback;

    .line 366
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/high16 v2, 0x80000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->updateVisuals:Lo/getPlaybackState$extraCallback;

    .line 373
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const/high16 v2, 0x100000

    invoke-direct {v0, v2, v1}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->validateRelationship:Lo/getPlaybackState$extraCallback;

    .line 393
    new-instance v0, Lo/getPlaybackState$extraCallback;

    const-class v2, Lo/getRatingType$onTransact;

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Lo/getPlaybackState$extraCallback;-><init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsService$Stub$Proxy:Lo/getPlaybackState$extraCallback;

    .line 403
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 404
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 405
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_ON_SCREEN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    const v6, 0x1020036

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->IPostMessageService:Lo/getPlaybackState$extraCallback;

    .line 420
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 421
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 422
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v1

    :goto_1
    const v12, 0x1020037

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 423
    const-class v15, Lo/getRatingType$onMessageChannelReady;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->ICustomTabsService$Stub:Lo/getPlaybackState$extraCallback;

    .line 429
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 430
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_2

    .line 431
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    const v6, 0x1020038

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->IPostMessageService$Stub:Lo/getPlaybackState$extraCallback;

    .line 436
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 437
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    .line 438
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object v11, v1

    :goto_3
    const v12, 0x1020039

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->cancelAll:Lo/getPlaybackState$extraCallback;

    .line 444
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 445
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_4

    .line 446
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    const v6, 0x102003a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->IPostMessageService$Stub$Proxy:Lo/getPlaybackState$extraCallback;

    .line 452
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 453
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_5

    .line 454
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object v11, v1

    :goto_5
    const v12, 0x102003b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->INotificationSideChannel:Lo/getPlaybackState$extraCallback;

    .line 461
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 462
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    if-lt v2, v10, :cond_6

    .line 463
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_6

    :cond_6
    move-object v5, v1

    :goto_6
    const v6, 0x1020046

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->cancel:Lo/getPlaybackState$extraCallback;

    .line 470
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 471
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_7

    .line 472
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object v12, v1

    :goto_7
    const v13, 0x1020047

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->notify:Lo/getPlaybackState$extraCallback;

    .line 479
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 480
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_8

    .line 481
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_8

    :cond_8
    move-object v5, v1

    :goto_8
    const v6, 0x1020048

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->INotificationSideChannel$Stub$Proxy:Lo/getPlaybackState$extraCallback;

    .line 488
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 489
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_9

    .line 490
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v12, v2

    goto :goto_9

    :cond_9
    move-object v12, v1

    :goto_9
    const v13, 0x1020049

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->INotificationSideChannel$Stub:Lo/getPlaybackState$extraCallback;

    .line 496
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 497
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_a

    .line 498
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CONTEXT_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v5, v2

    goto :goto_a

    :cond_a
    move-object v5, v1

    :goto_a
    const v6, 0x102003c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->getDefaultImpl:Lo/getPlaybackState$extraCallback;

    .line 511
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 512
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_b

    .line 513
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v11, v2

    goto :goto_b

    :cond_b
    move-object v11, v1

    :goto_b
    const v12, 0x102003d

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-class v15, Lo/getRatingType$asInterface;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->INotificationSideChannel$Default:Lo/getPlaybackState$extraCallback;

    .line 524
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 525
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_c

    .line 526
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_MOVE_WINDOW:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v3, v2

    goto :goto_c

    :cond_c
    move-object v3, v1

    :goto_c
    const v4, 0x1020042

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v7, Lo/getRatingType$ICustomTabsCallback;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->setDefaultImpl:Lo/getPlaybackState$extraCallback;

    .line 533
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 534
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_d

    .line 535
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SHOW_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-object v9, v2

    goto :goto_d

    :cond_d
    move-object v9, v1

    :goto_d
    const v10, 0x1020044

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->IconCompatParcelizer:Lo/getPlaybackState$extraCallback;

    .line 542
    new-instance v0, Lo/getPlaybackState$extraCallback;

    .line 543
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_e

    .line 544
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_HIDE_TOOLTIP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    :cond_e
    move-object v15, v1

    const v16, 0x1020045

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    sput-object v0, Lo/getPlaybackState$extraCallback;->read:Lo/getPlaybackState$extraCallback;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    .line 564
    invoke-direct/range {v0 .. v5}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "+",
            "Lo/getRatingType$extraCallback;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 587
    invoke-direct/range {v0 .. v5}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 582
    invoke-direct/range {v0 .. v5}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/CharSequence;",
            "Lo/getRatingType;",
            "Ljava/lang/Class<",
            "+",
            "Lo/getRatingType$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p2, p0, Lo/getPlaybackState$extraCallback;->RemoteActionCompatParcelizer:I

    .line 594
    iput-object p4, p0, Lo/getPlaybackState$extraCallback;->write:Lo/getRatingType;

    .line 595
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p4, v0, :cond_0

    if-nez p1, :cond_0

    .line 596
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    goto :goto_0

    .line 598
    :cond_0
    iput-object p1, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    .line 600
    :goto_0
    iput-object p5, p0, Lo/getPlaybackState$extraCallback;->MediaBrowserCompat:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 678
    :cond_0
    instance-of v1, p1, Lo/getPlaybackState$extraCallback;

    if-nez v1, :cond_1

    return v0

    .line 681
    :cond_1
    check-cast p1, Lo/getPlaybackState$extraCallback;

    .line 683
    iget-object v1, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 684
    iget-object p1, p1, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    if-eqz p1, :cond_3

    return v0

    .line 687
    :cond_2
    iget-object p1, p1, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 670
    iget-object v0, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady()I
    .locals 2

    .line 609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 610
    iget-object v0, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNavigationEvent()Ljava/lang/CharSequence;
    .locals 2

    .line 623
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lo/getPlaybackState$extraCallback;->AudioAttributesCompatParcelizer:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/CharSequence;Lo/getRatingType;)Lo/getPlaybackState$extraCallback;
    .locals 7

    .line 664
    new-instance v6, Lo/getPlaybackState$extraCallback;

    iget v2, p0, Lo/getPlaybackState$extraCallback;->RemoteActionCompatParcelizer:I

    iget-object v5, p0, Lo/getPlaybackState$extraCallback;->MediaBrowserCompat:Ljava/lang/Class;

    const/4 v1, 0x0

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/getPlaybackState$extraCallback;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Lo/getRatingType;Ljava/lang/Class;)V

    return-object v6
.end method

.method public onNavigationEvent(Landroid/view/View;Landroid/os/Bundle;)Z
    .locals 2

    .line 639
    iget-object p2, p0, Lo/getPlaybackState$extraCallback;->write:Lo/getRatingType;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 641
    iget-object p2, p0, Lo/getPlaybackState$extraCallback;->MediaBrowserCompat:Ljava/lang/Class;

    if-eqz p2, :cond_1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 644
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 647
    iget-object v0, p0, Lo/getPlaybackState$extraCallback;->MediaBrowserCompat:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 649
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to execute command with argument class ViewCommandArgument: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "A11yActionCompat"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    :cond_1
    :goto_1
    iget-object p2, p0, Lo/getPlaybackState$extraCallback;->write:Lo/getRatingType;

    invoke-interface {p2, p1}, Lo/getRatingType;->onPostMessage(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method
