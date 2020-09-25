.class final Lo/getTotalSpace$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTotalSpace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "pointsCount",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getTotalSpace;


# direct methods
.method constructor <init>(Lo/getTotalSpace;)V
    .locals 0

    iput-object p1, p0, Lo/getTotalSpace$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTotalSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 34
    check-cast p1, Lclub/cred/credcurrency/CredPointCountModel;

    .line 1093
    iget-object v0, p0, Lo/getTotalSpace$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTotalSpace;

    invoke-static {v0}, Lo/getTotalSpace;->extraCallback(Lo/getTotalSpace;)Lo/getStartAfterPadding;

    move-result-object v0

    .line 2087
    iget-object v0, v0, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 3046
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "COINS"

    .line 1093
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1090
    invoke-virtual {p1}, Lclub/cred/credcurrency/CredPointCountModel;->onPostMessage()Lclub/cred/credcurrency/CredPointModel;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1092
    invoke-virtual {p1}, Lclub/cred/credcurrency/CredPointCountModel;->ICustomTabsCallback()Lclub/cred/credcurrency/CredPointModel;

    move-result-object v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 4012
    iget-wide v2, v2, Lclub/cred/credcurrency/CredPointModel;->ICustomTabsCallback:J

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    .line 1095
    :goto_1
    iget-object p1, p0, Lo/getTotalSpace$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTotalSpace;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->pointTv:I

    invoke-virtual {p1, v0}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "pointTv"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    new-instance v0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;-><init>(Landroid/content/Context;)V

    .line 1096
    iget-object v4, p0, Lo/getTotalSpace$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTotalSpace;

    invoke-static {v4}, Lo/getTotalSpace;->extraCallback(Lo/getTotalSpace;)Lo/getStartAfterPadding;

    move-result-object v4

    .line 4087
    iget-object v4, v4, Lo/getStartAfterPadding;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;

    .line 5046
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameDetails$LifeDetails;->onMessageChannelReady:Ljava/lang/String;

    .line 1096
    invoke-static {v4, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "span"

    if-eqz v1, :cond_3

    const-string/jumbo v1, "\ue900"

    .line 1097
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5059
    iget-object v4, v0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "\ue901"

    .line 1099
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->ICustomTabsCallback(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6059
    iget-object v4, v0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1101
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    .line 6156
    iget-object v0, v0, Lo/setActivityChooserPolicyIfNeeded$onPostMessage;->onMessageChannelReady:Landroid/text/SpannableStringBuilder;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1122
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
