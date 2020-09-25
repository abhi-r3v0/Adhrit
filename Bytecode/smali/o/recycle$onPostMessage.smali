.class final Lo/recycle$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycle;-><init>()V
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
.field private synthetic ICustomTabsCallback:Lo/recycle;


# direct methods
.method constructor <init>(Lo/recycle;)V
    .locals 0

    iput-object p1, p0, Lo/recycle$onPostMessage;->ICustomTabsCallback:Lo/recycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 12

    .line 61
    check-cast p1, Lo/getThumbTintList;

    .line 1181
    iget-object v0, p0, Lo/recycle$onPostMessage;->ICustomTabsCallback:Lo/recycle;

    .line 2011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object p1, v3

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1181
    :goto_0
    check-cast p1, Lo/setMaxHeight;

    invoke-static {v0, p1}, Lo/recycle;->extraCallback(Lo/recycle;Lo/setMaxHeight;)V

    .line 1182
    iget-object p1, p0, Lo/recycle$onPostMessage;->ICustomTabsCallback:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->extraCallback(Lo/recycle;)Lo/setMaxHeight;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3004
    iget-object p1, p1, Lo/setMaxHeight;->onPostMessage:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    .line 1183
    iget-object p1, p0, Lo/recycle$onPostMessage;->ICustomTabsCallback:Lo/recycle;

    invoke-static {p1}, Lo/recycle;->onNavigationEvent(Lo/recycle;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 4000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1183
    new-instance v0, Lo/getThumbTintList;

    new-instance v1, Lo/setTitleMarginStart$extraCallback;

    const/4 v6, 0x0

    new-instance v7, Lo/getTitleMarginEnd$extraCallback;

    iget-object v4, p0, Lo/recycle$onPostMessage;->ICustomTabsCallback:Lo/recycle;

    invoke-static {v4}, Lo/recycle;->extraCallback(Lo/recycle;)Lo/setMaxHeight;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4004
    iget-object v3, v4, Lo/setMaxHeight;->onPostMessage:Ljava/lang/String;

    :cond_2
    const/4 v4, 0x4

    const/4 v11, 0x0

    const-string/jumbo v5, "verify_cards"

    .line 1183
    invoke-direct {v7, v5, v11, v3, v4}, Lo/getTitleMarginEnd$extraCallback;-><init>(Ljava/lang/String;ZLjava/lang/String;I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1a

    const-string v5, "VERIFY_CARD_FRAGMENT"

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v0, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    new-array p1, v2, [Lo/addWrite;

    .line 4043
    new-instance v0, Lo/addWrite;

    const-string v1, "card_action_type"

    const-string v3, "add_card"

    invoke-direct {v0, v1, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v11

    const-string v0, "pairs"

    .line 1184
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_nfc_read"

    .line 1184
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_3
    return-void
.end method
