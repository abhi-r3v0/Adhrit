.class public final Lo/InstrumentsComplete;
.super Lo/logDecode;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstrumentsComplete$extraCallback;,
        Lo/InstrumentsComplete$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/logDecode<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:I

.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/PaymentModeAdapter;",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/InstrumentsCompleteJsonAdapter;


# direct methods
.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter;)V
    .locals 1

    const v0, 0x7fffffff

    .line 50
    invoke-direct {p0, p1, v0}, Lo/InstrumentsComplete;-><init>(Lo/InstrumentsCompleteJsonAdapter;I)V

    return-void
.end method

.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter;I)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lo/logDecode;-><init>()V

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 61
    iput-object p1, p0, Lo/InstrumentsComplete;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter;

    .line 62
    iput p2, p0, Lo/InstrumentsComplete;->extraCallback:I

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/InstrumentsComplete;->ICustomTabsCallback:Ljava/util/Map;

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/InstrumentsComplete;->onMessageChannelReady:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 1

    .line 115
    iget p1, p0, Lo/InstrumentsComplete;->extraCallback:I

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lo/InstrumentsComplete;->ICustomTabsCallback:Ljava/util/Map;

    .line 116
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected final ICustomTabsCallback(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 105
    iget p1, p0, Lo/InstrumentsComplete;->extraCallback:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    new-instance p1, Lo/InstrumentsComplete$onMessageChannelReady;

    iget p2, p0, Lo/InstrumentsComplete;->extraCallback:I

    invoke-direct {p1, p3, p2}, Lo/InstrumentsComplete$onMessageChannelReady;-><init>(Lo/t;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lo/InstrumentsComplete$extraCallback;

    invoke-direct {p1, p3}, Lo/InstrumentsComplete$extraCallback;-><init>(Lo/t;)V

    .line 109
    :goto_0
    invoke-virtual {p0, p1, p4}, Lo/InstrumentsComplete;->ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/PaymentModeAdapter;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/InstrumentsComplete;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v0, p1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/PaymentModeAdapter;)V

    .line 96
    iget-object v0, p0, Lo/InstrumentsComplete;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lo/InstrumentsComplete;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lo/logDecode;->extraCallback(Lo/InitPayloadJsonAdapter;)V

    .line 76
    iget-object p1, p0, Lo/InstrumentsComplete;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lo/InstrumentsComplete;->onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V

    return-void
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/InstrumentsComplete;->ICustomTabsCallback(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
    .locals 2

    .line 81
    iget v0, p0, Lo/InstrumentsComplete;->extraCallback:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lo/InstrumentsComplete;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    iget-object v0, p1, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->extraCallback:Ljava/lang/Object;

    invoke-static {v0}, Lo/InstrumentsComplete$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lo/InstrumentsCompleteJsonAdapter$extraCallback;->ICustomTabsCallback(Ljava/lang/Object;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lo/InstrumentsComplete;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lo/InstrumentsComplete;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter;

    .line 88
    invoke-interface {p1, v0, p2, p3, p4}, Lo/InstrumentsCompleteJsonAdapter;->onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lo/InstrumentsComplete;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected final synthetic onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lo/InstrumentsComplete;->ICustomTabsCallback(Ljava/lang/Void;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    move-result-object p1

    return-object p1
.end method
