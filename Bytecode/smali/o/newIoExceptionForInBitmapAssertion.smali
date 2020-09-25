.class public abstract Lo/newIoExceptionForInBitmapAssertion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstrumentsCompleteJsonAdapter;


# instance fields
.field private ICustomTabsCallback:Lo/t;

.field private extraCallback:Landroid/os/Looper;

.field private onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:Lo/Account$extraCallback;

.field private final onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onPostMessage:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lo/Account$extraCallback;

    invoke-direct {v0}, Lo/Account$extraCallback;-><init>()V

    iput-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent:Lo/Account$extraCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Handler;Lo/Account;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/Account$extraCallback;->onNavigationEvent(Landroid/os/Handler;Lo/Account;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/Account;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {v0, p1}, Lo/Account$extraCallback;->onPostMessage(Lo/Account;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object p1, p0, Lo/newIoExceptionForInBitmapAssertion;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lo/newIoExceptionForInBitmapAssertion;->extraCallback:Landroid/os/Looper;

    .line 151
    iput-object p1, p0, Lo/newIoExceptionForInBitmapAssertion;->ICustomTabsCallback:Lo/t;

    .line 152
    iput-object p1, p0, Lo/newIoExceptionForInBitmapAssertion;->onMessageChannelReady:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0}, Lo/newIoExceptionForInBitmapAssertion;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method protected final ICustomTabsCallback(Lo/t;Ljava/lang/Object;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lo/newIoExceptionForInBitmapAssertion;->ICustomTabsCallback:Lo/t;

    .line 72
    iput-object p2, p0, Lo/newIoExceptionForInBitmapAssertion;->onMessageChannelReady:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;

    .line 74
    invoke-interface {v1, p0, p1, p2}, Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract extraCallback(Lo/InitPayloadJsonAdapter;)V
.end method

.method protected abstract onMessageChannelReady()V
.end method

.method public final onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;)Lo/Account$extraCallback;
    .locals 4

    .line 88
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent:Lo/Account$extraCallback;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lo/Account$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)Lo/Account$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method protected final onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)Lo/Account$extraCallback;
    .locals 1

    .line 118
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onNavigationEvent:Lo/Account$extraCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/Account$extraCallback;->onPostMessage(ILo/InstrumentsCompleteJsonAdapter$extraCallback;J)Lo/Account$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/InitPayloadJsonAdapter;)V
    .locals 2

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lo/newIoExceptionForInBitmapAssertion;->extraCallback:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 137
    iget-object v1, p0, Lo/newIoExceptionForInBitmapAssertion;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lo/newIoExceptionForInBitmapAssertion;->extraCallback:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 139
    iput-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->extraCallback:Landroid/os/Looper;

    .line 140
    invoke-virtual {p0, p2}, Lo/newIoExceptionForInBitmapAssertion;->extraCallback(Lo/InitPayloadJsonAdapter;)V

    return-void

    .line 141
    :cond_2
    iget-object p2, p0, Lo/newIoExceptionForInBitmapAssertion;->ICustomTabsCallback:Lo/t;

    if-eqz p2, :cond_3

    .line 142
    iget-object v0, p0, Lo/newIoExceptionForInBitmapAssertion;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {p1, p0, p2, v0}, Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;->onMessageChannelReady(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
