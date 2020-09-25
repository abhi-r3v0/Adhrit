.class public final Lo/animateAdd$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/resetAnimation$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/digest/DigestFragment$overlayCTAActionListener$1",
        "Lcom/dreamplug/fabrik/ui/digest/DigestOverflowCTABottomSheet$BottomSheetInterface;",
        "onDismiss",
        "",
        "onOptionSelected",
        "cta",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Cta;",
        "onShow",
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
.field private synthetic onNavigationEvent:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 507
    iput-object p1, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V
    .locals 6

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lo/addWrite;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 1043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "tag"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const-string v3, "pairs"

    .line 518
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "$this$plus"

    .line 518
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "map"

    invoke-static {v3, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1659
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    check-cast v1, Ljava/util/Map;

    .line 518
    invoke-static {v1}, Lo/isDemoHost;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_overflow_cta_clicked"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 519
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    .line 520
    :cond_0
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0, p1}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;Lcom/dreamplug/fabrik/ui/nba/helper/Cta;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 509
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/animateChangeImpl;->onNavigationEvent(Lo/animateChangeImpl;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 513
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->onPostMessage(Lo/animateAdd;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "digest_overflow_dismissed"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 514
    iget-object v0, p0, Lo/animateAdd$warmup;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    :cond_0
    return-void
.end method
