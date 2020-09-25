.class final Lo/getTitleMarginEnd$newSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTitleMarginEnd;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/setMaxHeight;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/utils/creditCardNfcReader/model/NfcData;",
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
.field private synthetic onMessageChannelReady:Lo/getTitleMarginEnd;


# direct methods
.method constructor <init>(Lo/getTitleMarginEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 58
    check-cast p1, Lo/getThumbTintList;

    .line 1219
    iget-object v0, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    .line 2011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1219
    :goto_0
    check-cast p1, Lo/setMaxHeight;

    invoke-static {v0, p1}, Lo/getTitleMarginEnd;->ICustomTabsCallback(Lo/getTitleMarginEnd;Lo/setMaxHeight;)V

    .line 1220
    iget-object p1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->ICustomTabsCallback$Stub(Lo/getTitleMarginEnd;)Lo/setMaxHeight;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3004
    iget-object p1, p1, Lo/setMaxHeight;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_9

    .line 1220
    iget-object p1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    invoke-static {p1}, Lo/getTitleMarginEnd;->onPostMessage(Lo/getTitleMarginEnd;)Lo/getDecoratedTop;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eq p1, v3, :cond_9

    .line 1222
    :cond_2
    iget-object p1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    .line 3181
    iget-object p1, p1, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    const-string v0, "addCardView"

    if-nez p1, :cond_3

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1222
    :cond_3
    iget-object v1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    invoke-static {v1}, Lo/getTitleMarginEnd;->ICustomTabsCallback$Stub(Lo/getTitleMarginEnd;)Lo/setMaxHeight;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4004
    :cond_4
    iget-object v1, v1, Lo/setMaxHeight;->onPostMessage:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 1222
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    invoke-interface {p1, v2}, Lo/stopLoading;->onPostMessage(Ljava/lang/String;)V

    .line 1223
    iget-object p1, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    .line 4181
    iget-object p1, p1, Lo/getTitleMarginEnd;->onPostMessage:Lo/stopLoading;

    if-nez p1, :cond_7

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1223
    :cond_7
    iget-object v0, p0, Lo/getTitleMarginEnd$newSession;->onMessageChannelReady:Lo/getTitleMarginEnd;

    invoke-static {v0}, Lo/getTitleMarginEnd;->ICustomTabsCallback$Stub(Lo/getTitleMarginEnd;)Lo/setMaxHeight;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 5004
    :cond_8
    iget-object v0, v0, Lo/setMaxHeight;->onPostMessage:Ljava/lang/String;

    .line 1223
    invoke-interface {p1, v0}, Lo/stopLoading;->onPostMessage(Ljava/lang/String;)V

    new-array p1, v3, [Lo/addWrite;

    .line 5043
    new-instance v0, Lo/addWrite;

    const-string v1, "card_action_type"

    const-string v2, "add_card"

    invoke-direct {v0, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v4

    const-string v0, "pairs"

    .line 1224
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_nfc_read"

    .line 1224
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_9
    return-void
.end method
