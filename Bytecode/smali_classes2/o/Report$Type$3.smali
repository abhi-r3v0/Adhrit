.class final Lo/Report$Type$3;
.super Lo/Report$Type;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Report$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Report$Type<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, v0}, Lo/Report$Type;-><init>(IB)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 1174
    iget-boolean v0, p0, Lo/Report$Type;->ICustomTabsCallback:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 1179
    :goto_0
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1184
    iget-object v1, p0, Lo/Report$Type;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    invoke-static {}, Lo/Report$Type$onNavigationEvent;->onPostMessage()Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/Report$Type;->onMessageChannelReady:Ljava/util/Map;

    .line 1196
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-interface {v2}, Lo/getBinaryImageSize$ICustomTabsCallback;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 114
    :cond_4
    invoke-super {p0}, Lo/Report$Type;->ICustomTabsCallback()V

    return-void
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Lo/getBinaryImageSize$ICustomTabsCallback;

    invoke-super {p0, p1, p2}, Lo/Report$Type;->onNavigationEvent(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
