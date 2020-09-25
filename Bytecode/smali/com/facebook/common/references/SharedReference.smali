.class public final Lcom/facebook/common/references/SharedReference;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/references/SharedReference$NullReferenceException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:I

.field private onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setPageMargin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPageMargin<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lo/setPageMargin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 89
    iput-object p1, p0, Lcom/facebook/common/references/SharedReference;->onNavigationEvent:Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 90
    check-cast p2, Lo/setPageMargin;

    iput-object p2, p0, Lcom/facebook/common/references/SharedReference;->onPostMessage:Lo/setPageMargin;

    const/4 p2, 0x1

    .line 91
    iput p2, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I

    .line 3102
    invoke-static {}, Lo/getRootAlpha;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p1, Lo/setOnPageChangeListener;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 3105
    :cond_1
    sget-object v0, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 3106
    :try_start_0
    sget-object v1, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 3108
    sget-object v1, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3110
    :cond_2
    sget-object v2, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3112
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 2215
    :cond_3
    throw v0

    .line 1215
    :cond_4
    throw v0
.end method

.method private static extraCallback(Ljava/lang/Object;)V
    .locals 5

    .line 122
    sget-object v0, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "SharedReference"

    const-string v3, "No entry in sLiveObjects for value of type %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v2, v4

    .line 126
    invoke-static {v1, v3, v2}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 129
    sget-object v1, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_1
    sget-object v3, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized onMessageChannelReady()I
    .locals 2

    monitor-enter p0

    .line 5160
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 213
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return v0

    .line 6111
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4224
    :cond_2
    new-instance v0, Lcom/facebook/common/references/SharedReference$NullReferenceException;

    invoke-direct {v0}, Lcom/facebook/common/references/SharedReference$NullReferenceException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onNavigationEvent()Z
    .locals 1

    monitor-enter p0

    .line 151
    :try_start_0
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()V
    .locals 1

    monitor-enter p0

    .line 4160
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/references/SharedReference;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 3224
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/common/references/SharedReference$NullReferenceException;

    invoke-direct {v0}, Lcom/facebook/common/references/SharedReference$NullReferenceException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/facebook/common/references/SharedReference;->onMessageChannelReady()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->onNavigationEvent:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 198
    iput-object v1, p0, Lcom/facebook/common/references/SharedReference;->onNavigationEvent:Ljava/lang/Object;

    .line 199
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v1, p0, Lcom/facebook/common/references/SharedReference;->onPostMessage:Lo/setPageMargin;

    invoke-interface {v1, v0}, Lo/setPageMargin;->extraCallback(Ljava/lang/Object;)V

    .line 201
    invoke-static {v0}, Lcom/facebook/common/references/SharedReference;->extraCallback(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 199
    monitor-exit p0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final declared-synchronized onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/references/SharedReference;->onNavigationEvent:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
