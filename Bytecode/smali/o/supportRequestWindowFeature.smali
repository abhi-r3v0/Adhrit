.class public abstract Lo/supportRequestWindowFeature;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lo/PlaybackStateCompat$CustomAction$Builder;

    invoke-direct {v0}, Lo/PlaybackStateCompat$CustomAction$Builder;-><init>()V

    iput-object v0, p0, Lo/supportRequestWindowFeature;->extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;

    return-void
.end method

.method static onMessageChannelReady(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;)V
    .locals 7

    .line 1311
    iget-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->extraCallback:Landroidx/work/impl/WorkDatabase;

    .line 2089
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asInterface()Lo/onPostResume;

    move-result-object v1

    .line 2090
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->asBinder()Lo/newIntentHandleExecutor;

    move-result-object v0

    .line 2093
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 2094
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2095
    :goto_0
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2096
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2098
    invoke-interface {v1, v3}, Lo/onPostResume;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v4

    .line 2099
    sget-object v5, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->ICustomTabsCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v4, v5, :cond_0

    sget-object v5, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->extraCallback:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v4, v5, :cond_0

    .line 2100
    sget-object v4, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->asBinder:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-interface {v1, v4, v5}, Lo/onPostResume;->ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I

    .line 2102
    :cond_0
    invoke-interface {v0, v3}, Lo/newIntentHandleExecutor;->onNavigationEvent(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2340
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompat$RepeatMode;->onTransact:Lo/getName;

    .line 74
    invoke-virtual {v0, p1}, Lo/getName;->ICustomTabsCallback(Ljava/lang/String;)Z

    .line 3331
    iget-object p0, p0, Lo/PlaybackStateCompat$RepeatMode;->onPostMessage:Ljava/util/List;

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;

    .line 77
    invoke-interface {v0, p1}, Lcom/squareup/picasso/Picasso$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback()V
.end method

.method public run()V
    .locals 3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lo/supportRequestWindowFeature;->ICustomTabsCallback()V

    .line 62
    iget-object v0, p0, Lo/supportRequestWindowFeature;->extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;

    sget-object v1, Lo/setActions;->ICustomTabsCallback:Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage(Lo/setActions$ICustomTabsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lo/supportRequestWindowFeature;->extraCallback:Lo/PlaybackStateCompat$CustomAction$Builder;

    new-instance v2, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage(Lo/setActions$ICustomTabsCallback;)V

    return-void
.end method
