.class public Lo/AppCompatImageButton;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lo/hasDividerBeforeChildAt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppCompatImageButton$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lo/hasDividerBeforeChildAt;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/setHorizontalGravity;


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

.field private ICustomTabsCallback$Stub$Proxy:Lo/setHorizontalGravity;

.field private final asBinder:Lo/setSupportImageTintMode;

.field private final asInterface:Landroid/os/Handler;

.field public final extraCallback:Lcom/bumptech/glide/Glide;

.field private final newSession:Lo/getBaselineAlignedChildIndex;

.field final onMessageChannelReady:Lo/setMeasureWithLargestChildEnabled;

.field final onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/layoutVertical<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onPostMessage:Landroid/content/Context;

.field private final onRelationshipValidationResult:Ljava/lang/Runnable;

.field private final onTransact:Lo/MediaSessionCompat$1$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Landroid/graphics/Bitmap;

    .line 8213
    new-instance v1, Lo/setHorizontalGravity;

    invoke-direct {v1}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v1, v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Ljava/lang/Class;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    .line 61
    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->asBinder()Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    sput-object v0, Lo/AppCompatImageButton;->ICustomTabsCallback:Lo/setHorizontalGravity;

    .line 62
    const-class v0, Lo/toGlobalMotionEvent;

    .line 9213
    new-instance v1, Lo/setHorizontalGravity;

    invoke-direct {v1}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v1, v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Ljava/lang/Class;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    .line 62
    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->asBinder()Lo/measureChildBeforeLayout;

    .line 63
    sget-object v0, Lo/getFirstBaselineToTopHeight;->onPostMessage:Lo/getFirstBaselineToTopHeight;

    .line 10052
    new-instance v1, Lo/setHorizontalGravity;

    invoke-direct {v1}, Lo/setHorizontalGravity;-><init>()V

    invoke-virtual {v1, v0}, Lo/measureChildBeforeLayout;->ICustomTabsCallback(Lo/getFirstBaselineToTopHeight;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    .line 64
    sget-object v1, Lo/getTintList;->onNavigationEvent:Lo/getTintList;

    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->extraCallback(Lo/getTintList;)Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/measureChildBeforeLayout;->extraCallback(Z)Lo/measureChildBeforeLayout;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)V
    .locals 7

    .line 106
    new-instance v4, Lo/setSupportImageTintMode;

    invoke-direct {v4}, Lo/setSupportImageTintMode;-><init>()V

    .line 1623
    iget-object v5, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback$Stub:Lo/setBaselineAlignedChildIndex;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 106
    invoke-direct/range {v0 .. v6}, Lo/AppCompatImageButton;-><init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/setSupportImageTintMode;Lo/setBaselineAlignedChildIndex;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/setSupportImageTintMode;Lo/setBaselineAlignedChildIndex;Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lo/initIndeterminateProgress;

    invoke-direct {v0}, Lo/initIndeterminateProgress;-><init>()V

    iput-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    .line 82
    new-instance v0, Lo/AppCompatImageButton$1;

    invoke-direct {v0, p0}, Lo/AppCompatImageButton$1;-><init>(Lo/AppCompatImageButton;)V

    iput-object v0, p0, Lo/AppCompatImageButton;->onRelationshipValidationResult:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/AppCompatImageButton;->asInterface:Landroid/os/Handler;

    .line 124
    iput-object p1, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    .line 125
    iput-object p2, p0, Lo/AppCompatImageButton;->onMessageChannelReady:Lo/setMeasureWithLargestChildEnabled;

    .line 126
    iput-object p3, p0, Lo/AppCompatImageButton;->onTransact:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 127
    iput-object p4, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    .line 128
    iput-object p6, p0, Lo/AppCompatImageButton;->onPostMessage:Landroid/content/Context;

    .line 132
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lo/AppCompatImageButton$onMessageChannelReady;

    invoke-direct {p6, p0, p4}, Lo/AppCompatImageButton$onMessageChannelReady;-><init>(Lo/AppCompatImageButton;Lo/setSupportImageTintMode;)V

    .line 131
    invoke-interface {p5, p3, p6}, Lo/setBaselineAlignedChildIndex;->onMessageChannelReady(Landroid/content/Context;Lo/getBaselineAlignedChildIndex$onMessageChannelReady;)Lo/getBaselineAlignedChildIndex;

    move-result-object p3

    iput-object p3, p0, Lo/AppCompatImageButton;->newSession:Lo/getBaselineAlignedChildIndex;

    .line 139
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 140
    iget-object p3, p0, Lo/AppCompatImageButton;->asInterface:Landroid/os/Handler;

    iget-object p4, p0, Lo/AppCompatImageButton;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p2, p0}, Lo/setMeasureWithLargestChildEnabled;->onPostMessage(Lo/hasDividerBeforeChildAt;)V

    .line 144
    :goto_0
    iget-object p3, p0, Lo/AppCompatImageButton;->newSession:Lo/getBaselineAlignedChildIndex;

    invoke-interface {p2, p3}, Lo/setMeasureWithLargestChildEnabled;->onPostMessage(Lo/hasDividerBeforeChildAt;)V

    .line 146
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1628
    iget-object p3, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 2068
    iget-object p3, p3, Lo/tintDrawableUsingColorFilter;->onMessageChannelReady:Ljava/util/List;

    .line 147
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lo/AppCompatImageButton;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2628
    iget-object p2, p1, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 148
    invoke-virtual {p2}, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback()Lo/setHorizontalGravity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/AppCompatImageButton;->ICustomTabsCallback(Lo/setHorizontalGravity;)V

    .line 2881
    iget-object p2, p1, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    monitor-enter p2

    .line 2882
    :try_start_0
    iget-object p3, p1, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2885
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2886
    monitor-exit p2

    return-void

    .line 2883
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 2886
    monitor-exit p2

    throw p1
