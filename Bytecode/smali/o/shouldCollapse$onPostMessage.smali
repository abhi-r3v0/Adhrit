.class public final Lo/shouldCollapse$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldCollapse;->ICustomTabsCallback(ZLo/RecyclerView$Recycler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/profile/ProfileDataStore$fetchProfileData$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/androidapp/profile/ProfileResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
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
.field private synthetic onNavigationEvent:Lo/RecyclerView$Recycler;


# direct methods
.method constructor <init>(Lo/RecyclerView$Recycler;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/shouldCollapse$onPostMessage;->onNavigationEvent:Lo/RecyclerView$Recycler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .line 27
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    .line 1029
    iget-object v0, p0, Lo/shouldCollapse$onPostMessage;->onNavigationEvent:Lo/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lo/RecyclerView$Recycler;->extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 1030
    :cond_0
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    const/4 p1, 0x0

    invoke-static {p1}, Lo/shouldCollapse;->ICustomTabsCallback(Lo/tryBindViewHolderByDeadline;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 8

    .line 27
    check-cast p1, Lcom/dreamplug/androidapp/profile/ProfileResponse;

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getContacts()Lcom/dreamplug/androidapp/profile/Contacts;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Contacts;->getEmails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1035
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getContacts()Lcom/dreamplug/androidapp/profile/Contacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Contacts;->getEmails()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v4, "value"

    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    const-class v4, Ljava/util/List;

    check-cast v4, Ljava/lang/reflect/Type;

    new-array v5, v1, [Ljava/lang/reflect/Type;

    const-class v6, Lcom/dreamplug/androidapp/profile/Email;

    check-cast v6, Ljava/lang/reflect/Type;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Lo/serializeSessionOs;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v4

    .line 1133
    sget-object v5, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object v5

    check-cast v4, Ljava/lang/reflect/Type;

    .line 2068
    sget-object v6, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    .line 2098
    invoke-virtual {v5, v4, v6, v2}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v4

    .line 1134
    invoke-virtual {v4, v0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3000
    sget-object v4, Lo/setTrackTintMode;->ICustomTabsCallback$Stub:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1036
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getContacts()Lcom/dreamplug/androidapp/profile/Contacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Contacts;->getEmails()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1088
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1089
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dreamplug/androidapp/profile/Email;

    .line 1037
    invoke-virtual {v4}, Lcom/dreamplug/androidapp/profile/Email;->is_verified()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 4000
    :goto_0
    sget-object v4, Lo/setTrackTintMode;->INotificationSideChannel:Lo/setTitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x1d

    aget-object v5, v5, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1041
    :cond_3
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getContacts()Lcom/dreamplug/androidapp/profile/Contacts;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Contacts;->getBureauEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 5000
    :goto_1
    sget-object v4, Lo/setTrackTintMode;->IPostMessageService$Stub:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x14

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1043
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getFirstName()Ljava/lang/String;

    move-result-object v0

    .line 6000
    sget-object v4, Lo/setTrackTintMode;->onNavigationEvent:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1044
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getLastName()Ljava/lang/String;

    move-result-object v0

    .line 7000
    sget-object v4, Lo/setTrackTintMode;->extraCallback:Lo/setSubtitleTextColor;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v5, v1

    invoke-virtual {v4, v1, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1045
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    const-string/jumbo v1, "waitlisted"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getGating()Lcom/dreamplug/androidapp/profile/Gating;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Gating;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, v1

    :cond_6
    const-string v4, "<set-?>"

    .line 8000
    invoke-static {v0, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v7, 0x12

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1046
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->getGating()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v0

    .line 9000
    :cond_8
    :goto_2
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x13

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1047
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->getMismatchDetails()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    .line 10000
    :goto_3
    sget-object v1, Lo/setTrackTintMode;->notify:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1a

    aget-object v4, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1048
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->getDobMismatch()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    .line 11000
    :goto_4
    sget-object v1, Lo/setTrackTintMode;->IPostMessageService$Stub$Proxy:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1c

    aget-object v4, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1049
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->getPanMismatch()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    .line 12000
    :goto_5
    sget-object v1, Lo/setTrackTintMode;->cancelAll:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1050
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->isUPIEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    .line 13000
    :goto_6
    sget-object v1, Lo/setTrackTintMode;->INotificationSideChannel$Stub:Lo/setTitleTextColor;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1051
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getCards()Lcom/dreamplug/androidapp/profile/Cards;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/Cards;->getVerifiedCount()I

    move-result v3

    .line 14000
    :cond_d
    sget-object v0, Lo/setTrackTintMode;->cancel:Lo/getCollapseContentDescription;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x19

    aget-object v1, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1052
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getCreditScore()Lcom/dreamplug/androidapp/profile/CreditScore;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/CreditScore;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_e
    const/4 v0, -0x1

    .line 15000
    :goto_7
    sget-object v3, Lo/setTrackTintMode;->newSession:Lo/getCollapseContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0xc

    aget-object v4, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1053
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getCrifCreditScore()Lcom/dreamplug/androidapp/profile/CreditScore;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/CreditScore;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 16000
    :cond_f
    sget-object v0, Lo/setTrackTintMode;->getInterfaceDescriptor:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1054
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/profile/ProfileResponse;->getState()Lcom/dreamplug/androidapp/profile/State;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/State;->getAppState()Lcom/dreamplug/androidapp/profile/AppState;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/profile/AppState;->getReminder()Lcom/dreamplug/androidapp/profile/ReminderResponse;

    move-result-object v0

    goto :goto_8

    :cond_10
    move-object v0, v2

    :goto_8
    invoke-static {v0}, Lo/setTrackTintMode;->onPostMessage(Lcom/dreamplug/androidapp/profile/ReminderResponse;)V

    .line 1055
    sget-object v0, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->extraCallback()Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1056
    iget-object v0, p0, Lo/shouldCollapse$onPostMessage;->onNavigationEvent:Lo/RecyclerView$Recycler;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lo/RecyclerView$Recycler;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1057
    :cond_11
    sget-object p1, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {v2}, Lo/shouldCollapse;->ICustomTabsCallback(Lo/tryBindViewHolderByDeadline;)V

    return-void
.end method
