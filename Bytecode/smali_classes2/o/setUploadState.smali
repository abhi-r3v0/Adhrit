.class final Lo/setUploadState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMessageFragments;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/setMessageFragments;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/setMessageFragments<",
            "**>;"
        }
    .end annotation

    .line 3
    check-cast p1, Lo/setRead;

    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    move-object v0, p1

    check-cast v0, Lo/setCreatedMillis;

    invoke-virtual {v0}, Lo/setCreatedMillis;->onPostMessage()V

    return-object p1
.end method

.method public final onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p2, Lo/setCreatedMillis;

    .line 21
    check-cast p3, Lo/setRead;

    .line 22
    invoke-virtual {p2}, Lo/setCreatedMillis;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    return p3

    .line 25
    :cond_0
    invoke-virtual {p2}, Lo/setCreatedMillis;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return p3

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 11
    check-cast p1, Lo/setCreatedMillis;

    .line 12
    check-cast p2, Lo/setCreatedMillis;

    .line 13
    invoke-virtual {p2}, Lo/setCreatedMillis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lo/setCreatedMillis;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lo/setCreatedMillis;->ICustomTabsCallback()Lo/setCreatedMillis;

    move-result-object p1

    .line 16
    :cond_0
    invoke-virtual {p1, p2}, Lo/setCreatedMillis;->onNavigationEvent(Lo/setCreatedMillis;)V

    :cond_1
    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 5
    check-cast p1, Lo/setCreatedMillis;

    return-object p1
.end method
