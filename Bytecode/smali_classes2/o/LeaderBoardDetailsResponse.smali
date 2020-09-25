.class public final Lo/LeaderBoardDetailsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# static fields
.field private static final onNavigationEvent:Landroid/os/Handler;


# instance fields
.field private ICustomTabsCallback:Landroid/app/Application;

.field private ICustomTabsCallback$Stub:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:J

.field private asBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/SubmitScoreRequestJsonAdapter;

.field private final extraCallback:Landroid/content/Context;

.field private getInterfaceDescriptor:Z

.field private newSession:I

.field private final onMessageChannelReady:Landroid/app/KeyguardManager;

.field private final onPostMessage:Landroid/os/PowerManager;

.field private onRelationshipValidationResult:Landroid/content/BroadcastReceiver;

.field private onTransact:Lo/GameDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lo/LeaderBoardDetailsResponse;->onNavigationEvent:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lo/SubmitScoreRequestJsonAdapter;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/LeaderBoardDetailsResponse;->getInterfaceDescriptor:Z

    const/4 v0, -0x1

    iput v0, p0, Lo/LeaderBoardDetailsResponse;->newSession:I

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    iput-object p1, p0, Lo/LeaderBoardDetailsResponse;->asInterface:Lo/SubmitScoreRequestJsonAdapter;

    iget-object p1, p1, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady:Landroid/content/Context;

    iput-object p1, p0, Lo/LeaderBoardDetailsResponse;->extraCallback:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lo/LeaderBoardDetailsResponse;->onPostMessage:Landroid/os/PowerManager;

    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->extraCallback:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lo/LeaderBoardDetailsResponse;->onMessageChannelReady:Landroid/app/KeyguardManager;

    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->extraCallback:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback:Landroid/app/Application;

    new-instance v0, Lo/GameDetails;

    check-cast p1, Landroid/app/Application;

    invoke-direct {v0, p1, p0}, Lo/GameDetails;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->onTransact:Lo/GameDetails;

    :cond_0
    invoke-virtual {p0, p2}, Lo/LeaderBoardDetailsResponse;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method private final ICustomTabsCallback(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/ref/WeakReference;

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
    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
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

    goto :goto_0

    :catch_1
    nop

    :cond_2
    :goto_0
    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->onRelationshipValidationResult:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_3

    :try_start_2
    iget-object v1, p0, Lo/LeaderBoardDetailsResponse;->extraCallback:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->onRelationshipValidationResult:Landroid/content/BroadcastReceiver;

    :cond_3
    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback:Landroid/app/Application;

    if-eqz p1, :cond_4

    :try_start_3
    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->onTransact:Lo/GameDetails;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_4
    return-void
.end method

.method private final extraCallback()V
    .locals 9

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    iput-boolean v1, p0, Lo/LeaderBoardDetailsResponse;->getInterfaceDescriptor:Z

    return-void

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    iget-object v4, p0, Lo/LeaderBoardDetailsResponse;->asInterface:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v4}, Lo/SubmitScoreRequestJsonAdapter;->asBinder()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    iget-object v4, p0, Lo/LeaderBoardDetailsResponse;->onMessageChannelReady:Landroid/app/KeyguardManager;

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_3

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    iget v7, p0, Lo/LeaderBoardDetailsResponse;->newSession:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->onPostMessage:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    if-nez v6, :cond_7

    const/4 v1, 0x1

    :cond_7
    iget-boolean v0, p0, Lo/LeaderBoardDetailsResponse;->getInterfaceDescriptor:Z

    if-eq v0, v1, :cond_9

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    goto :goto_4

    :cond_8
    const-wide/16 v2, -0x2

    :goto_4
    iput-wide v2, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    iput-boolean v1, p0, Lo/LeaderBoardDetailsResponse;->getInterfaceDescriptor:Z

    :cond_9
    return-void
.end method

.method private final onNavigationEvent()V
    .locals 2

    sget-object v0, Lo/LeaderBoardDetailsResponse;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/LeaderBoardDetailsResponseJsonAdapter;

    invoke-direct {v1, p0}, Lo/LeaderBoardDetailsResponseJsonAdapter;-><init>(Lo/LeaderBoardDetailsResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onNavigationEvent(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

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

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

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

    iput p2, p0, Lo/LeaderBoardDetailsResponse;->newSession:I

    :cond_2
    return-void
.end method

.method private final onPostMessage(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->onRelationshipValidationResult:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lo/FetchingScoresBlock;

    invoke-direct {v0, p0}, Lo/FetchingScoresBlock;-><init>(Lo/LeaderBoardDetailsResponse;)V

    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->onRelationshipValidationResult:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lo/LeaderBoardDetailsResponse;->extraCallback:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback:Landroid/app/Application;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->onTransact:Lo/GameDetails;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic onPostMessage(Lo/LeaderBoardDetailsResponse;)V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 5

    iget-wide v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    :cond_0
    iget-wide v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    return-wide v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method final onMessageChannelReady(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, v0}, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/LeaderBoardDetailsResponse;->asBinder:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lo/LeaderBoardDetailsResponse;->onPostMessage(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const-wide/16 v0, -0x2

    :goto_3
    iput-wide v0, p0, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback$Stub$Proxy:J

    return-void

    :cond_5
    const-wide/16 v0, -0x3

    goto :goto_3
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lo/LeaderBoardDetailsResponse;->newSession:I

    invoke-direct {p0, p1}, Lo/LeaderBoardDetailsResponse;->onPostMessage(Landroid/view/View;)V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lo/LeaderBoardDetailsResponse;->newSession:I

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->extraCallback()V

    invoke-direct {p0}, Lo/LeaderBoardDetailsResponse;->onNavigationEvent()V

    invoke-direct {p0, p1}, Lo/LeaderBoardDetailsResponse;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method
