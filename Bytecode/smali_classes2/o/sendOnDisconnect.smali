.class final Lo/sendOnDisconnect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic onNavigationEvent:Lo/cancelSentTransactions$IPostMessageService$Stub;


# direct methods
.method constructor <init>(Lo/cancelSentTransactions$IPostMessageService$Stub;)V
    .locals 0

    .line 840
    iput-object p1, p0, Lo/sendOnDisconnect;->onNavigationEvent:Lo/cancelSentTransactions$IPostMessageService$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 844
    iget-object v0, p0, Lo/sendOnDisconnect;->onNavigationEvent:Lo/cancelSentTransactions$IPostMessageService$Stub;

    iget-object v0, v0, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    iget-object v1, p0, Lo/sendOnDisconnect;->onNavigationEvent:Lo/cancelSentTransactions$IPostMessageService$Stub;

    iget-object v1, v1, Lo/cancelSentTransactions$IPostMessageService$Stub;->extraCallback:Lo/cancelSentTransactions$validateRelationship;

    iget v1, v1, Lo/cancelSentTransactions$validateRelationship;->onMessageChannelReady:I

    add-int/lit8 v1, v1, 0x1

    .line 845
    invoke-static {v0, v1}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;I)Lo/cancelSentTransactions$validateRelationship;

    move-result-object v0

    .line 846
    iget-object v1, p0, Lo/sendOnDisconnect;->onNavigationEvent:Lo/cancelSentTransactions$IPostMessageService$Stub;

    iget-object v1, v1, Lo/cancelSentTransactions$IPostMessageService$Stub;->ICustomTabsCallback:Lo/cancelSentTransactions;

    invoke-static {v1, v0}, Lo/cancelSentTransactions;->ICustomTabsCallback(Lo/cancelSentTransactions;Lo/cancelSentTransactions$validateRelationship;)V

    return-void
.end method
