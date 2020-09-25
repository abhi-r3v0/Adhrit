.class public final Lo/shouldBeKeptAsChild$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shouldBeKeptAsChild$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldBeKeptAsChild;-><init>(Lo/dispatchAddStarting;Ljava/lang/String;Lo/onSessionEvent;Lo/snapFromFling;Lo/shouldBeKeptAsChild$ICustomTabsCallback;Ljava/lang/String;ZLo/add;Z)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/upi/CredUpiPresenter$bottomSheetCommunicationInterface$1",
        "Lcom/dreamplug/upi/CredUpiPresenter$ICredUpiBottomSheetListener;",
        "onClick",
        "",
        "data",
        "Lcom/dreamplug/upi/UpiViewModel$UpiStateData;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/shouldBeKeptAsChild;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/snapFromFling$asBinder;)V
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->onMessageChannelReady:Lo/onAddStarting;

    .line 120
    sget-object v1, Lo/RecyclerViewAccessibilityDelegate$ItemDelegate;->extraCallback:Lo/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SECONDARY_BUTTON"

    const-string v3, "PRIMARY_BUTTON"

    const v4, -0x5077cf83

    const v5, -0x518803d1

    if-eqz v1, :cond_2

    .line 2046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 121
    instance-of v0, v0, Lo/snapFromFling$ICustomTabsCallback;

    if-eqz v0, :cond_12

    .line 3046
    iget-object p1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 122
    check-cast p1, Lo/snapFromFling$ICustomTabsCallback;

    .line 3048
    iget-object p1, p1, Lo/snapFromFling$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 130
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onMessageChannelReady(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 123
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 127
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-virtual {p1}, Lo/shouldBeKeptAsChild;->onNavigationEvent()V

    return-void

    .line 136
    :cond_2
    sget-object v1, Lo/SimpleItemAnimator;->onNavigationEvent:Lo/SimpleItemAnimator;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 4044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 5031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 137
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/SimpleItemAnimator;->onNavigationEvent:Lo/SimpleItemAnimator;

    check-cast v1, Lo/onAddStarting;

    invoke-direct {v0, v1}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_3
    sget-object v1, Lo/isUpdated;->onMessageChannelReady:Lo/isUpdated;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 140
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 5044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 6031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 140
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/isUpdated;->onMessageChannelReady:Lo/isUpdated;

    check-cast v1, Lo/onAddStarting;

    invoke-direct {v0, v1, v6}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 142
    :cond_4
    sget-object v1, Lo/dispatchRemoveStarting;->onNavigationEvent:Lo/dispatchRemoveStarting;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 143
    instance-of v0, v0, Lo/snapFromFling$ICustomTabsCallback;

    if-eqz v0, :cond_12

    .line 7046
    iget-object p1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 144
    check-cast p1, Lo/snapFromFling$ICustomTabsCallback;

    .line 7048
    iget-object p1, p1, Lo/snapFromFling$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    return-void

    .line 149
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 151
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onPostMessage(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 145
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 146
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onNavigationEvent(Lo/shouldBeKeptAsChild;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    .line 147
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onMessageChannelReady(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 156
    :cond_7
    sget-object v1, Lo/doesTransientStatePreventRecycling;->onMessageChannelReady:Lo/doesTransientStatePreventRecycling;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 157
    instance-of v0, v0, Lo/snapFromFling$ICustomTabsCallback;

    if-eqz v0, :cond_12

    .line 9046
    iget-object p1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 158
    check-cast p1, Lo/snapFromFling$ICustomTabsCallback;

    .line 9048
    iget-object p1, p1, Lo/snapFromFling$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_8

    return-void

    .line 162
    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 164
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onRelationshipValidationResult(Lo/shouldBeKeptAsChild;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->asBinder(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 165
    :cond_9
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 10044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 11040
    iget-object p1, p1, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 165
    instance-of p1, p1, Lcom/cred/pay/repository/models/UpiAccountResponse;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 11044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 12031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 165
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/dispatchRemoveStarting;->onNavigationEvent:Lo/dispatchRemoveStarting;

    check-cast v1, Lo/onAddStarting;

    iget-object v2, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 12044
    iget-object v2, v2, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 13040
    iget-object v2, v2, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 165
    invoke-direct {v0, v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 166
    :cond_a
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onMessageChannelReady(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 159
    :cond_b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 160
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    invoke-static {p1}, Lo/shouldBeKeptAsChild;->onPostMessage(Lo/shouldBeKeptAsChild;)V

    return-void

    .line 172
    :cond_c
    instance-of v1, v0, Lo/onAddFinished;

    if-eqz v1, :cond_e

    .line 173
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 13044
    iget-object v0, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 14044
    iget-object v0, v0, Lo/snapFromFling;->onTransact:Ljava/util/HashMap;

    const-string v1, "GET_ACCOUNTS"

    .line 173
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_d
    const-string/jumbo v2, "upiViewModel.lastCommand\u2026p[COMMAND_GET_ACCOUNTS]!!"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v1, v0}, Lo/shouldBeKeptAsChild;->onPostMessage(Lo/shouldBeKeptAsChild;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 174
    iget-object v2, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    sget-object p1, Lo/isUpdated;->onMessageChannelReady:Lo/isUpdated;

    move-object v3, p1

    check-cast v3, Lo/onAddStarting;

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/getItemDelegate$asBinder;->upi_fetching_account:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget p1, Lo/getItemDelegate$asBinder;->upi_fetching_account_dont_press_back:I

    invoke-static {p1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    const/16 v8, 0x10

    const-string v6, "processing.."

    invoke-static/range {v2 .. v8}, Lo/shouldBeKeptAsChild;->ICustomTabsCallback(Lo/shouldBeKeptAsChild;Lo/onAddStarting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/findLastCompletelyVisibleItemPositions;I)V

    return-void

    .line 176
    :cond_e
    sget-object v1, Lo/isRecyclable;->onMessageChannelReady:Lo/isRecyclable;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 177
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 15044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 16031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 177
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/isRecyclable;->onMessageChannelReady:Lo/isRecyclable;

    check-cast v1, Lo/onAddStarting;

    invoke-direct {v0, v1}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 179
    :cond_f
    sget-object v1, Lo/getSupportsChangeAnimations;->onMessageChannelReady:Lo/getSupportsChangeAnimations;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 16046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 180
    instance-of v0, v0, Lo/snapFromFling$onMessageChannelReady;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 17044
    iget-object v0, v0, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 17046
    iget-object v1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 181
    check-cast v1, Lo/snapFromFling$onMessageChannelReady;

    .line 17050
    iget-object v1, v1, Lo/snapFromFling$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "<set-?>"

    .line 181
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18036
    iput-object v1, v0, Lo/snapFromFling;->asInterface:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 18042
    iget-object v3, v3, Lo/shouldBeKeptAsChild;->extraCallback:Ljava/lang/String;

    .line 18043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v2

    const/4 v2, 0x1

    .line 18046
    iget-object p1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 182
    check-cast p1, Lo/snapFromFling$onMessageChannelReady;

    .line 18050
    iget-object p1, p1, Lo/snapFromFling$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    .line 19043
    new-instance v3, Lo/addWrite;

    const-string v4, "provider"

    invoke-direct {v3, v4, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const-string p1, "pairs"

    .line 182
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo v0, "upi_sim_selected"

    .line 182
    invoke-static {v0, p1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 20044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 21031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 183
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/isUpdated;->onMessageChannelReady:Lo/isUpdated;

    check-cast v1, Lo/onAddStarting;

    invoke-direct {v0, v1, v6}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 186
    :cond_10
    sget-object v1, Lo/dispatchRemoveFinished;->ICustomTabsCallback:Lo/dispatchRemoveFinished;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 21046
    iget-object v0, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 187
    instance-of v0, v0, Lo/snapFromFling$extraCallback;

    if-eqz v0, :cond_11

    .line 188
    iget-object v0, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 22044
    iget-object v0, v0, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 23031
    iget-object v0, v0, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 188
    new-instance v1, Lo/snapFromFling$asBinder;

    sget-object v2, Lo/dispatchRemoveFinished;->ICustomTabsCallback:Lo/dispatchRemoveFinished;

    check-cast v2, Lo/onAddStarting;

    .line 23046
    iget-object p1, p1, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 188
    invoke-direct {v1, v2, p1}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 189
    :cond_11
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 24044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 25040
    iget-object p1, p1, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 189
    instance-of p1, p1, Lo/snapFromFling$onNavigationEvent;

    if-eqz p1, :cond_12

    .line 191
    iget-object p1, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 25044
    iget-object p1, p1, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 26031
    iget-object p1, p1, Lo/snapFromFling;->extraCallback:Lo/setActive;

    .line 191
    new-instance v0, Lo/snapFromFling$asBinder;

    sget-object v1, Lo/dispatchAddFinished;->onPostMessage:Lo/dispatchAddFinished;

    check-cast v1, Lo/onAddStarting;

    iget-object v2, p0, Lo/shouldBeKeptAsChild$asInterface;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    .line 26044
    iget-object v2, v2, Lo/shouldBeKeptAsChild;->onTransact:Lo/snapFromFling;

    .line 27040
    iget-object v2, v2, Lo/snapFromFling;->onRelationshipValidationResult:Lo/postShow;

    .line 191
    invoke-direct {v0, v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
