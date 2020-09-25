.class public abstract Lo/SimDetailJsonAdapter;
.super Lo/getParameters;
.source ""

# interfaces
.implements Lo/SurchargeDetails;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getParameters<",
        "Lo/TransactionDetailsJsonAdapter;",
        "Lo/TransactionDetails;",
        "Lcom/google/android/exoplayer2/text/SubtitleDecoderException;",
        ">;",
        "Lo/SurchargeDetails;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Lo/TransactionDetailsJsonAdapter;

    new-array v0, v0, [Lo/TransactionDetails;

    .line 36
    invoke-direct {p0, v1, v0}, Lo/getParameters;-><init>([Lo/setReferrerCustomerId;[Lo/setCampaign;)V

    .line 37
    iput-object p1, p0, Lo/SimDetailJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/16 p1, 0x400

    .line 38
    invoke-virtual {p0, p1}, Lo/SimDetailJsonAdapter;->ICustomTabsCallback(I)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;Lo/TransactionDetails;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 8

    .line 77
    :try_start_0
    iget-object v0, p1, Lo/setReferrerCustomerId;->onNavigationEvent:Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lo/SimDetailJsonAdapter;->onNavigationEvent([BIZ)Lo/Status;

    move-result-object v5

    .line 79
    iget-wide v3, p1, Lo/setReferrerCustomerId;->onPostMessage:J

    iget-wide v6, p1, Lo/TransactionDetailsJsonAdapter;->onMessageChannelReady:J

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lo/TransactionDetails;->ICustomTabsCallback(JLo/Status;J)V

    const/high16 p1, -0x80000000

    .line 81
    invoke-virtual {p2, p1}, Lo/getChannel;->onNavigationEvent(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    return-object p1
.end method

.method protected final ICustomTabsCallback(Lo/TransactionDetails;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lo/getParameters;->onPostMessage(Lo/setCampaign;)V

    return-void
.end method

.method public synthetic ICustomTabsCallback$Stub()Lo/setReferrerCustomerId;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/SimDetailJsonAdapter;->onTransact()Lo/TransactionDetailsJsonAdapter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic asBinder()Lo/setCampaign;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/SimDetailJsonAdapter;->onRelationshipValidationResult()Lo/TransactionDetails;

    move-result-object v0

    return-object v0
.end method

.method public synthetic extraCallback(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/SimDetailJsonAdapter;->onPostMessage(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method public extraCallback(J)V
    .locals 0

    return-void
.end method

.method public synthetic onMessageChannelReady(Lo/setReferrerCustomerId;Lo/setCampaign;Z)Ljava/lang/Exception;
    .locals 0

    .line 26
    check-cast p1, Lo/TransactionDetailsJsonAdapter;

    check-cast p2, Lo/TransactionDetails;

    invoke-virtual {p0, p1, p2, p3}, Lo/SimDetailJsonAdapter;->ICustomTabsCallback(Lo/TransactionDetailsJsonAdapter;Lo/TransactionDetails;Z)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onNavigationEvent([BIZ)Lo/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation
.end method

.method protected final onPostMessage(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
    .locals 2

    .line 63
    new-instance v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v1, "Unexpected decode error"

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public synthetic onPostMessage(Lo/setCampaign;)V
    .locals 0

    .line 26
    check-cast p1, Lo/TransactionDetails;

    invoke-virtual {p0, p1}, Lo/SimDetailJsonAdapter;->ICustomTabsCallback(Lo/TransactionDetails;)V

    return-void
.end method

.method protected final onRelationshipValidationResult()Lo/TransactionDetails;
    .locals 1

    .line 58
    new-instance v0, Lo/SimDetail;

    invoke-direct {v0, p0}, Lo/SimDetail;-><init>(Lo/SimDetailJsonAdapter;)V

    return-object v0
.end method

.method protected final onTransact()Lo/TransactionDetailsJsonAdapter;
    .locals 1

    .line 53
    new-instance v0, Lo/TransactionDetailsJsonAdapter;

    invoke-direct {v0}, Lo/TransactionDetailsJsonAdapter;-><init>()V

    return-object v0
.end method
