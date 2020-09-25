.class final Lo/applyTrackTint$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/applyTrackTint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/RemoteActionCompat;


# direct methods
.method constructor <init>(Lo/RemoteActionCompat;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lo/applyTrackTint$5;->extraCallback:Lo/RemoteActionCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 1033
    iget-object p1, p0, Lo/applyTrackTint$5;->extraCallback:Lo/RemoteActionCompat;

    if-eqz p1, :cond_0

    .line 1034
    invoke-interface {p1}, Lo/RemoteActionCompat;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3

    .line 29
    check-cast p1, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;

    .line 1040
    iget-object v0, p0, Lo/applyTrackTint$5;->extraCallback:Lo/RemoteActionCompat;

    if-eqz v0, :cond_0

    .line 1041
    invoke-interface {v0, p1}, Lo/RemoteActionCompat;->onPostMessage(Lo/checkCompatWrapper;)V

    .line 1042
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/auth/AuthRefreshResponse;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1110
    sget-object v0, Lo/removePromptView;->onMessageChannelReady:Lo/removePromptView;

    invoke-static {p1}, Lo/removePromptView;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
