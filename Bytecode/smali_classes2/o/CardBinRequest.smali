.class public final Lo/CardBinRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PaymentModeAdapter;
.implements Lo/PaymentModeAdapter$onNavigationEvent;


# instance fields
.field private ICustomTabsCallback:Lo/PaymentModeAdapter$onNavigationEvent;

.field private ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

.field private asInterface:[Lo/PaymentModeAdapter;

.field private final extraCallback:Lo/resetOptions;

.field private final onMessageChannelReady:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lo/CardInstrumentJsonAdapter;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/PaymentModeAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:[Lo/PaymentModeAdapter;

.field private onRelationshipValidationResult:Lo/JuspaySessionToken;


# direct methods
.method public varargs constructor <init>(Lo/resetOptions;[Lo/PaymentModeAdapter;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lo/CardBinRequest;->extraCallback:Lo/resetOptions;

    .line 47
    iput-object p2, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    const/4 p2, 0x0

    new-array p2, p2, [Lo/CardBinResponseJsonAdapter;

    .line 50
    invoke-interface {p1, p2}, Lo/resetOptions;->onMessageChannelReady([Lo/CardBinResponseJsonAdapter;)Lo/CardBinResponseJsonAdapter;

    move-result-object p1

    iput-object p1, p0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    .line 51
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lo/CardBinRequest;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    .line 168
    iget-object v0, p0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardBinResponseJsonAdapter;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback(JLo/t$d;)J
    .locals 2

    .line 211
    iget-object v0, p0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2, p3}, Lo/PaymentModeAdapter;->ICustomTabsCallback(JLo/t$d;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final extraCallback()J
    .locals 2

    .line 194
    iget-object v0, p0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0}, Lo/CardBinResponseJsonAdapter;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 79
    array-length v3, v1

    new-array v3, v3, [I

    .line 80
    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 81
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 82
    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lo/CardBinRequest;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    .line 83
    invoke-virtual {v7, v9}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_1
    aput v7, v3, v6

    .line 84
    aput v8, v4, v6

    .line 85
    aget-object v7, v1, v6

    if-eqz v7, :cond_2

    .line 86
    aget-object v7, v1, v6

    invoke-interface {v7}, Lo/InstrumentView;->asBinder()Lo/getJuspayUpi;

    move-result-object v7

    const/4 v9, 0x0

    .line 87
    :goto_2
    iget-object v10, v0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v11, v10

    if-ge v9, v11, :cond_2

    .line 88
    aget-object v10, v10, v9

    invoke-interface {v10}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v10

    invoke-virtual {v10, v7}, Lo/JuspaySessionToken;->onMessageChannelReady(Lo/getJuspayUpi;)I

    move-result v10

    if-eq v10, v8, :cond_1

    .line 89
    aput v9, v4, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_3
    iget-object v6, v0, Lo/CardBinRequest;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->clear()V

    .line 97
    array-length v6, v1

    new-array v7, v6, [Lo/CardInstrumentJsonAdapter;

    .line 98
    array-length v8, v1

    new-array v8, v8, [Lo/CardInstrumentJsonAdapter;

    .line 99
    array-length v9, v1

    new-array v14, v9, [Lo/InstrumentView;

    .line 100
    new-instance v15, Ljava/util/ArrayList;

    iget-object v9, v0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v9, v9

    invoke-direct {v15, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v13, 0x0

    .line 101
    :goto_4
    iget-object v9, v0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v9, v9

    if-ge v13, v9, :cond_f

    const/4 v9, 0x0

    .line 102
    :goto_5
    array-length v10, v1

    if-ge v9, v10, :cond_6

    .line 103
    aget v10, v3, v9

    const/4 v11, 0x0

    if-ne v10, v13, :cond_4

    aget-object v10, v2, v9

    goto :goto_6

    :cond_4
    move-object v10, v11

    :goto_6
    aput-object v10, v8, v9

    .line 104
    aget v10, v4, v9

    if-ne v10, v13, :cond_5

    aget-object v11, v1, v9

    :cond_5
    aput-object v11, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 106
    :cond_6
    iget-object v9, v0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    aget-object v9, v9, v13

    move-object v10, v14

    move-object/from16 v11, p2

    move-object v12, v8

    move v5, v13

    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-interface/range {v9 .. v15}, Lo/PaymentModeAdapter;->extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_7

    move-wide/from16 v16, v9

    goto :goto_7

    :cond_7
    cmp-long v11, v9, v16

    if-nez v11, :cond_e

    :goto_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 114
    :goto_8
    array-length v11, v1

    if-ge v9, v11, :cond_c

    .line 115
    aget v11, v4, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_9

    .line 117
    aget-object v10, v8, v9

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_9

    :cond_8
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 118
    aget-object v10, v8, v9

    aput-object v10, v7, v9

    .line 120
    iget-object v10, v0, Lo/CardBinRequest;->onMessageChannelReady:Ljava/util/IdentityHashMap;

    aget-object v11, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_b

    .line 121
    :cond_9
    aget v11, v3, v9

    if-ne v11, v5, :cond_b

    .line 123
    aget-object v11, v8, v9

    if-nez v11, :cond_a

    goto :goto_a

    :cond_a
    const/4 v12, 0x0

    :goto_a
    invoke-static {v12}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    :cond_b
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_c
    if-eqz v10, :cond_d

    .line 127
    iget-object v9, v0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    aget-object v9, v9, v5

    invoke-virtual {v2, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v13, v5, 0x1

    move-object v15, v2

    move-object/from16 v14, v18

    move-object/from16 v2, p3

    goto/16 :goto_4

    .line 111
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object v1, v2

    move-object v2, v15

    const/4 v3, 0x0

    .line 131
    invoke-static {v7, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Lo/PaymentModeAdapter;

    iput-object v1, v0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    .line 134
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    iget-object v1, v0, Lo/CardBinRequest;->extraCallback:Lo/resetOptions;

    iget-object v2, v0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    .line 136
    invoke-interface {v1, v2}, Lo/resetOptions;->onMessageChannelReady([Lo/CardBinResponseJsonAdapter;)Lo/CardBinResponseJsonAdapter;

    move-result-object v1

    iput-object v1, v0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    return-wide v16
.end method

.method public final extraCallback(Lo/PaymentModeAdapter;)V
    .locals 10

    .line 218
    iget-object v0, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object p1, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object p1, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 224
    invoke-interface {v4}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v4

    iget v4, v4, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    new-array p1, v3, [Lo/getJuspayUpi;

    .line 228
    iget-object v0, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v5, v0, v3

    .line 229
    invoke-interface {v5}, Lo/PaymentModeAdapter;->onPostMessage()Lo/JuspaySessionToken;

    move-result-object v5

    .line 230
    iget v6, v5, Lo/JuspaySessionToken;->ICustomTabsCallback:I

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    add-int/lit8 v8, v4, 0x1

    .line 232
    invoke-virtual {v5, v7}, Lo/JuspaySessionToken;->onMessageChannelReady(I)Lo/getJuspayUpi;

    move-result-object v9

    aput-object v9, p1, v4

    add-int/lit8 v7, v7, 0x1

    move v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_3
    new-instance v0, Lo/JuspaySessionToken;

    invoke-direct {v0, p1}, Lo/JuspaySessionToken;-><init>([Lo/getJuspayUpi;)V

    iput-object v0, p0, Lo/CardBinRequest;->onRelationshipValidationResult:Lo/JuspaySessionToken;

    .line 236
    iget-object p1, p0, Lo/CardBinRequest;->ICustomTabsCallback:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->extraCallback(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final extraCallback(J)Z
    .locals 4

    .line 154
    iget-object v0, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 158
    iget-object v3, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/PaymentModeAdapter;

    invoke-interface {v3, p1, p2}, Lo/PaymentModeAdapter;->extraCallback(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/CardBinResponseJsonAdapter;->extraCallback(J)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()J
    .locals 9

    .line 173
    iget-object v0, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 175
    :goto_0
    iget-object v4, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_1

    .line 176
    aget-object v4, v4, v0

    invoke-interface {v4}, Lo/PaymentModeAdapter;->onMessageChannelReady()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 183
    iget-object v7, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_3

    .line 184
    invoke-interface {v6, v2, v3}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_2

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected child seekToUs result."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-wide v2
.end method

.method public final onMessageChannelReady(J)J
    .locals 4

    .line 199
    iget-object v0, p0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide p1

    const/4 v0, 0x1

    .line 201
    :goto_0
    iget-object v1, p0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 202
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lo/PaymentModeAdapter;->onMessageChannelReady(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-wide p1
.end method

.method public final onNavigationEvent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    invoke-interface {v3}, Lo/PaymentModeAdapter;->onNavigationEvent()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(J)V
    .locals 1

    .line 149
    iget-object v0, p0, Lo/CardBinRequest;->ICustomTabsCallback$Stub:Lo/CardBinResponseJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/CardBinResponseJsonAdapter;->onNavigationEvent(J)V

    return-void
.end method

.method public final onNavigationEvent(JZ)V
    .locals 4

    .line 142
    iget-object v0, p0, Lo/CardBinRequest;->asInterface:[Lo/PaymentModeAdapter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    invoke-interface {v3, p1, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V
    .locals 0

    .line 30
    check-cast p1, Lo/PaymentModeAdapter;

    invoke-virtual {p0, p1}, Lo/CardBinRequest;->onPostMessage(Lo/PaymentModeAdapter;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V
    .locals 3

    .line 56
    iput-object p1, p0, Lo/CardBinRequest;->ICustomTabsCallback:Lo/PaymentModeAdapter$onNavigationEvent;

    .line 57
    iget-object p1, p0, Lo/CardBinRequest;->onNavigationEvent:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 58
    iget-object p1, p0, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 59
    invoke-interface {v2, p0, p2, p3}, Lo/PaymentModeAdapter;->onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage()Lo/JuspaySessionToken;
    .locals 1

    .line 72
    iget-object v0, p0, Lo/CardBinRequest;->onRelationshipValidationResult:Lo/JuspaySessionToken;

    return-object v0
.end method

.method public final onPostMessage(Lo/PaymentModeAdapter;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lo/CardBinRequest;->ICustomTabsCallback:Lo/PaymentModeAdapter$onNavigationEvent;

    invoke-interface {p1, p0}, Lo/PaymentModeAdapter$onNavigationEvent;->onNavigationEvent(Lo/CardBinResponseJsonAdapter;)V

    return-void
.end method
