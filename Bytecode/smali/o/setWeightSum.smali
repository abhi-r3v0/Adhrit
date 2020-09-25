.class public final Lo/setWeightSum;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setWeightSum$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final asBinder:Lo/setWeightSum$onMessageChannelReady;


# instance fields
.field private volatile ICustomTabsCallback:Lo/AppCompatImageButton;

.field private final ICustomTabsCallback$Stub:Lo/setWeightSum$onMessageChannelReady;

.field private final asInterface:Landroid/os/Bundle;

.field private extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Lo/getVirtualChildAt;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/requestExtraBinder;",
            "Lo/getWeightSum;",
            ">;"
        }
    .end annotation
.end field

.field private final onRelationshipValidationResult:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 481
    new-instance v0, Lo/setWeightSum$5;

    invoke-direct {v0}, Lo/setWeightSum$5;-><init>()V

    sput-object v0, Lo/setWeightSum;->asBinder:Lo/setWeightSum$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Lo/setWeightSum$onMessageChannelReady;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setWeightSum;->extraCallback:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setWeightSum;->onPostMessage:Ljava/util/Map;

    .line 67
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/setWeightSum;->onMessageChannelReady:Lo/postOrRun;

    .line 68
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/setWeightSum;->onNavigationEvent:Lo/postOrRun;

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/setWeightSum;->asInterface:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    sget-object p1, Lo/setWeightSum;->asBinder:Lo/setWeightSum$onMessageChannelReady;

    :goto_0
    iput-object p1, p0, Lo/setWeightSum;->ICustomTabsCallback$Stub:Lo/setWeightSum$onMessageChannelReady;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo/setWeightSum;->onRelationshipValidationResult:Landroid/os/Handler;

    return-void
.end method

