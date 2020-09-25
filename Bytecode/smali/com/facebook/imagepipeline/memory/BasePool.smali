.class public abstract Lcom/facebook/imagepipeline/memory/BasePool;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setTranslateY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;,
        Lcom/facebook/imagepipeline/memory/BasePool$SizeTooLargeException;,
        Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;,
        Lcom/facebook/imagepipeline/memory/BasePool$InvalidValueException;,
        Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setTranslateY<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

.field private asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

.field private extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/afInfoLog<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/onAppOpenAttributionNative;

.field private final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 152
    check-cast p2, Lo/onAppOpenAttributionNative;

    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    if-eqz p3, :cond_0

    .line 156
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    .line 160
    new-instance p1, Landroid/util/SparseIntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent(Landroid/util/SparseIntArray;)V

    .line 4108
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4141
    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady:Ljava/util/Set;

    .line 165
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    .line 166
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-direct {p1}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    return-void

    .line 3215
    :cond_0
    throw v0

    .line 2215
    :cond_1
    throw v0

    .line 1215
    :cond_2
    throw v0
.end method

.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V

    .line 175
    iput-boolean p4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onTransact:Z

    return-void
.end method

.method private declared-synchronized ICustomTabsCallback(I)V
    .locals 7

    monitor-enter p0

    .line 617
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 619
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 621
    :try_start_1
    invoke-static {v1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 622
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string/jumbo v3, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d"

    .line 625
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v5, v5, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v6, v6, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v5, v6

    .line 626
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 627
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 622
    invoke-static {v2, v3, v4, v5, v6}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback()V

    const/4 v2, 0x0

    .line 633
    :goto_0
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-lez v0, :cond_3

    .line 637
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/afInfoLog;

    :goto_1
    if-lez v0, :cond_2

    .line 639
    invoke-virtual {v3}, Lo/afInfoLog;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 643
    invoke-virtual {p0, v4}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent(Ljava/lang/Object;)V

    .line 644
    iget v4, v3, Lo/afInfoLog;->ICustomTabsCallback:I

    sub-int/2addr v0, v4

    .line 645
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v5, v3, Lo/afInfoLog;->ICustomTabsCallback:I

    invoke-virtual {v4, v5}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onPostMessage(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_3
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback()V

    .line 651
    invoke-static {v1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 652
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string/jumbo v1, "trimToSize: TargetSize = %d; Final Size = %d"

    .line 655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v3, v3, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v2, v3

    .line 656
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 652
    invoke-static {v0, v1, p1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized asBinder(I)Z
    .locals 6

    monitor-enter p0

    .line 726
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onTransact:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 727
    monitor-exit p0

    return v1

    .line 730
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v0, v0, Lo/onAppOpenAttributionNative;->ICustomTabsCallback:I

    .line 734
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v2, v0, v2

    const/4 v3, 0x0

    if-le p1, v2, :cond_1

    .line 736
    monitor-exit p0

    return v3

    .line 740
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v2, v2, Lo/onAppOpenAttributionNative;->extraCallback:I

    .line 741
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v4, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v5, v5, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v4, v5

    sub-int v4, v2, v4

    if-le p1, v4, :cond_2

    sub-int/2addr v2, p1

    .line 742
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(I)V

    .line 746
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v4, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v2, v4

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_3

    .line 748
    monitor-exit p0

    return v3

    .line 751
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized asInterface(I)Lo/afInfoLog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afInfoLog<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afInfoLog;

    if-nez v0, :cond_2

    .line 680
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 685
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v1, "creating new bucket %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub(I)Lo/afInfoLog;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-object v0

    .line 681
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private extraCallback()V
    .locals 7

    const/4 v0, 0x2

    .line 757
    invoke-static {v0}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 761
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    .line 762
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 763
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    .line 764
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "Used = (%d, %d); Free = (%d, %d)"

    .line 758
    invoke-static/range {v1 .. v6}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onMessageChannelReady()V
    .locals 1

    monitor-enter p0

    .line 596
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v0, v0, Lo/onAppOpenAttributionNative;->extraCallback:I

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onNavigationEvent()V
    .locals 1

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 443
    monitor-exit p0

    return-void

    .line 13162
    :cond_2
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

.method private declared-synchronized onNavigationEvent(Landroid/util/SparseIntArray;)V
    .locals 9

    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 458
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget-object v0, v0, Lo/onAppOpenAttributionNative;->onPostMessage:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 460
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 461
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 462
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 463
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 464
    iget-object v6, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    new-instance v7, Lo/afInfoLog;

    .line 467
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(I)I

    move-result v8

    invoke-direct {v7, v8, v4, v5, v1}, Lo/afInfoLog;-><init>(IIIZ)V

    .line 464
    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 474
    :try_start_1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPostMessage()Z
    .locals 2

    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v0, v0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v1, v1, Lo/onAppOpenAttributionNative;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 712
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onRelationshipValidationResult(I)Lo/afInfoLog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afInfoLog<",
            "TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/afInfoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public declared-synchronized ICustomTabsCallback(Lo/afInfoLog;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/afInfoLog<",
            "TV;>;)TV;"
        }
    .end annotation

    monitor-enter p0

    .line 5094
    :try_start_0
    invoke-virtual {p1}, Lo/afInfoLog;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5096
    iget v1, p1, Lo/afInfoLog;->extraCallback:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lo/afInfoLog;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected ICustomTabsCallback$Stub(I)Lo/afInfoLog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/afInfoLog<",
            "TV;>;"
        }
    .end annotation

    .line 694
    new-instance v0, Lo/afInfoLog;

    .line 695
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(I)I

    move-result p1

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, p1, v2, v1, v1}, Lo/afInfoLog;-><init>(IIIZ)V

    return-object v0
.end method

.method public final extraCallback(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent()V

    .line 204
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage(I)I

    move-result p1

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->asInterface(I)Lo/afInfoLog;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(Lo/afInfoLog;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 214
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(I)I

    move-result v0

    .line 220
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    .line 5808
    iget v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    add-int/2addr v5, v2

    iput v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 5809
    iget v2, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v2, v0

    iput v2, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    .line 221
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-virtual {v2, v0}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onPostMessage(I)V

    .line 223
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback()V

    .line 224
    invoke-static {v1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v1, "get (reuse) (object, size) = (%x, %s)"

    .line 228
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 225
    invoke-static {v0, v1, v2, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 231
    :cond_0
    monitor-exit p0

    return-object v3

    .line 5162
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 236
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(I)I

    move-result v3

    .line 237
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 243
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    .line 6808
    iget v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    add-int/2addr v5, v2

    iput v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 6809
    iget v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v5, v3

    iput v5, v4, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    if-eqz v0, :cond_3

    .line 7117
    iget v4, v0, Lo/afInfoLog;->extraCallback:I

    add-int/2addr v4, v2

    iput v4, v0, Lo/afInfoLog;->extraCallback:I

    .line 247
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 254
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 258
    monitor-enter p0

    .line 259
    :try_start_2
    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-virtual {v5, v3}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onPostMessage(I)V

    .line 260
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->asInterface(I)Lo/afInfoLog;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 7152
    iget v5, v3, Lo/afInfoLog;->extraCallback:I

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_5

    .line 7153
    iget v5, v3, Lo/afInfoLog;->extraCallback:I

    sub-int/2addr v5, v2

    iput v5, v3, Lo/afInfoLog;->extraCallback:I

    goto :goto_1

    .line 7162
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 264
    :cond_6
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 265
    invoke-static {v4}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Throwable;)V

    .line 273
    :goto_2
    monitor-enter p0

    .line 274
    :try_start_3
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady()V

    .line 278
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback()V

    .line 279
    invoke-static {v1}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v2, "get (alloc) (object, size) = (%x, %s)"

    .line 283
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 280
    invoke-static {v1, v2, v3, p1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    :cond_7
    monitor-exit p0

    return-object v0

    .line 8162
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 286
    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p1

    .line 264
    monitor-exit p0

    throw p1

    .line 238
    :cond_9
    :try_start_4
    new-instance p1, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent:Lo/onAppOpenAttributionNative;

    iget v0, v0, Lo/onAppOpenAttributionNative;->ICustomTabsCallback:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v1, v1, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    iget v2, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;-><init>(IIII)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 247
    monitor-exit p0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_e

    .line 304
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback(Ljava/lang/Object;)I

    move-result v0

    .line 305
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(I)I

    move-result v1

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->onRelationshipValidationResult(I)Lo/afInfoLog;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 311
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v2, "release (free, value unrecognized) (object, size) = (%x, %s)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 314
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 315
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    .line 311
    invoke-static {v1, v2, v3}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    if-eqz v2, :cond_8

    .line 9077
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    .line 9081
    iget-object v7, v2, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    add-int/2addr v3, v7

    .line 9077
    iget v7, v2, Lo/afInfoLog;->onMessageChannelReady:I

    if-le v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_8

    .line 330
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_8

    .line 331
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_7

    .line 10127
    iget-boolean v3, v2, Lo/afInfoLog;->onNavigationEvent:Z

    if-eqz v3, :cond_5

    .line 10129
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    if-lez v3, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 10130
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    sub-int/2addr v3, v6

    iput v3, v2, Lo/afInfoLog;->extraCallback:I

    .line 10131
    invoke-virtual {v2, p1}, Lo/afInfoLog;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 11162
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10134
    :cond_5
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    if-lez v3, :cond_6

    .line 10135
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    sub-int/2addr v3, v6

    iput v3, v2, Lo/afInfoLog;->extraCallback:I

    .line 10136
    invoke-virtual {v2, p1}, Lo/afInfoLog;->onPostMessage(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v2, "BUCKET"

    const-string v3, "Tried to release value %s from an empty bucket!"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v5

    .line 10138
    invoke-static {v2, v3, v7}, Lo/setTranslateX;->onPostMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :goto_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->asBinder:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    .line 11808
    iget v3, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    add-int/2addr v3, v6

    iput v3, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 11809
    iget v3, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    .line 349
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-virtual {v2, v1}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onPostMessage(I)V

    .line 351
    invoke-static {v4}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 352
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v2, "release (reuse) (object, size) = (%x, %s)"

    .line 355
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 352
    invoke-static {v1, v2, p1, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 10215
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    :goto_2
    if-eqz v2, :cond_b

    .line 9152
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    if-lez v3, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v5, :cond_a

    .line 9153
    iget v3, v2, Lo/afInfoLog;->extraCallback:I

    sub-int/2addr v3, v6

    iput v3, v2, Lo/afInfoLog;->extraCallback:I

    goto :goto_3

    .line 9162
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 336
    :cond_b
    :goto_3
    invoke-static {v4}, Lo/setTranslateX;->ICustomTabsCallback(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->onPostMessage:Ljava/lang/Class;

    const-string v3, "release (free) (object, size) = (%x, %s)"

    .line 340
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 341
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 337
    invoke-static {v2, v3, v4, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    :cond_c
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->onNavigationEvent(Ljava/lang/Object;)V

    .line 344
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->ICustomTabsCallback$Stub:Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;

    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onPostMessage(I)V

    .line 360
    :cond_d
    :goto_4
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->extraCallback()V

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_e
    const/4 p1, 0x0

    .line 8215
    throw p1
.end method

.method protected abstract onMessageChannelReady(I)I
.end method

.method protected onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 12215
    throw p1
.end method

.method protected abstract onNavigationEvent(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method protected abstract onNavigationEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method protected abstract onPostMessage(I)I
.end method
