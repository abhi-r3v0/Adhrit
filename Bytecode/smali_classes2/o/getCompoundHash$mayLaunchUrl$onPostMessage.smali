.class final Lo/getCompoundHash$mayLaunchUrl$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash$mayLaunchUrl;->onNavigationEvent(Lo/setTransactionSuccessful;Lo/getMinKey$ICustomTabsCallback$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setTransactionSuccessful;

.field private synthetic onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback$Stub;

.field private synthetic onPostMessage:Lo/getCompoundHash$mayLaunchUrl;


# direct methods
.method constructor <init>(Lo/getCompoundHash$mayLaunchUrl;Lo/getMinKey$ICustomTabsCallback$Stub;Lo/setTransactionSuccessful;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1146
    iput-object p1, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onPostMessage:Lo/getCompoundHash$mayLaunchUrl;

    iput-object p2, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback$Stub;

    iput-object p3, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->extraCallback:Lo/setTransactionSuccessful;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1149
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onPostMessage:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v1, v0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v1}, Lo/getCompoundHash;->INotificationSideChannel(Lo/getCompoundHash;)Lo/getCompoundHash$mayLaunchUrl;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 1152
    :cond_0
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onPostMessage:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v0, v0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    iget-object v1, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback$Stub;

    invoke-static {v0, v1}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;Lo/getMinKey$ICustomTabsCallback$Stub;)V

    .line 1155
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->extraCallback:Lo/setTransactionSuccessful;

    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_1

    .line 1156
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onPostMessage:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v0, v0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->extraCallback:Lo/setTransactionSuccessful;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onMessageChannelReady:Lo/getMinKey$ICustomTabsCallback$Stub;

    aput-object v4, v2, v3

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    iget-object v0, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->onPostMessage:Lo/getCompoundHash$mayLaunchUrl;

    iget-object v0, v0, Lo/getCompoundHash$mayLaunchUrl;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;)Lo/getPosts;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash$mayLaunchUrl$onPostMessage;->extraCallback:Lo/setTransactionSuccessful;

    invoke-virtual {v0, v1}, Lo/getPosts;->ICustomTabsCallback(Lo/setTransactionSuccessful;)V

    :cond_1
    return-void
.end method
