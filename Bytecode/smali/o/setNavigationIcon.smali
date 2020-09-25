.class public final Lo/setNavigationIcon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setNavigationIcon$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getVisibility;

.field private final extraCallback:Lo/setNavigationIcon$ICustomTabsCallback;


# direct methods
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

    .line 26
    new-instance v0, Lo/getVisibility;

    invoke-direct {v0, p1}, Lo/getVisibility;-><init>(Lo/RatingCompat$StarStyle$extraCallback;)V

    invoke-direct {p0, v0}, Lo/setNavigationIcon;-><init>(Lo/getVisibility;)V

    return-void
.end method

.method private constructor <init>(Lo/getVisibility;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lo/setNavigationIcon$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setNavigationIcon$ICustomTabsCallback;-><init>()V

    iput-object v0, p0, Lo/setNavigationIcon;->extraCallback:Lo/setNavigationIcon$ICustomTabsCallback;

    .line 30
    iput-object p1, p0, Lo/setNavigationIcon;->ICustomTabsCallback:Lo/getVisibility;

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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

    .line 106
    :try_start_0
    iget-object v0, p0, Lo/setNavigationIcon;->ICustomTabsCallback:Lo/getVisibility;

    invoke-virtual {v0, p1}, Lo/getVisibility;->extraCallback(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V
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

    .line 37
    :try_start_0
    iget-object v0, p0, Lo/setNavigationIcon;->ICustomTabsCallback:Lo/getVisibility;

    invoke-virtual {v0, p1, p2, p3}, Lo/getVisibility;->onPostMessage(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V

    .line 38
    iget-object p1, p0, Lo/setNavigationIcon;->extraCallback:Lo/setNavigationIcon$ICustomTabsCallback;

    .line 1133
    iget-object p1, p1, Lo/setNavigationIcon$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lo/setNavigationContentDescription<",
            "TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lo/setNavigationIcon;->extraCallback:Lo/setNavigationIcon$ICustomTabsCallback;

    .line 1146
    iget-object v0, v0, Lo/setNavigationIcon$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setNavigationIcon$ICustomTabsCallback$ICustomTabsCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v0, v0, Lo/setNavigationIcon$ICustomTabsCallback$ICustomTabsCallback;->ICustomTabsCallback:Ljava/util/List;

    :goto_0
    if-nez v0, :cond_2

    .line 114
    iget-object v0, p0, Lo/setNavigationIcon;->ICustomTabsCallback:Lo/getVisibility;

    invoke-virtual {v0, p1}, Lo/getVisibility;->onPostMessage(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lo/setNavigationIcon;->extraCallback:Lo/setNavigationIcon$ICustomTabsCallback;

    .line 2137
    iget-object v1, v1, Lo/setNavigationIcon$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Map;

    new-instance v2, Lo/setNavigationIcon$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/setNavigationIcon$ICustomTabsCallback$ICustomTabsCallback;-><init>(Ljava/util/List;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setNavigationIcon$ICustomTabsCallback$ICustomTabsCallback;

    if-nez v1, :cond_1

    goto :goto_1

    .line 2139
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already cached loaders for model: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
