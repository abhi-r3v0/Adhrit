.class public final Lcom/google/android/exoplayer2/source/ClippingMediaSource;
.super Lo/logDecode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;,
        Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/logDecode<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;

.field private ICustomTabsService:J

.field private final asBinder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getBitmapString;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Z

.field private final extraCallback:Lo/InstrumentsCompleteJsonAdapter;

.field private getInterfaceDescriptor:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:J

.field private final onPostMessage:Z

.field private onRelationshipValidationResult:Ljava/lang/Object;

.field private final onTransact:Lo/t$onMessageChannelReady;

.field private warmup:J


# direct methods
.method private ICustomTabsCallback(Lo/t;)V
    .locals 15

    move-object v1, p0

    .line 249
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onTransact:Lo/t$onMessageChannelReady;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Lo/t;->onPostMessage(ILo/t$onMessageChannelReady;)Lo/t$onMessageChannelReady;

    .line 250
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onTransact:Lo/t$onMessageChannelReady;

    invoke-virtual {v0}, Lo/t$onMessageChannelReady;->ICustomTabsCallback()J

    move-result-wide v5

    .line 251
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback$Stub:Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onPostMessage:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsService:J

    sub-long/2addr v2, v5

    .line 271
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->warmup:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v2

    goto :goto_4

    .line 252
    :cond_2
    :goto_1
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onNavigationEvent:J

    .line 253
    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback:J

    .line 254
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asInterface:Z

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onTransact:Lo/t$onMessageChannelReady;

    invoke-virtual {v0}, Lo/t$onMessageChannelReady;->extraCallback()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    .line 259
    iput-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsService:J

    .line 260
    iget-wide v13, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->warmup:J

    .line 264
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_5

    .line 266
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getBitmapString;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsService:J

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->warmup:J

    invoke-virtual {v3, v5, v6, v7, v8}, Lo/getBitmapString;->onPostMessage(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 277
    :goto_4
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;-><init>(Lo/t;JJ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback$Stub:Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onRelationshipValidationResult:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 279
    iput-object v0, v1, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->getInterfaceDescriptor:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;J)J
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onMessageChannelReady(Ljava/lang/Void;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->getInterfaceDescriptor:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 205
    invoke-super {p0}, Lo/logDecode;->ICustomTabsCallback()V

    return-void

    .line 203
    :cond_0
    throw v0
.end method

.method public final ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->extraCallback:Lo/InstrumentsCompleteJsonAdapter;

    check-cast p1, Lo/getBitmapString;

    iget-object p1, p1, Lo/getBitmapString;->onPostMessage:Lo/PaymentModeAdapter;

    invoke-interface {v0, p1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    .line 224
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onPostMessage:Z

    if-nez p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback$Stub:Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;

    iget-object p1, p1, Lo/toJson;->onMessageChannelReady:Lo/t;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback(Lo/t;)V

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lo/logDecode;->extraCallback(Lo/InitPayloadJsonAdapter;)V

    .line 197
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->extraCallback:Lo/InstrumentsCompleteJsonAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V

    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/Void;J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    return-wide v0

    .line 290
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onNavigationEvent:J

    invoke-static {v0, v1}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-long/2addr p2, v0

    .line 291
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 292
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p3, v2, v4

    if-eqz p3, :cond_1

    .line 293
    invoke-static {v2, v3}, Lo/$$c;->onNavigationEvent(J)J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 231
    invoke-super {p0}, Lo/logDecode;->onMessageChannelReady()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->getInterfaceDescriptor:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    .line 233
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback$Stub:Lcom/google/android/exoplayer2/source/ClippingMediaSource$onNavigationEvent;

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onPostMessage(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
    .locals 8

    .line 210
    new-instance v7, Lo/getBitmapString;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->extraCallback:Lo/InstrumentsCompleteJsonAdapter;

    .line 212
    invoke-interface {v0, p1, p2, p3, p4}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onMessageChannelReady:Z

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsService:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->warmup:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/getBitmapString;-><init>(Lo/PaymentModeAdapter;ZJJ)V

    .line 216
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->asBinder:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method protected final onPostMessage(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->getInterfaceDescriptor:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    .line 242
    :cond_0
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->onRelationshipValidationResult:Ljava/lang/Object;

    .line 243
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/ClippingMediaSource;->ICustomTabsCallback(Lo/t;)V

    return-void
.end method
