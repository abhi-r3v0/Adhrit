.class final Lo/getSwipeDirs$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSwipeDirs;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/String;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field private synthetic onNavigationEvent:Lo/getSwipeDirs;


# direct methods
.method constructor <init>(Lo/getSwipeDirs;)V
    .locals 0

    iput-object p1, p0, Lo/getSwipeDirs$asBinder;->onNavigationEvent:Lo/getSwipeDirs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iget-object p1, p0, Lo/getSwipeDirs$asBinder;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-static {p1}, Lo/getSwipeDirs;->onNavigationEvent(Lo/getSwipeDirs;)Ljava/lang/String;

    move-result-object p1

    .line 1144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1145
    iget-object v0, p0, Lo/getSwipeDirs$asBinder;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lo/cachePreLayoutSpanMapping;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lo/cachePreLayoutSpanMapping;

    if-eqz v0, :cond_1

    .line 2006
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "stash_okyc_manual_aadhaar_first_char_entered"

    invoke-interface {v0, v2, v1}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1147
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    const-string v2, "primaryButton"

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1150
    :cond_2
    iget-object p1, p0, Lo/getSwipeDirs$asBinder;->onNavigationEvent:Lo/getSwipeDirs;

    .line 3046
    iget-object p1, p1, Lo/getSwipeDirs;->onNavigationEvent:Lo/recycleFromEnd;

    if-nez p1, :cond_3

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1150
    :cond_3
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    goto :goto_1

    .line 1148
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/getSwipeDirs$asBinder;->onNavigationEvent:Lo/getSwipeDirs;

    .line 2046
    iget-object p1, p1, Lo/getSwipeDirs;->onNavigationEvent:Lo/recycleFromEnd;

    if-nez p1, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1148
    :cond_5
    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 45
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
