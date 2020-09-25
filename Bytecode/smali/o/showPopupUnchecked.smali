.class final Lo/showPopupUnchecked;
.super Lo/ActivityChooserModel$HistoricalRecord;
.source ""


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lo/ActivityChooserModel$HistoricalRecord;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 13
    iget v0, p0, Lo/ActivityChooserModel$HistoricalRecord;->onMessageChannelReady:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 1018
    invoke-virtual {p0}, Lo/showPopupUnchecked;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget v0, p0, Lo/ActivityChooserModel$HistoricalRecord;->onMessageChannelReady:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lo/ActivityChooserModel$HistoricalRecord;->onMessageChannelReady:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "position out of bounds reached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
