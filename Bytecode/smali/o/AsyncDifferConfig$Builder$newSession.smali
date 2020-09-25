.class final Lo/AsyncDifferConfig$Builder$newSession;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncDifferConfig$Builder;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic extraCallback:Lo/AsyncDifferConfig$Builder;


# direct methods
.method constructor <init>(Lo/AsyncDifferConfig$Builder;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncDifferConfig$Builder$newSession;->extraCallback:Lo/AsyncDifferConfig$Builder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 50
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$newSession;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    .line 2021
    iget-object p1, p1, Lo/getCurrentList;->extraCallback:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1215
    :goto_0
    check-cast p1, Lo/getCurrentList$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 3015
    iget-object v1, p1, Lo/getCurrentList$ICustomTabsCallback;->onMessageChannelReady:Lo/latchList;

    .line 1216
    :cond_1
    sget-object p1, Lo/latchList$extraCallback;->ICustomTabsCallback:Lo/latchList$extraCallback;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1217
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$newSession;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    .line 3021
    iget-object p1, p1, Lo/getCurrentList;->extraCallback:Lo/setActive;

    .line 1217
    new-instance v0, Lo/getCurrentList$ICustomTabsCallback;

    sget-object v1, Lo/latchList$ICustomTabsCallback;->onNavigationEvent:Lo/latchList$ICustomTabsCallback;

    check-cast v1, Lo/latchList;

    invoke-direct {v0, v1}, Lo/getCurrentList$ICustomTabsCallback;-><init>(Lo/latchList;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    .line 1219
    :cond_2
    sget-object p1, Lo/latchList$ICustomTabsCallback;->onNavigationEvent:Lo/latchList$ICustomTabsCallback;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1220
    iget-object p1, p0, Lo/AsyncDifferConfig$Builder$newSession;->extraCallback:Lo/AsyncDifferConfig$Builder;

    invoke-static {p1}, Lo/AsyncDifferConfig$Builder;->extraCallback(Lo/AsyncDifferConfig$Builder;)Lo/getCurrentList;

    move-result-object p1

    invoke-virtual {p1}, Lo/getCurrentList;->ICustomTabsCallback()V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    const/4 v1, 0x0

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "cta_type"

    const-string v4, "proceed"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1221
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "link_card_select_screen_cta"

    .line 1221
    invoke-static {p1, v1}, Lo/AsyncDifferConfig$Builder;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 50
    :cond_3
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
