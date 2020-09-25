.class public final Lo/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;,
        Lo/MediaSessionCompat$MediaSessionImplApi21$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21<",
            "Ljava/lang/String;",
            "Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Landroid/os/Bundle;

.field public onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field private onPostMessage:Landroidx/savedstate/Recreator$onMessageChannelReady;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 4

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 224
    :cond_0
    iget-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    .line 1160
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;

    invoke-direct {v2, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21;)V

    .line 1161
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onMessageChannelReady:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    invoke-interface {v1}, Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;->onMessageChannelReady()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v1, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 229
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lo/MediaSessionCompat$MediaSessionImplApi21$ICustomTabsCallback;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onPostMessage:Landroidx/savedstate/Recreator$onMessageChannelReady;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Landroidx/savedstate/Recreator$onMessageChannelReady;

    invoke-direct {v0, p0}, Landroidx/savedstate/Recreator$onMessageChannelReady;-><init>(Lo/MediaSessionCompat$MediaSessionImplApi21;)V

    iput-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onPostMessage:Landroidx/savedstate/Recreator$onMessageChannelReady;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onPostMessage:Landroidx/savedstate/Recreator$onMessageChannelReady;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1112
    iget-object v0, v0, Landroidx/savedstate/Recreator$onMessageChannelReady;->onPostMessage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy;Landroid/os/Bundle;)V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onNavigationEvent:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 194
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    .line 197
    :cond_0
    new-instance p2, Landroidx/savedstate/SavedStateRegistry$1;

    invoke-direct {p2, p0}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Lo/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onNavigationEvent:Z

    return-void

    .line 191
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SavedStateRegistry was already restored."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 76
    iget-boolean v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iput-object v1, p0, Lo/MediaSessionCompat$MediaSessionImplApi21;->extraCallback:Landroid/os/Bundle;

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
