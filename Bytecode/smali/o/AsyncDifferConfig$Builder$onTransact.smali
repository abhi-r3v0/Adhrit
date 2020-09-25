.class final Lo/AsyncDifferConfig$Builder$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder;-><init>()V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 1316
    iget-object v0, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v0}, Lo/AsyncDifferConfig$Builder;->getInterfaceDescriptor(Lo/AsyncDifferConfig$Builder;)Landroid/view/View;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x7d

    invoke-virtual {p1, v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setMinAndMaxFrame(II)V

    .line 1318
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v0}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 1319
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v2}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 1320
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->animation:I

    invoke-virtual {p1, v2}, Lo/AsyncDifferConfig$Builder;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    new-array p1, v0, [Lo/addWrite;

    .line 1323
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v2

    .line 2026
    iget-object v2, v2, Lo/getCurrentList;->onTransact:Lo/setActive;

    .line 2320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 1323
    :goto_1
    check-cast v2, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 3043
    :goto_2
    new-instance v3, Lo/addWrite;

    const-string v5, "instrument_id"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v1

    const/4 v1, 0x1

    .line 1324
    iget-object v2, p0, Lo/AsyncDifferConfig$Builder$onTransact;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {v2}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object v2

    .line 4027
    iget-object v2, v2, Lo/getCurrentList;->ICustomTabsCallback$Stub:Lo/setActive;

    .line 4320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, v4

    .line 1324
    :goto_3
    check-cast v2, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/dreamplug/fabrik/ui/control/helper/CardLinkingReason;->getId()Ljava/lang/String;

    move-result-object v4

    .line 5043
    :cond_4
    new-instance v2, Lo/addWrite;

    const-string v3, "reason_id"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p1, v1

    const-string v1, "pairs"

    .line 1322
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "link_card_animation_loaded"

    .line 1322
    invoke-static {p1, v1}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
