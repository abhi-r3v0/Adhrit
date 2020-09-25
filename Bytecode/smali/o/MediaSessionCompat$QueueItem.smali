.class public final Lo/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$QueueItem$onNavigationEvent;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/fromQueueItem;

.field static extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/postOrRun<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lo/fromQueueItem;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Lo/sendQueue;

    invoke-direct {v0}, Lo/sendQueue;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$QueueItem;->ICustomTabsCallback:Lo/fromQueueItem;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/MediaSessionCompat$QueueItem;->extraCallback:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 86
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    return-void
.end method

.method private static extraCallback(Landroid/view/ViewGroup;Lo/fromQueueItem;)V
    .locals 2

    .line 309
    invoke-static {}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent()Lo/postOrRun;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fromQueueItem;

    .line 313
    invoke-virtual {v1, p0}, Lo/fromQueueItem;->extraCallback(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p1, p0, v0}, Lo/fromQueueItem;->extraCallback(Landroid/view/ViewGroup;Z)V

    .line 1209
    :cond_1
    sget p1, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_current_scene:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/onVolumeChanged;

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 2209
    sget p1, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_current_scene:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method static onNavigationEvent()Lo/postOrRun;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/postOrRun<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lo/fromQueueItem;",
            ">;>;"
        }
    .end annotation

    .line 200
    sget-object v0, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent:Ljava/lang/ThreadLocal;

    .line 201
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/postOrRun;

    if-eqz v0, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 209
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 210
    sget-object v2, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onNavigationEvent(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, v0}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    return-void
.end method

.method public static onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V
    .locals 2

    .line 408
    sget-object v0, Lo/MediaSessionCompat$QueueItem;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lo/unregisterCallbackListener;->cancelAll(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Lo/MediaSessionCompat$QueueItem;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 415
    sget-object p1, Lo/MediaSessionCompat$QueueItem;->ICustomTabsCallback:Lo/fromQueueItem;

    .line 417
    :cond_0
    invoke-virtual {p1}, Lo/fromQueueItem;->asBinder()Lo/fromQueueItem;

    move-result-object p1

    .line 418
    invoke-static {p0, p1}, Lo/MediaSessionCompat$QueueItem;->extraCallback(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 3196
    sget v0, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_current_scene:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 3217
    new-instance v0, Lo/MediaSessionCompat$QueueItem$onNavigationEvent;

    invoke-direct {v0, p1, p0}, Lo/MediaSessionCompat$QueueItem$onNavigationEvent;-><init>(Lo/fromQueueItem;Landroid/view/ViewGroup;)V

    .line 3218
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3219
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
