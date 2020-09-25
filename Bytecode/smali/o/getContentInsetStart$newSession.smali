.class public final Lo/getContentInsetStart$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getContentInsetStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginViewModel$refreshProfile$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 513
    iput-object p1, p0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 5

    .line 1515
    iget-object p1, p0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    .line 2095
    iget p2, p1, Lo/getContentInsetStart;->warmup:I

    add-int/lit8 p2, p2, 0x1

    .line 3095
    iput p2, p1, Lo/getContentInsetStart;->warmup:I

    .line 4095
    iget p1, p1, Lo/getContentInsetStart;->warmup:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 1516
    iget-object p1, p0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    invoke-static {p1}, Lo/getContentInsetStart;->extraCallback(Lo/getContentInsetStart;)V

    return-void

    .line 1518
    :cond_0
    iget-object p1, p0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    .line 4097
    iget-object p1, p1, Lo/getContentInsetStart;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1518
    new-instance p2, Lo/getThumbTintList;

    new-instance v0, Lo/getRadius;

    .line 1523
    new-instance v1, Lo/getContentInsetStart$newSession$extraCallback;

    invoke-direct {v1, p0}, Lo/getContentInsetStart$newSession$extraCallback;-><init>(Lo/getContentInsetStart$newSession;)V

    check-cast v1, Lo/getRadius$onNavigationEvent;

    const-string v2, "Something went wrong."

    const-string v3, "Please try logging in later"

    const-string v4, "Okay"

    .line 1518
    invoke-direct {v0, v3, v2, v4, v1}, Lo/getRadius;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/getRadius$onNavigationEvent;)V

    invoke-direct {p2, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 5

    .line 513
    check-cast p1, Lcom/dreamplug/androidapp/profile/ProfileResponse;

    if-eqz p1, :cond_1

    .line 4535
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    sget-object v0, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "transition_active"

    .line 4535
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4536
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 4760
    sget-object v0, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    const-class v0, Lo/onCreateContextMenu;

    const-string v1, "cls"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    sget-object v1, Lo/getScrapCount;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/NodeFromJSON;

    .line 5083
    invoke-virtual {v1, v0}, Lo/NodeFromJSON;->ICustomTabsCallback(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 4536
    check-cast v0, Lo/onCreateContextMenu;

    .line 4537
    invoke-interface {v0}, Lo/onCreateContextMenu;->ICustomTabsCallback()Lo/clearScrap;

    move-result-object v0

    .line 4538
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 4539
    new-instance v1, Lo/getContentInsetStart$newSession$onPostMessage;

    invoke-direct {v1, p1, p0}, Lo/getContentInsetStart$newSession$onPostMessage;-><init>(Lcom/dreamplug/androidapp/profile/ProfileResponse;Lo/getContentInsetStart$newSession;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 4567
    :cond_0
    iget-object v0, p0, Lo/getContentInsetStart$newSession;->onPostMessage:Lo/getContentInsetStart;

    invoke-static {v0, p1}, Lo/getContentInsetStart;->extraCallback(Lo/getContentInsetStart;Lcom/dreamplug/androidapp/profile/ProfileResponse;)V

    .line 4568
    sget-object p1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-virtual {p1}, Lo/onDestroyOptionsMenu;->extraCallback()V

    :cond_1
    return-void
.end method