.end method

.method private declared-synchronized asInterface()V
    .locals 4

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    const/4 v1, 0x1

    .line 3084
    iput-boolean v1, v0, Lo/setSupportImageTintMode;->onPostMessage:Z

    .line 3085
    iget-object v1, v0, Lo/setSupportImageTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v1}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNextLocationOffset;

    .line 3086
    invoke-interface {v2}, Lo/getNextLocationOffset;->extraCallback()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3090
    invoke-interface {v2}, Lo/getNextLocationOffset;->ICustomTabsCallback()V

    .line 3091
    iget-object v3, v0, Lo/setSupportImageTintMode;->extraCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private extraCallback(Lo/ListPopupWindow;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListPopupWindow<",
            "*>;)V"
        }
    .end annotation

    .line 631
    invoke-virtual {p0, p1}, Lo/AppCompatImageButton;->onNavigationEvent(Lo/ListPopupWindow;)Z

    move-result v0

    .line 649
    invoke-interface {p1}, Lo/ListPopupWindow;->onPostMessage()Lo/getNextLocationOffset;

    move-result-object v1

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->onMessageChannelReady(Lo/ListPopupWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 651
    invoke-interface {p1, v0}, Lo/ListPopupWindow;->onPostMessage(Lo/getNextLocationOffset;)V

    .line 652
    invoke-interface {v1}, Lo/getNextLocationOffset;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method private declared-synchronized onTransact()V
    .locals 4

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    const/4 v1, 0x0

    .line 3109
    iput-boolean v1, v0, Lo/setSupportImageTintMode;->onPostMessage:Z

    .line 3110
    iget-object v1, v0, Lo/setSupportImageTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v1}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNextLocationOffset;

    .line 3114
    invoke-interface {v2}, Lo/getNextLocationOffset;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lo/getNextLocationOffset;->extraCallback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3115
    invoke-interface {v2}, Lo/getNextLocationOffset;->onNavigationEvent()V

    goto :goto_0

    .line 3118
    :cond_1
    iget-object v0, v0, Lo/setSupportImageTintMode;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Class;)Lo/access$000;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo/access$000<",
            "*TT;>;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    .line 7628
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->ICustomTabsCallback:Lo/tintDrawableUsingColorFilter;

    .line 8082
    iget-object v1, v0, Lo/tintDrawableUsingColorFilter;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/access$000;

    if-nez v1, :cond_1

    .line 8084
    iget-object v0, v0, Lo/tintDrawableUsingColorFilter;->extraCallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8085
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8086
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/access$000;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 8091
    sget-object v1, Lo/tintDrawableUsingColorFilter;->onPostMessage:Lo/access$000;

    :cond_2
    return-object v1
