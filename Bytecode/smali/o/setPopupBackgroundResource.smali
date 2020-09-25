.class public final Lo/setPopupBackgroundResource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPopupBackgroundResource$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/setPopupBackgroundDrawable$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lo/setPopupBackgroundResource$3;

    invoke-direct {v0}, Lo/setPopupBackgroundResource$3;-><init>()V

    sput-object v0, Lo/setPopupBackgroundResource;->onMessageChannelReady:Lo/setPopupBackgroundDrawable$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setPopupBackgroundResource;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized extraCallback(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/setPopupBackgroundDrawable<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "Argument must not be null"

    if-eqz p1, :cond_3

    .line 37
    iget-object v0, p0, Lo/setPopupBackgroundResource;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPopupBackgroundDrawable$ICustomTabsCallback;

    if-nez v0, :cond_1

    .line 39
    iget-object v1, p0, Lo/setPopupBackgroundResource;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setPopupBackgroundDrawable$ICustomTabsCallback;

    .line 40
    invoke-interface {v2}, Lo/setPopupBackgroundDrawable$ICustomTabsCallback;->onPostMessage()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-nez v0, :cond_2

    .line 48
    sget-object v0, Lo/setPopupBackgroundResource;->onMessageChannelReady:Lo/setPopupBackgroundDrawable$ICustomTabsCallback;

    .line 50
    :cond_2
    invoke-interface {v0, p1}, Lo/setPopupBackgroundDrawable$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Object;)Lo/setPopupBackgroundDrawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1029
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/setPopupBackgroundDrawable$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPopupBackgroundDrawable$ICustomTabsCallback<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lo/setPopupBackgroundResource;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p1}, Lo/setPopupBackgroundDrawable$ICustomTabsCallback;->onPostMessage()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
