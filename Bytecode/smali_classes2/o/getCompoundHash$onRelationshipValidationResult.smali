.class final Lo/getCompoundHash$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->onTransact()Lo/getCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getCompoundHash;


# direct methods
.method constructor <init>(Lo/getCompoundHash;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lo/getCompoundHash$onRelationshipValidationResult;->onPostMessage:Lo/getCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 752
    iget-object v0, p0, Lo/getCompoundHash$onRelationshipValidationResult;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->mayLaunchUrl(Lo/getCompoundHash;)Lo/saveTrackedQueryKeys;

    move-result-object v0

    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "Entering SHUTDOWN state"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lo/getCompoundHash$onRelationshipValidationResult;->onPostMessage:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;)Lo/getPosts;

    move-result-object v0

    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    invoke-virtual {v0, v1}, Lo/getPosts;->ICustomTabsCallback(Lo/setTransactionSuccessful;)V

    return-void
.end method
