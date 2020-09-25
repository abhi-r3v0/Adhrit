.class public final Lo/release;
.super Lo/setMetadata$ICustomTabsCallback;
.source ""


# static fields
.field private static final asBinder:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final asInterface:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/setMetadata$extraCallback;

.field private final extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21;

.field private final onMessageChannelReady:Landroid/os/Bundle;

.field private final onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private final onPostMessage:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 143
    const-class v1, Landroid/app/Application;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lo/setPlaybackState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lo/release;->asInterface:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    .line 145
    const-class v1, Lo/setPlaybackState;

    aput-object v1, v0, v2

    sput-object v0, Lo/release;->asBinder:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lo/MediaSessionCompat$MediaSessionImplApi19$1;Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Lo/setMetadata$ICustomTabsCallback;-><init>()V

    .line 87
    invoke-interface {p2}, Lo/MediaSessionCompat$MediaSessionImplApi19$1;->getSavedStateRegistry()Lo/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v0

    iput-object v0, p0, Lo/release;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21;

    .line 88
    invoke-interface {p2}, Lo/MediaSessionCompat$MediaSessionImplApi19$1;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p2

    iput-object p2, p0, Lo/release;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 89
    iput-object p3, p0, Lo/release;->onMessageChannelReady:Landroid/os/Bundle;

    .line 90
    iput-object p1, p0, Lo/release;->onPostMessage:Landroid/app/Application;

    .line 1244
    sget-object p2, Lo/setMetadata$extraCallback;->onPostMessage:Lo/setMetadata$extraCallback;

    if-nez p2, :cond_0

    .line 1245
    new-instance p2, Lo/setMetadata$extraCallback;

    invoke-direct {p2, p1}, Lo/setMetadata$extraCallback;-><init>(Landroid/app/Application;)V

    sput-object p2, Lo/setMetadata$extraCallback;->onPostMessage:Lo/setMetadata$extraCallback;

    .line 1247
    :cond_0
    sget-object p1, Lo/setMetadata$extraCallback;->onPostMessage:Lo/setMetadata$extraCallback;

    .line 91
    iput-object p1, p0, Lo/release;->ICustomTabsCallback:Lo/setMetadata$extraCallback;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 151
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 152
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 97
    const-class v0, Lo/MediaControllerCompat$TransportControlsApi24;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v1, Lo/release;->asInterface:[Ljava/lang/Class;

    invoke-static {p2, v1}, Lo/release;->onMessageChannelReady(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_0
    sget-object v1, Lo/release;->asBinder:[Ljava/lang/Class;

    invoke-static {p2, v1}, Lo/release;->onMessageChannelReady(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 106
    iget-object p1, p0, Lo/release;->ICustomTabsCallback:Lo/setMetadata$extraCallback;

    invoke-virtual {p1, p2}, Lo/setMetadata$onPostMessage;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    return-object p1

    .line 109
    :cond_1
    iget-object v2, p0, Lo/release;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v3, p0, Lo/release;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iget-object v4, p0, Lo/release;->onMessageChannelReady:Landroid/os/Bundle;

    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;->onMessageChannelReady(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v4, p0, Lo/release;->onPostMessage:Landroid/app/Application;

    aput-object v4, v0, v2

    .line 2062
    iget-object v2, p1, Landroidx/lifecycle/SavedStateHandleController;->extraCallback:Lo/setPlaybackState;

    aput-object v2, v0, v3

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setQueue;

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 3062
    iget-object v3, p1, Landroidx/lifecycle/SavedStateHandleController;->extraCallback:Lo/setPlaybackState;

    aput-object v3, v0, v2

    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setQueue;

    :goto_1
    const-string v1, "androidx.lifecycle.savedstate.vm.tag"

    .line 118
    invoke-virtual {v0, v1, p1}, Lo/setQueue;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "An exception happened in constructor of "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be instantiated."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Failed to access "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final onNavigationEvent(Lo/setQueue;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lo/release;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21;

    iget-object v1, p0, Lo/release;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage(Lo/setQueue;Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Class;)Lo/setQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0, p1}, Lo/release;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
