.class public abstract Lo/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field onMessageChannelReady:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 13
    iput p1, p0, Lo/ActivityChooserModel$HistoricalRecord;->ICustomTabsCallback:I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item count couldn\'t be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onPostMessage(I)V
    .locals 1

    .line 17
    iget v0, p0, Lo/ActivityChooserModel$HistoricalRecord;->ICustomTabsCallback:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 19
    iput p1, p0, Lo/ActivityChooserModel$HistoricalRecord;->onMessageChannelReady:I

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "can\'t move to negative position"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "you can\'t move above of maxItemCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removing not supported in position iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
