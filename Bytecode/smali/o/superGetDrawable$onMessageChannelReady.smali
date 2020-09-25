.class public final Lo/superGetDrawable$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/superGetDrawable;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/main/gem/referral/referee/RefereeLinker$link$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
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
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/superGetDrawable$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/superGetDrawable$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 8

    .line 26
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    .line 2033
    sget-object v0, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-static {}, Lo/superGetDrawable;->onPostMessage()V

    .line 2034
    sget-object v0, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-static {p2}, Lo/superGetDrawable;->extraCallback(Lcom/dreamplug/utils/model/BaseResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    sget-object v0, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-static {}, Lo/superGetDrawable;->extraCallback()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 2036
    sget-object p1, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-static {}, Lo/superGetDrawable;->extraCallback()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lo/superGetDrawable;->ICustomTabsCallback(I)V

    .line 2037
    sget-object p1, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    iget-object p2, p0, Lo/superGetDrawable$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/superGetDrawable$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lo/superGetDrawable;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2039
    :cond_0
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 2042
    :cond_1
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->setDefaultImpl:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 2043
    invoke-virtual {p2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "referee_already_linked"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 2044
    sget-object v1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-static/range {v1 .. v7}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_3
    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 2

    .line 1028
    sget-object p1, Lo/superGetDrawable;->ICustomTabsCallback:Lo/superGetDrawable;

    invoke-static {}, Lo/superGetDrawable;->onPostMessage()V

    .line 1029
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object p1, Lo/setTrackTintMode;->setDefaultImpl:Lo/setTitleTextColor;

    sget-object v0, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    return-void
.end method
