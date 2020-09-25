.class final Lo/shouldIncludeCompoundHash$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldIncludeCompoundHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/shouldIncludeCompoundHash;


# direct methods
.method constructor <init>(Lo/shouldIncludeCompoundHash;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lo/shouldIncludeCompoundHash$extraCallback;->onPostMessage:Lo/shouldIncludeCompoundHash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 272
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$extraCallback;->onPostMessage:Lo/shouldIncludeCompoundHash;

    const/4 v1, 0x0

    .line 1065
    iput-object v1, v0, Lo/shouldIncludeCompoundHash;->warmup:Lo/unionWith$extraCallback;

    .line 273
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$extraCallback;->onPostMessage:Lo/shouldIncludeCompoundHash;

    .line 2065
    iget-object v0, v0, Lo/shouldIncludeCompoundHash;->extraCallback:Lo/saveTrackedQueryKeys;

    .line 273
    sget-object v1, Lo/saveTrackedQueryKeys$extraCallback;->extraCallback:Lo/saveTrackedQueryKeys$extraCallback;

    const-string v2, "CONNECTING after backoff"

    invoke-virtual {v0, v1, v2}, Lo/saveTrackedQueryKeys;->extraCallback(Lo/saveTrackedQueryKeys$extraCallback;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$extraCallback;->onPostMessage:Lo/shouldIncludeCompoundHash;

    sget-object v1, Lo/setTransactionSuccessful;->extraCallback:Lo/setTransactionSuccessful;

    .line 3317
    iget-object v2, v0, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback$Stub:Lo/unionWith;

    invoke-virtual {v2}, Lo/unionWith;->onPostMessage()V

    .line 3319
    invoke-static {v1}, Lo/openDatabase;->onNavigationEvent(Lo/setTransactionSuccessful;)Lo/openDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/shouldIncludeCompoundHash;->extraCallback(Lo/openDatabase;)V

    .line 275
    iget-object v0, p0, Lo/shouldIncludeCompoundHash$extraCallback;->onPostMessage:Lo/shouldIncludeCompoundHash;

    invoke-static {v0}, Lo/shouldIncludeCompoundHash;->ICustomTabsCallback(Lo/shouldIncludeCompoundHash;)V

    return-void
.end method
