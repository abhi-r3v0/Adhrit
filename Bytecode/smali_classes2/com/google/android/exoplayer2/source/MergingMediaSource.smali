.class public final Lcom/google/android/exoplayer2/source/MergingMediaSource;
.super Lo/logDecode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/logDecode<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[Lo/t;

.field private asInterface:I

.field private final extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

.field private final onMessageChannelReady:Lo/resetOptions;

.field private onNavigationEvent:Ljava/lang/Object;

.field private final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InstrumentsCompleteJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;


# direct methods
.method private extraCallback(Lo/t;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;
    .locals 2

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->asInterface:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->asInterface:I

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p1}, Lo/t;->onPostMessage()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->asInterface:I

    if-eq p1, v0, :cond_1

    .line 182
    new-instance p1, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0}, Lo/logDecode;->ICustomTabsCallback()V

    return-void

    .line 117
    :cond_0
    throw v0
.end method

.method public final ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 3

    .line 136
    check-cast p1, Lo/CardBinRequest;

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 138
    aget-object v1, v1, v0

    iget-object v2, p1, Lo/CardBinRequest;->onPostMessage:[Lo/PaymentModeAdapter;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lo/logDecode;->extraCallback(Lo/InitPayloadJsonAdapter;)V

    const/4 p1, 0x0

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 144
    invoke-super {p0}, Lo/logDecode;->onMessageChannelReady()V

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback:[Lo/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onNavigationEvent:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->asInterface:I

    .line 148
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onNavigationEvent(Ljava/lang/Integer;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    array-length v0, v0

    new-array v1, v0, [Lo/PaymentModeAdapter;

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback:[Lo/t;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lo/t;->extraCallback(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 127
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback:[Lo/t;

    aget-object v4, v4, v3

    .line 128
    invoke-virtual {v4, v2}, Lo/t;->ICustomTabsCallback(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback(Ljava/lang/Object;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v4

    .line 129
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    aget-object v5, v5, v3

    invoke-interface {v5, v4, p2, p3, p4}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance p1, Lo/CardBinRequest;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onMessageChannelReady:Lo/resetOptions;

    invoke-direct {p1, p2, v1}, Lo/CardBinRequest;-><init>(Lo/resetOptions;[Lo/PaymentModeAdapter;)V

    return-object p1
.end method

.method protected final onNavigationEvent(Ljava/lang/Integer;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback(Lo/t;)Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onTransact:Lcom/google/android/exoplayer2/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_1

    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback:[Lo/t;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    aput-object p3, v0, p1

    .line 164
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->extraCallback:[Lo/InstrumentsCompleteJsonAdapter;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    if-ne p2, p1, :cond_2

    .line 165
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onNavigationEvent:Ljava/lang/Object;

    .line 167
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback:[Lo/t;

    aget-object p1, p1, p3

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected final onPostMessage(Ljava/lang/Integer;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MergingMediaSource;->onPostMessage(Ljava/lang/Integer;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    return-object p1
.end method
