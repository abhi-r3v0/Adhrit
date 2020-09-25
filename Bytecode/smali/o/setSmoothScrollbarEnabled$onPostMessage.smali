.class final Lo/setSmoothScrollbarEnabled$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSmoothScrollbarEnabled;->onPostMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;",
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
        "pageManager",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestylePageManager;",
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
.field private synthetic onNavigationEvent:I

.field private synthetic onPostMessage:Lo/setSmoothScrollbarEnabled;


# direct methods
.method constructor <init>(Lo/setSmoothScrollbarEnabled;I)V
    .locals 0

    iput-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    iput p2, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onNavigationEvent:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 32
    check-cast p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    const-string v0, "pageManager"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    invoke-static {v0}, Lo/setSmoothScrollbarEnabled;->onNavigationEvent(Lo/setSmoothScrollbarEnabled;)Lo/setActive;

    move-result-object v0

    .line 2026
    iget-object v1, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3019
    iget-boolean v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1210
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3021
    iget-object v0, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 1211
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 3022
    iget-object v0, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    .line 1211
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1212
    iget v0, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onNavigationEvent:I

    if-le v0, v1, :cond_1

    .line 1213
    iget-object v3, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Lo/setSmoothScrollbarEnabled;->extraCallback(Lo/setSmoothScrollbarEnabled;I)V

    .line 3026
    :cond_1
    iget-object v0, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    if-eqz v0, :cond_2

    .line 4019
    iget-boolean v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    iget v3, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onNavigationEvent:I

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lo/setSmoothScrollbarEnabled;->extraCallback(Lo/setSmoothScrollbarEnabled;I)V

    .line 5017
    :cond_3
    iget-object v0, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->extraCallback:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    .line 1219
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    .line 5018
    :goto_2
    iget-object p1, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "farm_not_found"

    .line 1219
    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1220
    :cond_5
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const p1, 0x7f1301a8

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 1221
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    .line 5191
    iget-object p1, p1, Lo/setSmoothScrollbarEnabled;->extraCallback:Lo/updateLayoutStateToFillEnd;

    if-eqz p1, :cond_6

    .line 6009
    iget-object p1, p1, Lo/updateLayoutStateToFillEnd;->onNavigationEvent:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object p1, v3

    :goto_3
    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_8

    .line 1222
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    .line 6042
    iget-object p1, p1, Lo/setSmoothScrollbarEnabled;->ICustomTabsCallback:Lo/getMoveDuration;

    if-eqz p1, :cond_8

    const/4 v0, 0x7

    .line 1222
    invoke-static {p1, v3, v2, v2, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1225
    :cond_8
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    invoke-static {p1}, Lo/setSmoothScrollbarEnabled;->extraCallback(Lo/setSmoothScrollbarEnabled;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1226
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    .line 6195
    iget-object p1, p1, Lo/setSmoothScrollbarEnabled;->extraCallback:Lo/updateLayoutStateToFillEnd;

    if-eqz p1, :cond_9

    .line 7010
    iget-object v3, p1, Lo/updateLayoutStateToFillEnd;->extraCallback:Lo/getStackFromEnd;

    :cond_9
    if-eqz v3, :cond_a

    const/4 v2, 0x1

    :cond_a
    if-eqz v2, :cond_b

    .line 1227
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    invoke-static {p1}, Lo/setSmoothScrollbarEnabled;->onPostMessage(Lo/setSmoothScrollbarEnabled;)V

    .line 1230
    :cond_b
    iget-object p1, p0, Lo/setSmoothScrollbarEnabled$onPostMessage;->onPostMessage:Lo/setSmoothScrollbarEnabled;

    invoke-virtual {p1}, Lo/setSmoothScrollbarEnabled;->ICustomTabsCallback()V

    .line 32
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
