.class public final Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompat$TransportControlsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            "Ljava/util/List<",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->onMessageChannelReady:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Map;

    .line 172
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 174
    iget-object v2, p0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v3, p0, Lo/MediaControllerCompat$TransportControlsBase$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onMessageChannelReady(Ljava/util/List;Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;",
            ">;",
            "Lo/toLegacyStreamType;",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 193
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 194
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;

    .line 1214
    :try_start_0
    iget v3, v2, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_1

    .line 1222
    :cond_0
    iget-object v2, v2, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1219
    :cond_1
    iget-object v2, v2, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1216
    :cond_2
    iget-object v2, v2, Lo/MediaControllerCompat$TransportControlsBase$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1228
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 1226
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string p2, "Failed to call observer method"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void
.end method
