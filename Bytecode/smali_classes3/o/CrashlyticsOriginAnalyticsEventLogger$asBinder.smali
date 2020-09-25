.class abstract Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;TE;TS;>.cancel;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger;

.field private asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;TE;TS;>.cancel;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/CrashlyticsOriginAnalyticsEventLogger;)V
    .locals 0

    .line 2517
    iput-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2518
    iget-object p1, p1, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage:I

    const/4 p1, -0x1

    .line 2519
    iput p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady:I

    .line 2520
    invoke-virtual {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback()V

    return-void
.end method

.method private onMessageChannelReady()Z
    .locals 1

    .line 2551
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_1

    .line 2552
    :goto_0
    invoke-interface {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->b_()Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_1

    .line 2553
    invoke-direct {p0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2552
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2579
    :try_start_0
    invoke-interface {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;->d_()Ljava/lang/Object;

    move-result-object v0

    .line 2580
    invoke-static {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2582
    new-instance v1, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    iget-object v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger;

    invoke-direct {v1, v2, v0, p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;-><init>(Lo/CrashlyticsOriginAnalyticsEventLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2589
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 2969
    iget-object v0, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 2984
    invoke-virtual {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2589
    :cond_1
    iget-object p1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 3969
    iget-object v0, p1, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_2

    .line 3984
    invoke-virtual {p1}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 2589
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 4969
    iget-object v1, v0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit8 v1, v1, 0x3f

    if-nez v1, :cond_3

    .line 4984
    invoke-virtual {v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->extraCallback()V

    .line 2590
    :cond_3
    throw p1
.end method

.method private onPostMessage()Z
    .locals 3

    .line 2563
    :cond_0
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady:I

    if-ltz v0, :cond_2

    .line 2564
    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asInterface:Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;

    if-eqz v0, :cond_0

    .line 2565
    invoke-direct {p0, v0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent(Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 3

    const/4 v0, 0x0

    .line 2527
    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    .line 2529
    invoke-direct {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2533
    :cond_0
    invoke-direct {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2537
    :cond_1
    iget v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage:I

    if-ltz v0, :cond_2

    .line 2538
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v0, v0, Lo/CrashlyticsOriginAnalyticsEventLogger;->onPostMessage:[Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    .line 2539
    iget v0, v0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->onNavigationEvent:I

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onNavigationEvent:Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;

    iget-object v0, v0, Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2541
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onMessageChannelReady:I

    .line 2542
    invoke-direct {p0}, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 2595
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->extraCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 2609
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2610
    iget-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->asBinder:Lo/CrashlyticsOriginAnalyticsEventLogger;

    iget-object v1, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    invoke-virtual {v1}, Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2611
    iput-object v0, p0, Lo/CrashlyticsOriginAnalyticsEventLogger$asBinder;->ICustomTabsCallback:Lo/CrashlyticsOriginAnalyticsEventLogger$cancel;

    return-void

    .line 5511
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
