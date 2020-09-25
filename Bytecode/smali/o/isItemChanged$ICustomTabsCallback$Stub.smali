.class final Lo/isItemChanged$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 86
    iget-object v0, p0, Lo/isItemChanged$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lo/isItemChanged$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isItemChanged;

    new-instance v1, Lo/calculateScrollDistance;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Lo/onSessionEvent;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v3, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    .line 88
    :cond_0
    iget-object v4, p0, Lo/isItemChanged$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {v4}, Lo/isItemChanged;->ICustomTabsCallback(Lo/isItemChanged;)Lo/rerunTransactionQueue;

    move-result-object v4

    sget-object v5, Lo/getCurrentContentInsetLeft;->ICustomTabsCallback:Lo/getCurrentContentInsetLeft;

    invoke-static {}, Lo/getCurrentContentInsetLeft;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v5

    .line 87
    invoke-direct {v1, v2, v3, v4, v5}, Lo/calculateScrollDistance;-><init>(Lo/onSessionEvent;Ljava/lang/String;Lo/rerunTransactionQueue;Ljava/util/Map;)V

    .line 2077
    iput-object v1, v0, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    :cond_1
    return-void
.end method
