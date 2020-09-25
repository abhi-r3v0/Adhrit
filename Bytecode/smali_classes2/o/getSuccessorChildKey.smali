.class public abstract Lo/getSuccessorChildKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/asString;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lo/asString<",
        "Ljava/util/Collection<",
        "TT;>;TC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 1

    .line 27
    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 2034
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 2036
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2037
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2038
    invoke-virtual {p0, v0, p2}, Lo/getSuccessorChildKey;->onMessageChannelReady(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract extraCallback(Landroid/os/Parcel;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract onMessageChannelReady(Ljava/lang/Object;Landroid/os/Parcel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation
.end method

.method public final synthetic onPostMessage(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1050
    :cond_0
    invoke-virtual {p0}, Lo/getSuccessorChildKey;->onMessageChannelReady()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1052
    invoke-virtual {p0, p1}, Lo/getSuccessorChildKey;->extraCallback(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method
