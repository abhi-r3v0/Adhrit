.class public abstract Lo/ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Ljava/lang/ref/WeakReference<",
            "Lo/ICustomTabsCallback$Stub;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onMessageChannelReady:I = -0x64

.field private static final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    sput-object v0, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/app/Dialog;Lo/asInterface;)Lo/ICustomTabsCallback$Stub;
    .locals 1

    .line 241
    new-instance v0, Lo/ICustomTabsService;

    invoke-direct {v0, p0, p1}, Lo/ICustomTabsService;-><init>(Landroid/app/Dialog;Lo/asInterface;)V

    return-object v0
.end method

.method static onMessageChannelReady(Lo/ICustomTabsCallback$Stub;)V
    .locals 3

    .line 652
    sget-object v0, Lo/ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-static {p0}, Lo/ICustomTabsCallback$Stub;->onNavigationEvent(Lo/ICustomTabsCallback$Stub;)V

    .line 657
    sget-object v1, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->add(Ljava/lang/Object;)Z

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static onNavigationEvent(Lo/ICustomTabsCallback$Stub;)V
    .locals 3

    .line 669
    sget-object v0, Lo/ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    sget-object v1, Lo/ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 671
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ICustomTabsCallback$Stub;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    .line 676
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 679
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onPostMessage(Landroid/app/Activity;Lo/asInterface;)Lo/ICustomTabsCallback$Stub;
    .locals 1

    .line 230
    new-instance v0, Lo/ICustomTabsService;

    invoke-direct {v0, p0, p1}, Lo/ICustomTabsService;-><init>(Landroid/app/Activity;Lo/asInterface;)V

    return-object v0
.end method

.method static onPostMessage(Lo/ICustomTabsCallback$Stub;)V
    .locals 1

    .line 662
    sget-object v0, Lo/ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-static {p0}, Lo/ICustomTabsCallback$Stub;->onNavigationEvent(Lo/ICustomTabsCallback$Stub;)V

    .line 665
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static warmup()I
    .locals 1

    .line 601
    sget v0, Lo/ICustomTabsCallback$Stub;->onMessageChannelReady:I

    return v0
.end method


# virtual methods
.method public abstract ICustomTabsCallback()V
.end method

.method public abstract ICustomTabsCallback(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract ICustomTabsCallback(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract ICustomTabsCallback(I)Z
.end method

.method public abstract ICustomTabsCallback$Stub()Lo/ICustomTabsCallback$onNavigationEvent;
.end method

.method public asBinder()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public abstract asInterface()V
.end method

.method public abstract extraCallback()Lo/onPostMessage;
.end method

.method public abstract extraCallback(Landroid/os/Bundle;)V
.end method

.method public onMessageChannelReady(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lo/ICustomTabsCallback$Stub;->onPostMessage(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract onMessageChannelReady(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
.end method

.method public abstract onMessageChannelReady()V
.end method

.method public abstract onMessageChannelReady(Landroid/content/res/Configuration;)V
.end method

.method public abstract onMessageChannelReady(Landroid/os/Bundle;)V
.end method

.method public abstract onMessageChannelReady(Landroid/view/View;)V
.end method

.method public abstract onNavigationEvent()V
.end method

.method public abstract onNavigationEvent(I)V
.end method

.method public abstract onNavigationEvent(Ljava/lang/CharSequence;)V
.end method

.method public abstract onPostMessage()Landroid/view/MenuInflater;
.end method

.method public onPostMessage(I)V
    .locals 0

    return-void
.end method

.method public onPostMessage(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract onPostMessage(Landroid/os/Bundle;)V
.end method

.method public abstract onPostMessage(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract onRelationshipValidationResult()V
.end method

.method public abstract onTransact()V
.end method
