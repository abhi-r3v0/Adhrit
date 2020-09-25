.class final Lo/animateAppearance$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAppearance;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/onEnterLayoutOrScroll;Landroidx/lifecycle/LiveData;Lo/setActive;Lo/setActive;)V
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
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012H\u0010\u0002\u001aD\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004 \u0006*\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00050\u0003j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
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
.field private synthetic onPostMessage:Lo/animateAppearance;


# direct methods
.method constructor <init>(Lo/animateAppearance;)V
    .locals 0

    iput-object p1, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 49
    check-cast p1, Ljava/util/HashMap;

    .line 1352
    iget-object v0, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    .line 2037
    iget-object v0, v0, Lo/didChildRangeChange;->onPostMessage:Lo/clearOldPositions;

    const-string v1, "itemData"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 3008
    :cond_0
    iget-object v0, v0, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 3022
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->extraCallback:Ljava/lang/String;

    .line 1352
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "onlinePlayers"

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    invoke-static {v0}, Lo/animateAppearance;->onRelationshipValidationResult(Lo/animateAppearance;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v3, "$this$visible"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4009
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    iget-object v0, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    invoke-static {v0}, Lo/animateAppearance;->onRelationshipValidationResult(Lo/animateAppearance;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    .line 4037
    iget-object v2, v2, Lo/didChildRangeChange;->onPostMessage:Lo/clearOldPositions;

    if-nez v2, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 5008
    :cond_1
    iget-object v1, v2, Lo/clearOldPositions;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 5022
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->extraCallback:Ljava/lang/String;

    .line 1354
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1356
    :cond_2
    iget-object p1, p0, Lo/animateAppearance$ICustomTabsCallback$Stub;->onPostMessage:Lo/animateAppearance;

    invoke-static {p1}, Lo/animateAppearance;->onRelationshipValidationResult(Lo/animateAppearance;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 6017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
