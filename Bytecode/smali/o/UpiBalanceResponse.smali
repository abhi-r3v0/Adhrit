.class abstract Lo/UpiBalanceResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/SurchargeDetails;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/UpiBalanceResponse$extraCallback;,
        Lo/UpiBalanceResponse$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/UpiBalanceResponse$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/TransactionDetails;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

.field private final onNavigationEvent:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lo/UpiBalanceResponse$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:J

.field private onRelationshipValidationResult:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponse;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lo/UpiBalanceResponse;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    new-instance v4, Lo/UpiBalanceResponse$onMessageChannelReady;

    invoke-direct {v4, v3}, Lo/UpiBalanceResponse$onMessageChannelReady;-><init>(Lo/UpiBalanceResponse$2;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    new-instance v2, Lo/UpiBalanceResponse$extraCallback;

    invoke-direct {v2, p0, v3}, Lo/UpiBalanceResponse$extraCallback;-><init>(Lo/UpiBalanceResponse;Lo/UpiBalanceResponse$2;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    return-void
.end method

.method private extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Lo/getChannel;->onMessageChannelReady()V

    .line 134
    iget-object v0, p0, Lo/UpiBalanceResponse;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Lo/UpiBalanceResponse;->onRelationshipValidationResult:J

    .line 145
    iput-wide v0, p0, Lo/UpiBalanceResponse;->onPostMessage:J

    .line 146
    :goto_0
    iget-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiBalanceResponse$onMessageChannelReady;

    invoke-direct {p0, v0}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, v0}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    :cond_1
    return-void
.end method

.method public ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 79
    invoke-virtual {p1}, Lo/getChannel;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    invoke-direct {p0, p1}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    iget-wide v0, p0, Lo/UpiBalanceResponse;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lo/UpiBalanceResponse;->onRelationshipValidationResult:J

    invoke-static {p1, v0, v1}, Lo/UpiBalanceResponse$onMessageChannelReady;->onMessageChannelReady(Lo/UpiBalanceResponse$onMessageChannelReady;J)J

    .line 85
    iget-object p1, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    iget-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    return-void
.end method

.method public ICustomTabsCallback$Stub()Lo/TransactionDetails;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    .line 99
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiBalanceResponse$onMessageChannelReady;

    iget-wide v2, v0, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v4, p0, Lo/UpiBalanceResponse;->onPostMessage:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 100
    iget-object v0, p0, Lo/UpiBalanceResponse;->onNavigationEvent:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiBalanceResponse$onMessageChannelReady;

    .line 104
    invoke-virtual {v0}, Lo/getChannel;->r_()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v1, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TransactionDetails;

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v1, v2}, Lo/getChannel;->extraCallback(I)V

    .line 107
    invoke-direct {p0, v0}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0, v0}, Lo/UpiBalanceResponse;->onMessageChannelReady(Lo/TransactionDetailsJsonAdapter;)V

    .line 114
    invoke-virtual {p0}, Lo/UpiBalanceResponse;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lo/UpiBalanceResponse;->asBinder()Lo/Status;

    move-result-object v6

    .line 118
    invoke-virtual {v0}, Lo/getChannel;->onNavigationEvent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    iget-object v1, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/TransactionDetails;

    .line 120
    iget-wide v4, v0, Lo/setReferrerCustomerId;->onPostMessage:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lo/TransactionDetails;->ICustomTabsCallback(JLo/Status;J)V

    .line 121
    invoke-direct {p0, v0}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    return-object v1

    .line 126
    :cond_2
    invoke-direct {p0, v0}, Lo/UpiBalanceResponse;->extraCallback(Lo/UpiBalanceResponse$onMessageChannelReady;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method protected abstract asBinder()Lo/Status;
.end method

.method public extraCallback(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lo/UpiBalanceResponse;->onPostMessage:J

    return-void
.end method

.method protected extraCallback(Lo/TransactionDetails;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Lo/getChannel;->onMessageChannelReady()V

    .line 139
    iget-object v0, p0, Lo/UpiBalanceResponse;->extraCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract extraCallback()Z
.end method

.method public synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/UpiBalanceResponse;->ICustomTabsCallback$Stub()Lo/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    check-cast p1, Lo/TransactionDetailsJsonAdapter;

    invoke-virtual {p0, p1}, Lo/UpiBalanceResponse;->ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;)V

    return-void
.end method

.method protected abstract onMessageChannelReady(Lo/TransactionDetailsJsonAdapter;)V
.end method

.method public synthetic onNavigationEvent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lo/UpiBalanceResponse;->onTransact()Lo/TransactionDetailsJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method

.method public onTransact()Lo/TransactionDetailsJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 69
    iget-object v0, p0, Lo/UpiBalanceResponse;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_1
    iget-object v0, p0, Lo/UpiBalanceResponse;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/UpiBalanceResponse$onMessageChannelReady;

    iput-object v0, p0, Lo/UpiBalanceResponse;->onMessageChannelReady:Lo/UpiBalanceResponse$onMessageChannelReady;

    return-object v0
.end method