.method private ICustomTabsCallback(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/getWeightSum;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    .line 408
    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/getWeightSum;

    if-nez v1, :cond_1

    .line 410
    iget-object v1, p0, Lo/setWeightSum;->onPostMessage:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getWeightSum;

    if-nez v1, :cond_1

    .line 412
    new-instance v1, Lo/getWeightSum;

    invoke-direct {v1}, Lo/getWeightSum;-><init>()V

    .line 413
    invoke-virtual {v1, p2}, Lo/getWeightSum;->extraCallback(Landroidx/fragment/app/Fragment;)V

    if-eqz p3, :cond_0

    .line 13059
    iget-object p2, v1, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    .line 415
    invoke-virtual {p2}, Lo/addActionBarHideOffset;->onMessageChannelReady()V

    .line 417
    :cond_0
    iget-object p2, p0, Lo/setWeightSum;->onPostMessage:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13464
    new-instance p2, Lo/binderDied;

    invoke-direct {p2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 p3, 0x0

    const/4 v2, 0x1

    .line 14171
    invoke-virtual {p2, p3, v1, v0, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 418
    invoke-virtual {p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    .line 419
    iget-object p2, p0, Lo/setWeightSum;->onRelationshipValidationResult:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-object v1
.end method

.method private onMessageChannelReady(Landroid/content/Context;)Lo/AppCompatImageButton;
    .locals 4

    .line 79
    iget-object v0, p0, Lo/setWeightSum;->ICustomTabsCallback:Lo/AppCompatImageButton;

    if-nez v0, :cond_1

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v0, p0, Lo/setWeightSum;->ICustomTabsCallback:Lo/AppCompatImageButton;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lo/setWeightSum;->ICustomTabsCallback$Stub:Lo/setWeightSum$onMessageChannelReady;

    new-instance v2, Lo/setPopupTheme;

    invoke-direct {v2}, Lo/setPopupTheme;-><init>()V

    new-instance v3, Lo/AppCompatEditText;

    invoke-direct {v3}, Lo/AppCompatEditText;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    invoke-interface {v1, v0, v2, v3, p1}, Lo/setWeightSum$onMessageChannelReady;->extraCallback(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p1

    iput-object p1, p0, Lo/setWeightSum;->ICustomTabsCallback:Lo/AppCompatImageButton;

    .line 96
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 99
    :cond_1
    :goto_0
    iget-object p1, p0, Lo/setWeightSum;->ICustomTabsCallback:Lo/AppCompatImageButton;

    return-object p1
.end method

.method public static onNavigationEvent(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 3896
    iget-object v0, v0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-static {v0, p1}, Lo/setWeightSum;->onNavigationEvent(Ljava/util/Collection;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static onNavigationEvent(Landroid/content/Context;)Z
    .locals 2

    .line 11305
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11306
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 11307
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 11308
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 12305
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 12306
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 12307
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 12308
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 401
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static onPostMessage(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 305
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 306
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 307
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 308
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final extraCallback(Landroid/app/Activity;)Lo/AppCompatImageButton;
    .locals 3

    .line 150
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1

    .line 2316
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2317
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3305
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3306
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 3307
    :cond_3
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_4

    .line 3308
    move-object v1, p1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/setWeightSum;->onPostMessage(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 2401
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 155
    :goto_3
    invoke-virtual {p0, p1, v0, v2, v1}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;
    .locals 2

    :goto_0
    if-eqz p1, :cond_3

    .line 106
    invoke-static {}, Lo/getHorizontalOffset;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_2

    .line 107
    instance-of v0, p1, Lo/onSessionEvent;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lo/onSessionEvent;

    invoke-virtual {p0, p1}, Lo/setWeightSum;->onNavigationEvent(Lo/onSessionEvent;)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1

    .line 109
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lo/setWeightSum;->extraCallback(Landroid/app/Activity;)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1

    .line 111
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 115
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 120
    :cond_2
    invoke-direct {p0, p1}, Lo/setWeightSum;->onMessageChannelReady(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback(Landroid/content/Context;Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/AppCompatImageButton;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-virtual {p0, p2, p3, p4}, Lo/setWeightSum;->extraCallback(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/getVirtualChildAt;

    move-result-object p2

    .line 6074
    iget-object p3, p2, Lo/getVirtualChildAt;->onPostMessage:Lo/AppCompatImageButton;

    if-nez p3, :cond_0

    .line 381
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    .line 382
    iget-object p4, p0, Lo/setWeightSum;->ICustomTabsCallback$Stub:Lo/setWeightSum$onMessageChannelReady;

    .line 7068
    iget-object v0, p2, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    .line 7080
    iget-object v1, p2, Lo/getVirtualChildAt;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 383
    invoke-interface {p4, p3, v0, v1, p1}, Lo/setWeightSum$onMessageChannelReady;->extraCallback(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p3

    .line 8063
    iput-object p3, p2, Lo/getVirtualChildAt;->onPostMessage:Lo/AppCompatImageButton;

    :cond_0
    return-object p3
.end method

.method final extraCallback(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lo/getVirtualChildAt;
    .locals 3

    const-string v0, "com.bumptech.glide.manager"

    .line 352
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/getVirtualChildAt;

    if-nez v1, :cond_2

    .line 354
    iget-object v1, p0, Lo/setWeightSum;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getVirtualChildAt;

    if-nez v1, :cond_2

    .line 356
    new-instance v1, Lo/getVirtualChildAt;

    invoke-direct {v1}, Lo/getVirtualChildAt;-><init>()V

    .line 5126
    iput-object p2, v1, Lo/getVirtualChildAt;->extraCallback:Landroid/app/Fragment;

    if-eqz p2, :cond_0

    .line 5127
    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5128
    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {v1, p2}, Lo/getVirtualChildAt;->onPostMessage(Landroid/app/Activity;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6068
    iget-object p2, v1, Lo/getVirtualChildAt;->ICustomTabsCallback:Lo/addActionBarHideOffset;

    .line 359
    invoke-virtual {p2}, Lo/addActionBarHideOffset;->onMessageChannelReady()V

    .line 361
    :cond_1
    iget-object p2, p0, Lo/setWeightSum;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 363
    iget-object p2, p0, Lo/setWeightSum;->onRelationshipValidationResult:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-object v1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x0

    move-object p1, v1

    goto :goto_1

    .line 457
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lo/requestExtraBinder;

    .line 459
    iget-object p1, p0, Lo/setWeightSum;->onPostMessage:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 452
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/app/FragmentManager;

    .line 454
    iget-object p1, p0, Lo/setWeightSum;->extraCallback:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x5

    const-string v1, "RMRetriever"

    .line 465
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public final onNavigationEvent(Landroid/content/Context;Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/AppCompatImageButton;
    .locals 2

    .line 432
    invoke-direct {p0, p2, p3, p4}, Lo/setWeightSum;->ICustomTabsCallback(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/getWeightSum;

    move-result-object p2

    .line 15065
    iget-object p3, p2, Lo/getWeightSum;->extraCallback:Lo/AppCompatImageButton;

    if-nez p3, :cond_0

    .line 436
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->onPostMessage(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p3

    .line 437
    iget-object p4, p0, Lo/setWeightSum;->ICustomTabsCallback$Stub:Lo/setWeightSum$onMessageChannelReady;

    .line 16059
    iget-object v0, p2, Lo/getWeightSum;->onNavigationEvent:Lo/addActionBarHideOffset;

    .line 16074
    iget-object v1, p2, Lo/getWeightSum;->ICustomTabsCallback:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 438
    invoke-interface {p4, p3, v0, v1, p1}, Lo/setWeightSum$onMessageChannelReady;->extraCallback(Lcom/bumptech/glide/Glide;Lo/setMeasureWithLargestChildEnabled;Lo/MediaSessionCompat$1$onMessageChannelReady;Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p3

    .line 17054
    iput-object p3, p2, Lo/getWeightSum;->extraCallback:Lo/AppCompatImageButton;

    :cond_0
    return-object p3
.end method

.method public final onNavigationEvent(Lo/onSessionEvent;)Lo/AppCompatImageButton;
    .locals 3

    .line 125
    invoke-static {}, Lo/getHorizontalOffset;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setWeightSum;->extraCallback(Landroid/content/Context;)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1

    .line 1316
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1317
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 2305
    instance-of v1, p1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2306
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 2307
    :cond_3
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_4

    .line 2308
    move-object v1, p1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/setWeightSum;->onPostMessage(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 1401
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 130
    :goto_3
    invoke-virtual {p0, p1, v0, v2, v1}, Lo/setWeightSum;->onNavigationEvent(Landroid/content/Context;Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/AppCompatImageButton;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/app/FragmentManager;Lo/postOrRun;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Lo/postOrRun<",
            "Landroid/view/View;",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 266
    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 267
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/setWeightSum;->onNavigationEvent(Landroid/app/FragmentManager;Lo/postOrRun;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 4284
    :goto_1
    iget-object v1, p0, Lo/setWeightSum;->asInterface:Landroid/os/Bundle;

    add-int/lit8 v2, v0, 0x1

    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 4287
    :try_start_0
    iget-object v1, p0, Lo/setWeightSum;->asInterface:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    if-eqz v0, :cond_4

    .line 4294
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4295
    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4296
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v1, v3, :cond_3

    .line 4297
    invoke-virtual {v0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lo/setWeightSum;->onNavigationEvent(Landroid/app/FragmentManager;Lo/postOrRun;)V

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    return-void
.end method

.method final onPostMessage(Landroid/content/Context;Lo/requestExtraBinder;)Lo/getWeightSum;
    .locals 2

    .line 9305
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9306
    check-cast p1, Landroid/app/Activity;

    goto :goto_1

    .line 9307
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 9308
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 10305
    :goto_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 10306
    check-cast p1, Landroid/app/Activity;

    goto :goto_1

    .line 10307
    :cond_1
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 10308
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 8401
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    .line 393
    :goto_3
    invoke-direct {p0, p2, v1, p1}, Lo/setWeightSum;->ICustomTabsCallback(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Z)Lo/getWeightSum;

    move-result-object p1

    return-object p1
.end method
