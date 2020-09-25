.class public final Lo/setDropDownAlwaysVisible;
.super Lo/postOrRun;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/postOrRun<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/postOrRun;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 22
    invoke-super {p0}, Lo/postOrRun;->clear()V

    return-void
.end method

.method public final extraCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 46
    invoke-super {p0, p1}, Lo/postOrRun;->extraCallback(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 51
    iget v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0}, Lo/postOrRun;->hashCode()I

    move-result v0

    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 54
    :cond_0
    iget v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    return v0
.end method

.method public final onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 28
    invoke-super {p0, p1, p2}, Lo/postOrRun;->onMessageChannelReady(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/fromMediaItemList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fromMediaItemList<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 40
    invoke-super {p0, p1}, Lo/postOrRun;->onPostMessage(Lo/fromMediaItemList;)V

    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lo/setDropDownAlwaysVisible;->onPostMessage:I

    .line 34
    invoke-super {p0, p1, p2}, Lo/postOrRun;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
