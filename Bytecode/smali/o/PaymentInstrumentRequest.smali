.class public abstract Lo/PaymentInstrumentRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Z

.field private extraCallback:I

.field private onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

.field private final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InitPayloadJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lo/PaymentInstrumentRequest;->ICustomTabsCallback:Z

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback()V
    .locals 4

    .line 96
    iget-object v0, p0, Lo/PaymentInstrumentRequest;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentRequestJsonAdapter;

    const/4 v1, 0x0

    .line 97
    :goto_0
    iget v2, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v2, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InitPayloadJsonAdapter;

    iget-boolean v3, p0, Lo/PaymentInstrumentRequest;->ICustomTabsCallback:Z

    invoke-interface {v2, p0, v0, v3}, Lo/InitPayloadJsonAdapter;->onNavigationEvent(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lo/PaymentInstrumentRequest;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    return-void
.end method

.method protected final extraCallback(Lo/PaymentRequestJsonAdapter;)V
    .locals 3

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget v1, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InitPayloadJsonAdapter;

    iget-boolean v2, p0, Lo/PaymentInstrumentRequest;->ICustomTabsCallback:Z

    invoke-interface {v1, p0, p1, v2}, Lo/InitPayloadJsonAdapter;->onPostMessage(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onMessageChannelReady(Lo/PaymentRequestJsonAdapter;)V
    .locals 3

    .line 73
    iput-object p1, p0, Lo/PaymentInstrumentRequest;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    const/4 v0, 0x0

    .line 74
    :goto_0
    iget v1, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InitPayloadJsonAdapter;

    iget-boolean v2, p0, Lo/PaymentInstrumentRequest;->ICustomTabsCallback:Z

    invoke-interface {v1, p0, p1, v2}, Lo/InitPayloadJsonAdapter;->ICustomTabsCallback(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 52
    iget p1, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    :cond_0
    return-void
.end method

.method public onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1099
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostMessage(I)V
    .locals 4

    .line 86
    iget-object v0, p0, Lo/PaymentInstrumentRequest;->onMessageChannelReady:Lo/PaymentRequestJsonAdapter;

    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/PaymentRequestJsonAdapter;

    const/4 v1, 0x0

    .line 87
    :goto_0
    iget v2, p0, Lo/PaymentInstrumentRequest;->extraCallback:I

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lo/PaymentInstrumentRequest;->onNavigationEvent:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/InitPayloadJsonAdapter;

    iget-boolean v3, p0, Lo/PaymentInstrumentRequest;->ICustomTabsCallback:Z

    .line 90
    invoke-interface {v2, p0, v0, v3, p1}, Lo/InitPayloadJsonAdapter;->extraCallback(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
