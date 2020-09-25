.class final Lo/absorbGlows$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/absorbGlows;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/absorbGlows;


# direct methods
.method constructor <init>(Lo/absorbGlows;)V
    .locals 0

    iput-object p1, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 34
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    sget-object p1, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1064
    :goto_0
    check-cast p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;

    if-eqz p1, :cond_1

    .line 2046
    iget-object v1, p1, Lcom/dreamplug/androidapp/data/repository/campaign/CampaignResponse;->postMessage:Ljava/lang/Boolean;

    .line 1064
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    .line 1065
    iget-object p1, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shareImage:I

    invoke-virtual {p1, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/setSpeed;

    const-string/jumbo v2, "shareImage"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "share_cred.png"

    invoke-static {v1, v2}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v1}, Lo/absorbGlows;->onNavigationEvent(Lo/absorbGlows;Ljava/io/File;)V

    .line 1068
    :cond_2
    iget-object p1, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext()"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.whatsapp"

    .line 2080
    invoke-static {p1, v1}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "WhatsApp"

    goto :goto_1

    :cond_3
    const-string p1, "other"

    :goto_1
    const/4 v1, 0x3

    new-array v2, v1, [Lo/addWrite;

    const/4 v3, 0x0

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "medium"

    invoke-direct {v4, v5, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v3

    .line 1074
    iget-object p1, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-static {p1}, Lo/absorbGlows;->extraCallback(Lo/absorbGlows;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 4043
    new-instance v3, Lo/addWrite;

    const-string v4, "bottom_sheet_with_image"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/4 p1, 0x2

    .line 1074
    iget-object v0, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-static {v0}, Lo/absorbGlows;->ICustomTabsCallback(Lo/absorbGlows;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5043
    new-instance v3, Lo/addWrite;

    const-string v4, "card_count"

    invoke-direct {v3, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, p1

    const-string p1, "pairs"

    .line 1073
    invoke-static {v2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "invite_friend_btn_click"

    .line 1073
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1075
    iget-object p1, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    invoke-static {p1}, Lo/absorbGlows;->onMessageChannelReady(Lo/absorbGlows;)Lo/setCompatVectorFromResourcesEnabled;

    move-result-object p1

    .line 6025
    iget-object p1, p1, Lo/setCompatVectorFromResourcesEnabled;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 1075
    iget-object v0, p0, Lo/absorbGlows$onPostMessage;->extraCallback:Lo/absorbGlows;

    check-cast v0, Lo/toLegacyStreamType;

    new-instance v1, Lo/absorbGlows$onPostMessage$1;

    invoke-direct {v1, p0}, Lo/absorbGlows$onPostMessage$1;-><init>(Lo/absorbGlows$onPostMessage;)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 34
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
