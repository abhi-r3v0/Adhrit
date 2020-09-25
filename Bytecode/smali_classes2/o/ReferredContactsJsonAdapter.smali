.class public final Lo/ReferredContactsJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getUpdated_by;

    invoke-direct {v0}, Lo/getUpdated_by;-><init>()V

    sput-object v0, Lo/ReferredContactsJsonAdapter;->ICustomTabsCallback:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/ReferredContactsJsonAdapter;->onNavigationEvent:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    const/16 p1, 0x1000

    iput p1, p0, Lo/ReferredContactsJsonAdapter;->onPostMessage:I

    return-void
.end method

.method private final declared-synchronized onPostMessage()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    iget v1, p0, Lo/ReferredContactsJsonAdapter;->onPostMessage:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lo/ReferredContactsJsonAdapter;->onNavigationEvent:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v1, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    array-length v0, v0

    sub-int/2addr v1, v0

    iput v1, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onNavigationEvent([B)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    array-length v0, p1

    iget v1, p0, Lo/ReferredContactsJsonAdapter;->onPostMessage:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/ReferredContactsJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    sget-object v1, Lo/ReferredContactsJsonAdapter;->ICustomTabsCallback:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-object v1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    invoke-direct {p0}, Lo/ReferredContactsJsonAdapter;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized onPostMessage(I)[B
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    if-lt v2, p1, :cond_0

    iget p1, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    array-length v2, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lo/ReferredContactsJsonAdapter;->onMessageChannelReady:I

    iget-object p1, p0, Lo/ReferredContactsJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lo/ReferredContactsJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-array p1, p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
