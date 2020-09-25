.class public abstract Lo/logDecode;
.super Lo/newIoExceptionForInBitmapAssertion;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/logDecode$extraCallback;,
        Lo/logDecode$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/newIoExceptionForInBitmapAssertion;"
    }
.end annotation


# instance fields
.field private onMessageChannelReady:Lo/InitPayloadJsonAdapter;

.field private onNavigationEvent:Landroid/os/Handler;

.field private final onPostMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TT;",
            "Lo/logDecode$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lo/newIoExceptionForInBitmapAssertion;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    return-wide p2
.end method

.method public ICustomTabsCallback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDecode$onMessageChannelReady;

    .line 56
    iget-object v1, v1, Lo/logDecode$onMessageChannelReady;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter;

    invoke-interface {v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public extraCallback(Lo/InitPayloadJsonAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/logDecode;->onMessageChannelReady:Lo/InitPayloadJsonAdapter;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/logDecode;->onNavigationEvent:Landroid/os/Handler;

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 4

    .line 63
    iget-object v0, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logDecode$onMessageChannelReady;

    .line 64
    iget-object v2, v1, Lo/logDecode$onMessageChannelReady;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter;

    iget-object v3, v1, Lo/logDecode$onMessageChannelReady;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;

    invoke-interface {v2, v3}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;)V

    .line 65
    iget-object v2, v1, Lo/logDecode$onMessageChannelReady;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter;

    iget-object v1, v1, Lo/logDecode$onMessageChannelReady;->extraCallback:Lo/Account;

    invoke-interface {v2, v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Lo/Account;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    return-void
.end method

.method protected abstract onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/InstrumentsCompleteJsonAdapter;",
            "Lo/t;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected onNavigationEvent(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    return p2
.end method

.method protected onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/InstrumentsCompleteJsonAdapter$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;",
            ")",
            "Lo/InstrumentsCompleteJsonAdapter$extraCallback;"
        }
    .end annotation

    return-object p2
.end method

.method protected final onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/InstrumentsCompleteJsonAdapter;",
            ")V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 96
    new-instance v0, Lo/InstrumentWrapperComplete;

    invoke-direct {v0, p0, p1}, Lo/InstrumentWrapperComplete;-><init>(Lo/logDecode;Ljava/lang/Object;)V

    .line 98
    new-instance v1, Lo/logDecode$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/logDecode$extraCallback;-><init>(Lo/logDecode;Ljava/lang/Object;)V

    .line 99
    iget-object v2, p0, Lo/logDecode;->onPostMessage:Ljava/util/HashMap;

    new-instance v3, Lo/logDecode$onMessageChannelReady;

    invoke-direct {v3, p2, v0, v1}, Lo/logDecode$onMessageChannelReady;-><init>(Lo/InstrumentsCompleteJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/Account;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object p1, p0, Lo/logDecode;->onNavigationEvent:Landroid/os/Handler;

    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lo/InstrumentsCompleteJsonAdapter;->ICustomTabsCallback(Landroid/os/Handler;Lo/Account;)V

    .line 101
    iget-object p1, p0, Lo/logDecode;->onMessageChannelReady:Lo/InitPayloadJsonAdapter;

    invoke-interface {p2, v0, p1}, Lo/InstrumentsCompleteJsonAdapter;->onPostMessage(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method synthetic onPostMessage(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/logDecode;->onMessageChannelReady(Ljava/lang/Object;Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    return-void
.end method
