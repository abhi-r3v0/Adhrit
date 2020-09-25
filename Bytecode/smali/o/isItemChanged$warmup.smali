.class final Lo/isItemChanged$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isItemChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/addWrite<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/cred/pay/repository/models/VpaAccount;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000122\u0010\u0002\u001a.\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004 \u0007*\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lkotlin/Pair;",
        "",
        "Lcom/cred/pay/repository/models/VpaAccount;",
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
.field final synthetic extraCallback:Lo/isItemChanged;


# direct methods
.method constructor <init>(Lo/isItemChanged;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 10

    .line 67
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1194
    :goto_0
    check-cast p1, Lo/addWrite;

    if-eqz p1, :cond_4

    .line 2027
    iget-object v0, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1195
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v2, -0x7b3a781b

    if-eq v1, v2, :cond_3

    const v2, 0x77f979ab

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v1, "DELETE"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1201
    iget-object v0, p0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-static {v0}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object v0

    .line 4053
    iget-boolean v0, v0, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 1202
    iget-object p1, p0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->asInterface(Lo/isItemChanged;)V

    return-void

    .line 1204
    :cond_2
    sget-object v0, Lo/RecyclerView$OnScrollListener;->onPostMessage:Lo/RecyclerView$OnScrollListener$ICustomTabsCallback;

    .line 1205
    new-instance v0, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130482

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    .line 1206
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130481

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v3

    .line 1207
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130480

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    .line 1208
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130483

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    .line 1210
    new-instance v1, Lo/isItemChanged$warmup$ICustomTabsCallback;

    invoke-direct {v1, p1, p0}, Lo/isItemChanged$warmup$ICustomTabsCallback;-><init>(Lo/addWrite;Lo/isItemChanged$warmup;)V

    move-object v8, v1

    check-cast v8, Lo/onDisconnectSetValue;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x10

    move-object v1, v0

    .line 1205
    invoke-direct/range {v1 .. v9}, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lo/onDisconnectSetValue;I)V

    const-string/jumbo p1, "sheetData"

    .line 1204
    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4069
    new-instance p1, Lo/RecyclerView$OnScrollListener;

    invoke-direct {p1}, Lo/RecyclerView$OnScrollListener;-><init>()V

    .line 4070
    invoke-static {p1, v0}, Lo/RecyclerView$OnScrollListener;->onMessageChannelReady(Lo/RecyclerView$OnScrollListener;Lo/RecyclerView$OnScrollListener$onMessageChannelReady;)V

    .line 1224
    iget-object v0, p0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "delete_confirmation"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "SET_MPIN"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1197
    check-cast p1, Lcom/cred/pay/repository/models/VpaAccount;

    .line 1198
    iget-object v0, p0, Lo/isItemChanged$warmup;->extraCallback:Lo/isItemChanged;

    .line 2049
    iget-object v1, p1, Lcom/cred/pay/repository/models/VpaAccount;->onPostMessage:Ljava/lang/String;

    .line 3048
    iget-object p1, p1, Lcom/cred/pay/repository/models/VpaAccount;->extraCallback:Lcom/cred/pay/repository/models/Account;

    .line 3072
    iget-object p1, p1, Lcom/cred/pay/repository/models/Account;->newSession:Ljava/lang/String;

    .line 1198
    invoke-static {v0, v1, p1}, Lo/isItemChanged;->ICustomTabsCallback(Lo/isItemChanged;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
