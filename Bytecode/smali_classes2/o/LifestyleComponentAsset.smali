.class public final Lo/LifestyleComponentAsset;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final extraCallback:J


# instance fields
.field private final ICustomTabsCallback:Landroid/content/Context;

.field private ICustomTabsCallback$Stub:Lo/LifestyleSectionJsonAdapter;

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/util/DisplayMetrics;

.field private ICustomTabsService:Z

.field private asBinder:Landroid/content/BroadcastReceiver;

.field private asInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/LifestyleTemplateProperties;",
            ">;"
        }
    .end annotation
.end field

.field private newSession:Lo/getColorSectionPos;

.field private onMessageChannelReady:Landroid/app/Application;

.field private final onNavigationEvent:Landroid/view/WindowManager;

.field private final onPostMessage:Landroid/os/PowerManager;

.field private onRelationshipValidationResult:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Landroid/app/KeyguardManager;

.field private final updateVisuals:Landroid/graphics/Rect;

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lo/WinningTypes;->createFromParcel:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lo/LifestyleComponentAsset;->extraCallback:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/getColorSectionPos;

    sget-wide v1, Lo/LifestyleComponentAsset;->extraCallback:J

    invoke-direct {v0, v1, v2}, Lo/getColorSectionPos;-><init>(J)V

    iput-object v0, p0, Lo/LifestyleComponentAsset;->newSession:Lo/getColorSectionPos;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsService:Z

    const/4 v0, -0x1

    iput v0, p0, Lo/LifestyleComponentAsset;->warmup:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/LifestyleComponentAsset;->getInterfaceDescriptor:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lo/LifestyleComponentAsset;->onNavigationEvent:Landroid/view/WindowManager;

    iget-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lo/LifestyleComponentAsset;->onPostMessage:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lo/LifestyleComponentAsset;->onTransact:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lo/LifestyleComponentAsset;->onMessageChannelReady:Landroid/app/Application;

    new-instance v1, Lo/LifestyleSectionJsonAdapter;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0, p0}, Lo/LifestyleSectionJsonAdapter;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub:Lo/LifestyleSectionJsonAdapter;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub$Proxy:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lo/LifestyleComponentAsset;->updateVisuals:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/LifestyleComponentAsset;->onNavigationEvent:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lo/LifestyleComponentAsset;->updateVisuals:Landroid/graphics/Rect;

    iget-object v0, p0, Lo/LifestyleComponentAsset;->onNavigationEvent:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lo/LifestyleComponentAsset;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/view/View;)V

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/LifestyleComponentAsset;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/getAccount_number;->onMessageChannelReady(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2}, Lo/LifestyleComponentAsset;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method private final ICustomTabsCallback(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/LifestyleComponentAsset;->asInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lo/LifestyleSection;

    invoke-direct {v0, p0}, Lo/LifestyleSection;-><init>(Lo/LifestyleComponentAsset;)V

    iput-object v0, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lo/getParcel;->getDefaultImpl()Lo/getListTransaction;

    move-result-object v0

    iget-object v1, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lo/getListTransaction;->extraCallback(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    iget-object p1, p0, Lo/LifestyleComponentAsset;->onMessageChannelReady:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub:Lo/LifestyleSectionJsonAdapter;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/LifestyleComponentAsset;I)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    return-void
.end method

.method private final extraCallback(I)I
    .locals 1

    iget-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub$Proxy:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final extraCallback(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lo/LifestyleComponentAsset;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lo/LifestyleComponentAsset;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iput p2, p0, Lo/LifestyleComponentAsset;->warmup:I

    :cond_2
    return-void
.end method

.method private final onMessageChannelReady(I)V
    .locals 30

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lo/LifestyleComponentAsset;->getInterfaceDescriptor:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lo/LifestyleComponentAsset;->onRelationshipValidationResult:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v12, v0, [I

    new-array v0, v0, [I

    if-eqz v3, :cond_4

    invoke-virtual {v3, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v15, "Failure getting view location."

    invoke-static {v15, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    aget v0, v12, v5

    iput v0, v8, Landroid/graphics/Rect;->left:I

    aget v0, v12, v4

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v13

    move/from16 v26, v14

    goto :goto_3

    :cond_4
    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_3
    const/16 v0, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    goto :goto_4

    :cond_5
    const/16 v12, 0x8

    :goto_4
    iget v13, v1, Lo/LifestyleComponentAsset;->warmup:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    move v12, v13

    :cond_6
    if-nez v7, :cond_7

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v7

    iget-object v13, v1, Lo/LifestyleComponentAsset;->onPostMessage:Landroid/os/PowerManager;

    iget-object v14, v1, Lo/LifestyleComponentAsset;->onTransact:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3, v13, v14}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v24, :cond_7

    if-eqz v26, :cond_7

    if-nez v12, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    if-eqz v6, :cond_8

    iget-object v6, v1, Lo/LifestyleComponentAsset;->newSession:Lo/getColorSectionPos;

    invoke-virtual {v6}, Lo/getColorSectionPos;->onPostMessage()Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, v1, Lo/LifestyleComponentAsset;->ICustomTabsService:Z

    if-ne v7, v6, :cond_8

    return-void

    :cond_8
    if-nez v7, :cond_9

    iget-boolean v6, v1, Lo/LifestyleComponentAsset;->ICustomTabsService:Z

    if-nez v6, :cond_9

    if-ne v2, v4, :cond_9

    return-void

    :cond_9
    new-instance v2, Lo/LifestyleResponseCard;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v4

    invoke-interface {v4}, Lo/component15;->onPostMessage()J

    move-result-wide v16

    iget-object v4, v1, Lo/LifestyleComponentAsset;->onPostMessage:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v3, :cond_a

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/getAccount_number;->onMessageChannelReady(Landroid/view/View;)Z

    move-result v5

    move/from16 v19, v5

    goto :goto_6

    :cond_a
    const/16 v19, 0x0

    :goto_6
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v20, v0

    goto :goto_7

    :cond_b
    const/16 v20, 0x8

    :goto_7
    iget-object v0, v1, Lo/LifestyleComponentAsset;->updateVisuals:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-direct {v1, v8}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    invoke-direct {v1, v9}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-direct {v1, v10}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v25

    invoke-direct {v1, v11}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v27

    iget-object v0, v1, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub$Proxy:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move-object v15, v2

    move/from16 v28, v0

    move/from16 v29, v7

    invoke-direct/range {v15 .. v29}, Lo/LifestyleResponseCard;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZ)V

    iget-object v0, v1, Lo/LifestyleComponentAsset;->getInterfaceDescriptor:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LifestyleTemplateProperties;

    invoke-interface {v3, v2}, Lo/LifestyleTemplateProperties;->extraCallback(Lo/LifestyleResponseCard;)V

    goto :goto_8

    :cond_c
    iput-boolean v7, v1, Lo/LifestyleComponentAsset;->ICustomTabsService:Z

    return-void
.end method

.method private final onNavigationEvent(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lo/LifestyleComponentAsset;->extraCallback(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Lo/LifestyleComponentAsset;->extraCallback(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Lo/LifestyleComponentAsset;->extraCallback(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->extraCallback(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final onNavigationEvent()V
    .locals 2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/LifestyleComponentAssetJsonAdapter;

    invoke-direct {v1, p0}, Lo/LifestyleComponentAssetJsonAdapter;-><init>(Lo/LifestyleComponentAsset;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onNavigationEvent(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/LifestyleComponentAsset;->asInterface:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/LifestyleComponentAsset;->asInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iput-object v0, p0, Lo/LifestyleComponentAsset;->asInterface:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v2, v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    :try_start_2
    invoke-static {}, Lo/getParcel;->getDefaultImpl()Lo/getListTransaction;

    move-result-object p1

    iget-object v1, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v2}, Lo/getListTransaction;->onMessageChannelReady(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, p1, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-object v0, p0, Lo/LifestyleComponentAsset;->asBinder:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lo/LifestyleComponentAsset;->onMessageChannelReady:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object v0, p0, Lo/LifestyleComponentAsset;->ICustomTabsCallback$Stub:Lo/LifestyleSectionJsonAdapter;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    return-void
.end method

.method public final extraCallback(Lo/LifestyleTemplateProperties;)V
    .locals 1

    iget-object v0, p0, Lo/LifestyleComponentAsset;->getInterfaceDescriptor:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/LifestyleComponentAsset;->extraCallback(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lo/LifestyleComponentAsset;->extraCallback(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LifestyleComponentAsset;->extraCallback(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LifestyleComponentAsset;->extraCallback(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(Lo/LifestyleTemplateProperties;)V
    .locals 1

    iget-object v0, p0, Lo/LifestyleComponentAsset;->getInterfaceDescriptor:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lo/LifestyleComponentAsset;->warmup:I

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->ICustomTabsCallback(Landroid/view/View;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lo/LifestyleComponentAsset;->warmup:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/LifestyleComponentAsset;->onMessageChannelReady(I)V

    invoke-direct {p0}, Lo/LifestyleComponentAsset;->onNavigationEvent()V

    invoke-direct {p0, p1}, Lo/LifestyleComponentAsset;->onNavigationEvent(Landroid/view/View;)V

    return-void
.end method