.end method

.method public final declared-synchronized ICustomTabsCallback()V
    .locals 1

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-direct {p0}, Lo/AppCompatImageButton;->onTransact()V

    .line 353
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    invoke-virtual {v0}, Lo/initIndeterminateProgress;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ICustomTabsCallback(Lo/setHorizontalGravity;)V
    .locals 0

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback()Lo/measureChildBeforeLayout;

    move-result-object p1

    check-cast p1, Lo/setHorizontalGravity;

    invoke-virtual {p1}, Lo/measureChildBeforeLayout;->ICustomTabsCallback$Stub()Lo/measureChildBeforeLayout;

    move-result-object p1

    check-cast p1, Lo/setHorizontalGravity;

    iput-object p1, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub$Proxy:Lo/setHorizontalGravity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized asBinder()Lo/setHorizontalGravity;
    .locals 1

    monitor-enter p0

    .line 682
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub$Proxy:Lo/setHorizontalGravity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()V
    .locals 1

    monitor-enter p0

    .line 362
    :try_start_0
    invoke-direct {p0}, Lo/AppCompatImageButton;->asInterface()V

    .line 363
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    invoke-virtual {v0}, Lo/initIndeterminateProgress;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/Integer;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lo/setTextClassifier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lo/AppCompatImageButton;->onPostMessage()Lo/setTextClassifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setTextClassifier;->ICustomTabsCallback(Ljava/lang/Integer;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized onMessageChannelReady()V
    .locals 3

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    invoke-virtual {v0}, Lo/initIndeterminateProgress;->onMessageChannelReady()V

    .line 373
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    .line 4050
    iget-object v0, v0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-static {v0}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 4627
    invoke-direct {p0, v1}, Lo/AppCompatImageButton;->extraCallback(Lo/ListPopupWindow;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    .line 5054
    iget-object v0, v0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 377
    iget-object v0, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    .line 5127
    iget-object v1, v0, Lo/setSupportImageTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v1}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNextLocationOffset;

    .line 5130
    invoke-virtual {v0, v2}, Lo/setSupportImageTintMode;->onPostMessage(Lo/getNextLocationOffset;)Z

    goto :goto_1

    .line 5132
    :cond_2
    iget-object v0, v0, Lo/setSupportImageTintMode;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 378
    iget-object v0, p0, Lo/AppCompatImageButton;->onMessageChannelReady:Lo/setMeasureWithLargestChildEnabled;

    invoke-interface {v0, p0}, Lo/setMeasureWithLargestChildEnabled;->onNavigationEvent(Lo/hasDividerBeforeChildAt;)V

    .line 379
    iget-object v0, p0, Lo/AppCompatImageButton;->onMessageChannelReady:Lo/setMeasureWithLargestChildEnabled;

    iget-object v1, p0, Lo/AppCompatImageButton;->newSession:Lo/getBaselineAlignedChildIndex;

    invoke-interface {v0, v1}, Lo/setMeasureWithLargestChildEnabled;->onNavigationEvent(Lo/hasDividerBeforeChildAt;)V

    .line 380
    iget-object v0, p0, Lo/AppCompatImageButton;->asInterface:Landroid/os/Handler;

    iget-object v1, p0, Lo/AppCompatImageButton;->onRelationshipValidationResult:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object v0, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    .line 5890
    iget-object v1, v0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5891
    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5894
    iget-object v0, v0, Lcom/bumptech/glide/Glide;->asBinder:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5895
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 5892
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 5895
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(Lo/ListPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListPopupWindow<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 627
    :cond_0
    invoke-direct {p0, p1}, Lo/AppCompatImageButton;->extraCallback(Lo/ListPopupWindow;)V

    return-void
.end method

.method final declared-synchronized onMessageChannelReady(Lo/ListPopupWindow;Lo/getNextLocationOffset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListPopupWindow<",
            "*>;",
            "Lo/getNextLocationOffset;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    .line 7020
    iget-object v0, v0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object p1, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    .line 7041
    iget-object v0, p1, Lo/setSupportImageTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7042
    iget-boolean v0, p1, Lo/setSupportImageTintMode;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 7043
    invoke-interface {p2}, Lo/getNextLocationOffset;->onNavigationEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 7045
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lo/getNextLocationOffset;->onMessageChannelReady()V

    const-string v0, "RequestTracker"

    const/4 v1, 0x2

    .line 7046
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RequestTracker"

    const-string v1, "Paused, delaying request"

    .line 7047
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7049
    :cond_1
    iget-object p1, p1, Lo/setSupportImageTintMode;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onNavigationEvent()Lo/setTextClassifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setTextClassifier<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 393
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lo/AppCompatImageButton;->onNavigationEvent(Ljava/lang/Class;)Lo/setTextClassifier;

    move-result-object v0

    sget-object v1, Lo/AppCompatImageButton;->ICustomTabsCallback:Lo/setHorizontalGravity;

    invoke-virtual {v0, v1}, Lo/setTextClassifier;->ICustomTabsCallback(Lo/measureChildBeforeLayout;)Lo/setTextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onNavigationEvent(Ljava/lang/Class;)Lo/setTextClassifier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lo/setTextClassifier<",
            "TResourceType;>;"
        }
    .end annotation

    .line 597
    new-instance v0, Lo/setTextClassifier;

    iget-object v1, p0, Lo/AppCompatImageButton;->extraCallback:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lo/AppCompatImageButton;->onPostMessage:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lo/setTextClassifier;-><init>(Lcom/bumptech/glide/Glide;Lo/AppCompatImageButton;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final declared-synchronized onNavigationEvent(Lo/ListPopupWindow;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListPopupWindow<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 657
    :try_start_0
    invoke-interface {p1}, Lo/ListPopupWindow;->onPostMessage()Lo/getNextLocationOffset;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 660
    monitor-exit p0

    return v1

    .line 663
    :cond_0
    :try_start_1
    iget-object v2, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    invoke-virtual {v2, v0}, Lo/setSupportImageTintMode;->onPostMessage(Lo/getNextLocationOffset;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lo/AppCompatImageButton;->ICustomTabsCallback$Stub:Lo/initIndeterminateProgress;

    .line 6024
    iget-object v0, v0, Lo/initIndeterminateProgress;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 665
    invoke-interface {p1, v0}, Lo/ListPopupWindow;->onPostMessage(Lo/getNextLocationOffset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 668
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onPostMessage()Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setTextClassifier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 428
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/AppCompatImageButton;->onNavigationEvent(Ljava/lang/Class;)Lo/setTextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/setTextClassifier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lo/AppCompatImageButton;->onPostMessage()Lo/setTextClassifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setTextClassifier;->onPostMessage(Ljava/lang/String;)Lo/setTextClassifier;

    move-result-object p1

    return-object p1
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 692
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AppCompatImageButton;->asBinder:Lo/setSupportImageTintMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AppCompatImageButton;->onTransact:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
