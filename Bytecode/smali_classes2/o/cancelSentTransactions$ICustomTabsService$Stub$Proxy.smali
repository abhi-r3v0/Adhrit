.class final Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final extraCallback:I

.field final onMessageChannelReady:I

.field final onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(FF)V
    .locals 2

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onPostMessage:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 1286
    iput p2, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->extraCallback:I

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 1287
    iput p1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    .line 1288
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->onMessageChannelReady:I

    .line 1289
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1337
    :cond_0
    instance-of v1, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1340
    :cond_1
    check-cast p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;

    .line 1341
    iget v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    iget v3, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->extraCallback:I

    iget p1, p1, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->extraCallback:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1346
    iget v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lo/cancelSentTransactions$ICustomTabsService$Stub$Proxy;->extraCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
