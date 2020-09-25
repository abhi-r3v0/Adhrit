.class public abstract Lo/getRootAlpha;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRootAlpha$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static ICustomTabsCallback$Stub:I

.field private static onNavigationEvent:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lo/getRootAlpha;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Lo/setPageMargin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPageMargin<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private static final onTransact:Lo/getRootAlpha$onPostMessage;


# instance fields
.field protected final ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final extraCallback:Ljava/lang/Throwable;

.field protected onMessageChannelReady:Z

.field protected final onPostMessage:Lo/getRootAlpha$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lo/getRootAlpha;

    sput-object v0, Lo/getRootAlpha;->onNavigationEvent:Ljava/lang/Class;

    .line 108
    new-instance v0, Lo/getRootAlpha$2;

    invoke-direct {v0}, Lo/getRootAlpha$2;-><init>()V

    sput-object v0, Lo/getRootAlpha;->onRelationshipValidationResult:Lo/setPageMargin;

    .line 120
    new-instance v0, Lo/getRootAlpha$3;

    invoke-direct {v0}, Lo/getRootAlpha$3;-><init>()V

    sput-object v0, Lo/getRootAlpha;->onTransact:Lo/getRootAlpha$onPostMessage;

    return-void
.end method

.method protected constructor <init>(Lcom/facebook/common/references/SharedReference;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/SharedReference<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 140
    move-object v0, p1

    check-cast v0, Lcom/facebook/common/references/SharedReference;

    iput-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 141
    invoke-virtual {p1}, Lcom/facebook/common/references/SharedReference;->ICustomTabsCallback()V

    .line 142
    iput-object p2, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    .line 143
    iput-object p3, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method protected constructor <init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    .line 151
    new-instance v0, Lcom/facebook/common/references/SharedReference;

    invoke-direct {v0, p1, p2}, Lcom/facebook/common/references/SharedReference;-><init>(Ljava/lang/Object;Lo/setPageMargin;)V

    iput-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    .line 152
    iput-object p3, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    .line 153
    iput-object p4, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;
    .locals 3
    .param p0    # Ljava/io/Closeable;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;)",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    .line 162
    sget-object v0, Lo/getRootAlpha;->onRelationshipValidationResult:Lo/setPageMargin;

    .line 2171
    sget-object v1, Lo/getRootAlpha;->onTransact:Lo/getRootAlpha$onPostMessage;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 2198
    :cond_0
    invoke-static {p0, v0, v1, v2}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)Lo/getRootAlpha;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/io/Closeable;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;
    .locals 2
    .param p0    # Ljava/io/Closeable;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;",
            "Lo/getRootAlpha$onPostMessage;",
            ")",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 185
    :cond_0
    sget-object v1, Lo/getRootAlpha;->onRelationshipValidationResult:Lo/setPageMargin;

    invoke-static {p0, v1, p1, v0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)Lo/getRootAlpha;

    move-result-object p0

    return-object p0
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;)Lo/getRootAlpha;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            ")",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 198
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)Lo/getRootAlpha;

    move-result-object p0

    return-object p0
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)Lo/getRootAlpha;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_0
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lo/setOnPageChangeListener;

    if-eqz v0, :cond_2

    .line 220
    :cond_1
    sget v0, Lo/getRootAlpha;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 232
    :cond_2
    new-instance v0, Lo/ParcelImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/ParcelImpl;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 226
    :cond_3
    new-instance v0, Lo/VersionedParcel$ParcelException;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/VersionedParcel$ParcelException;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 224
    :cond_4
    new-instance v0, Lo/FragmentStateAdapter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/FragmentStateAdapter$2;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0

    .line 222
    :cond_5
    new-instance v0, Lo/setCurrentItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/setCurrentItem;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static ICustomTabsCallback()Z
    .locals 2

    .line 83
    sget v0, Lo/getRootAlpha;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ICustomTabsCallback(Lo/getRootAlpha;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Lo/getRootAlpha;->extraCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic asInterface()Ljava/lang/Class;
    .locals 1

    .line 68
    sget-object v0, Lo/getRootAlpha;->onNavigationEvent:Ljava/lang/Class;

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/setPageMargin<",
            "TT;>;)",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    .line 171
    sget-object v0, Lo/getRootAlpha;->onTransact:Lo/getRootAlpha$onPostMessage;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 3198
    :cond_0
    invoke-static {p0, p1, v0, v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)Lo/getRootAlpha;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/Collection;
        .annotation build Lcom/facebook/infer/annotation/PropagatesNullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Lo/getRootAlpha<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Lo/getRootAlpha<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 337
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRootAlpha;

    if-eqz v2, :cond_1

    .line 4321
    invoke-virtual {v2}, Lo/getRootAlpha;->onNavigationEvent()Lo/getRootAlpha;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 339
    :goto_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getRootAlpha<",
            "TT;>;)",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0}, Lo/getRootAlpha;->onNavigationEvent()Lo/getRootAlpha;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onPostMessage(I)V
    .locals 0

    .line 88
    sput p0, Lo/getRootAlpha;->ICustomTabsCallback$Stub:I

    return-void
.end method

.method public static onPostMessage(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/getRootAlpha<",
            "*>;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 362
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getRootAlpha;

    if-eqz v0, :cond_0

    .line 4351
    invoke-virtual {v0}, Lo/getRootAlpha;->close()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static onPostMessage(Lo/getRootAlpha;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getRootAlpha<",
            "*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 351
    invoke-virtual {p0}, Lo/getRootAlpha;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final asBinder()I
    .locals 1

    .line 282
    invoke-virtual {p0}, Lo/getRootAlpha;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 297
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->extraCallback()V

    return-void

    :catchall_0
    move-exception v0

    .line 300
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized extraCallback()Z
    .locals 1

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

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

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 373
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    :try_start_1
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 375
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 377
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 379
    iget-object v0, p0, Lo/getRootAlpha;->onPostMessage:Lo/getRootAlpha$onPostMessage;

    iget-object v1, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    iget-object v2, p0, Lo/getRootAlpha;->extraCallback:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lo/getRootAlpha$onPostMessage;->onMessageChannelReady(Lcom/facebook/common/references/SharedReference;Ljava/lang/Throwable;)V

    .line 381
    invoke-virtual {p0}, Lo/getRootAlpha;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    .line 377
    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 383
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lo/getRootAlpha;->onMessageChannelReady:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lo/getRootAlpha;->ICustomTabsCallback:Lcom/facebook/common/references/SharedReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/SharedReference;->onPostMessage()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 4162
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lo/getRootAlpha;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lo/getRootAlpha;->onPostMessage()Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 255
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onPostMessage()Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation
.end method
