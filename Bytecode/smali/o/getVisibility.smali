.class public final Lo/getVisibility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getVisibility$onNavigationEvent;,
        Lo/getVisibility$extraCallback;,
        Lo/getVisibility$onPostMessage;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/getVisibility$extraCallback;

.field private static final onPostMessage:Lo/setNavigationContentDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setNavigationContentDescription<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/getVisibility$onPostMessage<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getVisibility$onPostMessage<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/getVisibility$extraCallback;

    invoke-direct {v0}, Lo/getVisibility$extraCallback;-><init>()V

    sput-object v0, Lo/getVisibility;->extraCallback:Lo/getVisibility$extraCallback;

    .line 25
    new-instance v0, Lo/getVisibility$onNavigationEvent;

    invoke-direct {v0}, Lo/getVisibility$onNavigationEvent;-><init>()V

    sput-object v0, Lo/getVisibility;->onPostMessage:Lo/setNavigationContentDescription;

    return-void
.end method

.method public constructor <init>(Lo/RatingCompat$StarStyle$extraCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 32
    sget-object v0, Lo/getVisibility;->extraCallback:Lo/getVisibility$extraCallback;

    invoke-direct {p0, p1, v0}, Lo/getVisibility;-><init>(Lo/RatingCompat$StarStyle$extraCallback;Lo/getVisibility$extraCallback;)V

    return-void
.end method

.method private constructor <init>(Lo/RatingCompat$StarStyle$extraCallback;Lo/getVisibility$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;",
            "Lo/getVisibility$extraCallback;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    .line 28
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    .line 38
    iput-object p1, p0, Lo/getVisibility;->onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;

    return-void
.end method


# virtual methods
.method final declared-synchronized extraCallback(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getVisibility$onPostMessage;

    .line 120
    iget-object v3, v2, Lo/getVisibility$onPostMessage;->onMessageChannelReady:Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3206
    iget-object v3, v2, Lo/getVisibility$onPostMessage;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v2, v2, Lo/getVisibility$onPostMessage;->onMessageChannelReady:Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;)Lo/setNavigationContentDescription;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lo/setNavigationContentDescription<",
            "TModel;TData;>;"
        }
    .end annotation

    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getVisibility$onPostMessage;

    .line 139
    iget-object v6, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 4206
    :cond_1
    iget-object v6, v5, Lo/getVisibility$onPostMessage;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4202
    iget-object v6, v5, Lo/getVisibility$onPostMessage;->onMessageChannelReady:Ljava/lang/Class;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_0

    .line 144
    iget-object v6, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5178
    iget-object v6, v5, Lo/getVisibility$onPostMessage;->onNavigationEvent:Lo/getCustomView;

    invoke-interface {v6, p0}, Lo/getCustomView;->extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;

    move-result-object v6

    const-string v7, "Argument must not be null"

    if-eqz v6, :cond_3

    check-cast v6, Lo/setNavigationContentDescription;

    .line 145
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6029
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 150
    iget-object p1, p0, Lo/getVisibility;->onMessageChannelReady:Lo/RatingCompat$StarStyle$extraCallback;

    .line 6215
    new-instance p2, Lo/setDefaultNavigationContentDescription;

    invoke-direct {p2, v0, p1}, Lo/setDefaultNavigationContentDescription;-><init>(Ljava/util/List;Lo/RatingCompat$StarStyle$extraCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-object p2

    .line 151
    :cond_5
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setNavigationContentDescription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    .line 7184
    :try_start_2
    sget-object p1, Lo/getVisibility;->onPostMessage:Lo/setNavigationContentDescription;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    monitor-exit p0

    return-object p1

    .line 160
    :cond_7
    :try_start_3
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 164
    :try_start_4
    iget-object p2, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 165
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage(Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;)",
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "TModel;*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v1, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getVisibility$onPostMessage;

    .line 100
    iget-object v3, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1206
    iget-object v3, v2, Lo/getVisibility$onPostMessage;->onPostMessage:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2178
    iget-object v3, v2, Lo/getVisibility$onPostMessage;->onNavigationEvent:Lo/getCustomView;

    invoke-interface {v3, p0}, Lo/getCustomView;->extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;

    move-result-object v3

    const-string v4, "Argument must not be null"

    if-eqz v3, :cond_1

    check-cast v3, Lo/setNavigationContentDescription;

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3029
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 111
    :try_start_1
    iget-object v0, p0, Lo/getVisibility;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 112
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onPostMessage(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/getCustomView<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1061
    :try_start_0
    new-instance v0, Lo/getVisibility$onPostMessage;

    invoke-direct {v0, p1, p2, p3}, Lo/getVisibility$onPostMessage;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 1062
    iget-object p1, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    iget-object p2, p0, Lo/getVisibility;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
