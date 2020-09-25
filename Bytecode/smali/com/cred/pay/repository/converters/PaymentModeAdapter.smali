.class public final Lcom/cred/pay/repository/converters/PaymentModeAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u001c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0007J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0007H\u0007J\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\nH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cred/pay/repository/converters/PaymentModeAdapter;",
        "",
        "()V",
        "fromJson",
        "Lcom/cred/pay/repository/models/InstrumentWrapper;",
        "instrumentWrapperComplete",
        "Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;",
        "Lcom/cred/pay/repository/models/PaymentMethod;",
        "paymentModeComplete",
        "Lcom/cred/pay/repository/converters/PaymentModeComplete;",
        "",
        "toJson",
        "paymentMethod",
        "instrumentWrapper",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Lcom/cred/pay/repository/converters/PaymentModeComplete;)Lcom/cred/pay/repository/models/PaymentMethod;
    .locals 9
    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "paymentModeComplete"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4020
    sget-object v0, Lcom/cred/pay/repository/converters/PaymentModeComplete;->onTransact:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4021
    iget-object v0, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 4199
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 4199
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 4200
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4201
    check-cast v2, Lcom/cred/pay/repository/converters/InstrumentsComplete;

    .line 4022
    iget-object v3, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/cred/pay/repository/converters/InstrumentsComplete;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/isInputMethodNotNeeded;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4202
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    .line 4027
    iget-object v4, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->ICustomTabsCallback:Ljava/lang/String;

    .line 4028
    iget-object v5, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->onNavigationEvent:Ljava/lang/String;

    .line 4029
    iget-object v6, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->onMessageChannelReady:Lcom/cred/pay/repository/models/Status;

    .line 4030
    iget-object v7, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->extraCallback:Ljava/lang/String;

    .line 4031
    iget-object v8, p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;->asBinder:Ljava/lang/String;

    .line 4019
    new-instance p1, Lcom/cred/pay/repository/models/PaymentMethod;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/cred/pay/repository/models/PaymentMethod;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final fromJson(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;",
            ">;)",
            "Ljava/util/List<",
            "Lo/getInputMethodMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "instrumentWrapperComplete"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p1, Ljava/lang/Iterable;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 47
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 48
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    check-cast v1, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;

    .line 34
    invoke-virtual {p0, v1}, Lcom/cred/pay/repository/converters/PaymentModeAdapter;->fromJson(Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;)Lo/getInputMethodMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final fromJson(Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;)Lo/getInputMethodMode;
    .locals 3
    .annotation runtime Lo/nativeInit;
    .end annotation

    const-string v0, "instrumentWrapperComplete"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5195
    new-instance v0, Lo/getInputMethodMode;

    .line 5196
    iget-object v1, p1, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;->onPostMessage:Lcom/cred/pay/repository/converters/InstrumentsComplete;

    iget-object v2, p1, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cred/pay/repository/converters/InstrumentsComplete;->extraCallback(Lcom/cred/pay/repository/converters/InstrumentsComplete;Ljava/lang/String;)Lo/isInputMethodNotNeeded;

    move-result-object v1

    .line 5197
    iget-object p1, p1, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;->onNavigationEvent:Ljava/lang/String;

    .line 5195
    invoke-direct {v0, v1, p1}, Lo/getInputMethodMode;-><init>(Lo/isInputMethodNotNeeded;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toJson(Lcom/cred/pay/repository/models/PaymentMethod;)Lcom/cred/pay/repository/converters/PaymentModeComplete;
    .locals 9
    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p1, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 13
    check-cast v0, Ljava/lang/Iterable;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 43
    :goto_0
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 44
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    check-cast v2, Lo/isInputMethodNotNeeded;

    .line 13
    invoke-virtual {v2}, Lo/isInputMethodNotNeeded;->onTransact()Lcom/cred/pay/repository/converters/InstrumentsComplete;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_1
    check-cast v1, Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v3, v1

    .line 2026
    iget-object v4, p1, Lcom/cred/pay/repository/models/PaymentMethod;->onMessageChannelReady:Ljava/lang/String;

    .line 2027
    iget-object v5, p1, Lcom/cred/pay/repository/models/PaymentMethod;->ICustomTabsCallback:Ljava/lang/String;

    .line 2029
    iget-object v7, p1, Lcom/cred/pay/repository/models/PaymentMethod;->extraCallback:Ljava/lang/String;

    .line 3028
    iget-object v6, p1, Lcom/cred/pay/repository/models/PaymentMethod;->onNavigationEvent:Lcom/cred/pay/repository/models/Status;

    .line 3031
    iget-object v8, p1, Lcom/cred/pay/repository/models/PaymentMethod;->asInterface:Ljava/lang/String;

    .line 12
    new-instance p1, Lcom/cred/pay/repository/converters/PaymentModeComplete;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/cred/pay/repository/converters/PaymentModeComplete;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/Status;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final toJson(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getInputMethodMode;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;",
            ">;"
        }
    .end annotation

    .annotation runtime Lo/SessionMetadataJsonSerializer;
    .end annotation

    const-string v0, "instrumentWrapper"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    check-cast p1, Ljava/lang/Iterable;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7039
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 51
    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 52
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 53
    check-cast v1, Lo/getInputMethodMode;

    .line 39
    new-instance v2, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;

    .line 7071
    iget-object v3, v1, Lo/getInputMethodMode;->onPostMessage:Lo/isInputMethodNotNeeded;

    .line 39
    invoke-virtual {v3}, Lo/isInputMethodNotNeeded;->onTransact()Lcom/cred/pay/repository/converters/InstrumentsComplete;

    move-result-object v3

    .line 7072
    iget-object v1, v1, Lo/getInputMethodMode;->onMessageChannelReady:Ljava/lang/String;

    .line 39
    invoke-direct {v2, v3, v1}, Lcom/cred/pay/repository/converters/InstrumentWrapperComplete;-><init>(Lcom/cred/pay/repository/converters/InstrumentsComplete;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method
