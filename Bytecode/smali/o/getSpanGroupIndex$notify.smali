.class final Lo/getSpanGroupIndex$notify;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpanGroupIndex;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;",
        "kotlin.jvm.PlatformType",
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
.field private synthetic onMessageChannelReady:Lo/getSpanGroupIndex;


# direct methods
.method constructor <init>(Lo/getSpanGroupIndex;)V
    .locals 0

    iput-object p1, p0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 79
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;

    if-eqz v1, :cond_2

    .line 2007
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse$ScreenData;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2011
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lending/model/StashVerifyBankResponse$ScreenData;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "SUCCESS"

    .line 1295
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1296
    iget-object v1, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v1}, Lo/getSpanGroupIndex;->ICustomTabsService(Lo/getSpanGroupIndex;)Lo/layoutChunk;

    move-result-object v1

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "state"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2043
    iput-object v3, v1, Lo/layoutChunk;->onPostMessage:Ljava/lang/String;

    .line 1300
    iget-object v1, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v1}, Lo/getSpanGroupIndex;->onMessageChannelReady(Lo/getSpanGroupIndex;)Lo/setRecycleChildrenOnDetach;

    move-result-object v1

    .line 2055
    iput-object v2, v1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 2056
    iget-object v2, v1, Lo/setRecycleChildrenOnDetach;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput-object v2, v1, Lo/setRecycleChildrenOnDetach;->warmup:Ljava/lang/String;

    .line 1301
    iget-object v1, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v1

    iget-object v2, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v2}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v2

    .line 2068
    iget-object v2, v2, Lo/getSpanIndex;->ICustomTabsService$Stub:Ljava/lang/String;

    .line 3067
    iput-object v2, v1, Lo/getSpanIndex;->validateRelationship:Ljava/lang/String;

    .line 1302
    iget-object v1, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v1}, Lo/getSpanGroupIndex;->onPostMessage(Lo/getSpanGroupIndex;)Lo/getSpanIndex;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/getSpanIndex;->onPostMessage(Z)V

    return-void

    .line 1304
    :cond_1
    iget-object v1, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    invoke-static {v1}, Lo/getSpanGroupIndex;->ICustomTabsService(Lo/getSpanGroupIndex;)Lo/layoutChunk;

    move-result-object v1

    .line 4067
    iget-object v2, v1, Lo/layoutChunk;->onTransact:Landroid/view/View;

    const-string v3, "$this$gone"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 5017
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4068
    iget-object v2, v1, Lo/layoutChunk;->extraCallback:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllAnimatorListeners()V

    .line 4069
    iget-object v1, v1, Lo/layoutChunk;->onNavigationEvent:Lo/requireView;

    invoke-virtual {v1}, Lo/requireView;->onPostMessage()V

    .line 1305
    iget-object v2, v0, Lo/getSpanGroupIndex$notify;->onMessageChannelReady:Lo/getSpanGroupIndex;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130028

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 1306
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130027

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    .line 1307
    sget-object v1, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    invoke-static {}, Lo/getMovementFlags;->extraCallback()Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    move-result-object v5

    .line 1308
    new-instance v1, Lcom/dreamplug/fabrik/ui/lending/model/Cta;

    const/4 v7, 0x0

    new-instance v8, Lo/getTargetScrollPosition;

    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f130026

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lo/getTargetScrollPosition;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 1310
    new-instance v11, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;

    sget-object v6, Lo/getMovementFlags;->ICustomTabsCallback:Lo/getMovementFlags;

    invoke-static {}, Lo/getMovementFlags;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v6}, Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe9

    const/16 v16, 0x0

    const-string v9, "deeplink"

    move-object v6, v1

    .line 1308
    invoke-direct/range {v6 .. v16}, Lcom/dreamplug/fabrik/ui/lending/model/Cta;-><init>(Ljava/lang/String;Lo/getTargetScrollPosition;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Deeplink;Lcom/dreamplug/fabrik/ui/lending/model/Cta$Flow;Ljava/lang/Boolean;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v7, "account_verification"

    .line 1305
    invoke-static/range {v2 .. v7}, Lo/getSpanGroupIndex;->extraCallback(Lo/getSpanGroupIndex;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Lcom/dreamplug/fabrik/ui/lending/model/Cta;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
