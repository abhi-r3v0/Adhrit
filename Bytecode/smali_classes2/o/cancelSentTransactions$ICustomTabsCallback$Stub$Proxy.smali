.class final Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cancelSentTransactions$newSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Proxy"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Ljava/lang/Object;

.field private synthetic onPostMessage:Lo/cancelSentTransactions;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 487
    iput-object p1, p0, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/cancelSentTransactions;

    iput-object p2, p0, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/cancelSentTransactions$validateRelationship;)V
    .locals 2

    .line 490
    iget-object p1, p1, Lo/cancelSentTransactions$validateRelationship;->onPostMessage:Lo/colorFlip;

    iget-object v0, p0, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/cancelSentTransactions;

    invoke-static {v0}, Lo/cancelSentTransactions;->asBinder(Lo/cancelSentTransactions;)Lo/reverseIterator;

    move-result-object v0

    iget-object v1, p0, Lo/cancelSentTransactions$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Ljava/lang/Object;

    .line 1287
    iget-object v0, v0, Lo/reverseIterator;->onMessageChannelReady:Lo/reverseIterator$onMessageChannelReady;

    invoke-interface {v0, v1}, Lo/reverseIterator$onMessageChannelReady;->onNavigationEvent(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 490
    invoke-interface {p1, v0}, Lo/colorFlip;->extraCallback(Ljava/io/InputStream;)V

    return-void
.end method
