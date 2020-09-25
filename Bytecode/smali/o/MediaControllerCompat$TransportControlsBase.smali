.class public final Lo/MediaControllerCompat$TransportControlsBase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;,
        Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;
    }
.end annotation


# static fields
.field public static ICustomTabsCallback:Lo/MediaControllerCompat$TransportControlsBase;


# instance fields
.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/MediaControllerCompat$TransportControlsBase;

    invoke-direct {v0}, Lo/MediaControllerCompat$TransportControlsBase;-><init>()V

    sput-object v0, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback:Lo/MediaControllerCompat$TransportControlsBase;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onMessageChannelReady:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onNavigationEvent:Ljava/util/Map;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;"
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Lo/MediaControllerCompat$TransportControlsBase;->onPostMessage(Ljava/lang/Class;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, v0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 115
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 116
    invoke-virtual {p0, v5}, Lo/MediaControllerCompat$TransportControlsBase;->onPostMessage(Ljava/lang/Class;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    move-result-object v5

    iget-object v5, v5, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    .line 117
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 116
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {v1, v7, v6, p1}, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback(Ljava/util/Map;Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    .line 122
    :cond_3
    invoke-static {p1}, Lo/MediaControllerCompat$TransportControlsBase;->onMessageChannelReady(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    .line 124
    :goto_2
    array-length v0, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v2, v0, :cond_b

    aget-object v5, p2, v2

    .line 125
    const-class v6, Lo/setFlags;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lo/setFlags;

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    .line 130
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 132
    array-length v8, v4

    if-lez v8, :cond_5

    .line 134
    aget-object v8, v4, v3

    const-class v9, Lo/toLegacyStreamType;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    .line 135
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v8, 0x0

    .line 139
    :goto_4
    invoke-interface {v6}, Lo/setFlags;->onMessageChannelReady()Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    move-result-object v6

    .line 141
    array-length v9, v4

    const/4 v10, 0x2

    if-le v9, v7, :cond_8

    .line 143
    aget-object v8, v4, v7

    const-class v9, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 147
    sget-object v8, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_ANY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne v6, v8, :cond_6

    const/4 v8, 0x2

    goto :goto_5

    .line 148
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Second arg is supported only for ON_ANY value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid parameter type. second arg must be an event"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_8
    :goto_5
    array-length v4, v4

    if-gt v4, v10, :cond_9

    .line 155
    new-instance v4, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;

    invoke-direct {v4, v8, v5}, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;-><init>(ILjava/lang/reflect/Method;)V

    .line 156
    invoke-static {v1, v4, v6, p1}, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback(Ljava/util/Map;Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Class;)V

    const/4 v4, 0x1

    goto :goto_6

    .line 153
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot have more than 2 params"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    :cond_b
    new-instance p2, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    invoke-direct {p2, v1}, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;-><init>(Ljava/util/Map;)V

    .line 159
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private static ICustomTabsCallback(Ljava/util/Map;Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            ">;",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 91
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-eqz v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p1, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    .line 94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", new value "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 100
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method final extraCallback(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 50
    :cond_0
    invoke-static {p1}, Lo/MediaControllerCompat$TransportControlsBase;->onMessageChannelReady(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 52
    const-class v5, Lo/setFlags;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lo/setFlags;

    if-eqz v4, :cond_1

    .line 60
    invoke-direct {p0, p1, v0}, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onNavigationEvent:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public final onPostMessage(Ljava/lang/Class;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lo/MediaControllerCompat$TransportControlsBase;->ICustomTabsCallback(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method
