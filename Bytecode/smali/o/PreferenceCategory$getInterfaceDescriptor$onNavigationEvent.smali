.class final Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory$getInterfaceDescriptor;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field private synthetic ICustomTabsCallback:Lo/PreferenceCategory$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/PreferenceCategory$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;->ICustomTabsCallback:Lo/PreferenceCategory$getInterfaceDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 13

    .line 1320
    iget-object v0, p0, Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;->ICustomTabsCallback:Lo/PreferenceCategory$getInterfaceDescriptor;

    iget-object v0, v0, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lo/PreferenceCategory$getInterfaceDescriptor$onNavigationEvent;->ICustomTabsCallback:Lo/PreferenceCategory$getInterfaceDescriptor;

    iget-object v1, v1, Lo/PreferenceCategory$getInterfaceDescriptor;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v1

    .line 2032
    iget-object v1, v1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 2320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 1320
    :goto_0
    check-cast v1, Lo/onDetach$onRelationshipValidationResult;

    if-eqz v1, :cond_1

    .line 3081
    iget-object v1, v1, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 3162
    :goto_1
    iget-object v2, v0, Lo/PreferenceGroup;->mayLaunchUrl:Lo/clearScrap;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lo/clearScrap;->ICustomTabsCallback()V

    .line 3163
    :cond_2
    iget-object v2, v0, Lo/PreferenceGroup;->IPostMessageService:Lo/clearScrap;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lo/clearScrap;->ICustomTabsCallback()V

    :cond_3
    const/4 v2, 0x0

    .line 3164
    iput-boolean v2, v0, Lo/PreferenceGroup;->newSession:Z

    const/4 v4, 0x1

    .line 4106
    iput v4, v0, Lo/PreferenceGroup;->postMessage:I

    .line 4107
    iput-boolean v4, v0, Lo/PreferenceGroup;->updateVisuals:Z

    .line 4108
    iget-object v5, v0, Lo/PreferenceGroup;->extraCommand:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 3166
    iget-object v5, v0, Lo/PreferenceGroup;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_9

    .line 3167
    sget-object v5, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string v5, "BankOfferViewModel"

    const-string v6, "filterRewards:: REQUEST"

    invoke-static {v5, v6}, Lo/replaceAll;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    iget-object v5, v0, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    const-string v6, "All offers"

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v8, v3

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    move-object v8, v5

    .line 5000
    :goto_2
    iget-object v5, v0, Lo/PreferenceGroup;->ICustomTabsCallback$Stub$Proxy:Lo/isSameListener;

    invoke-interface {v5}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lo/getMainThreadExecutor;

    if-eqz v1, :cond_7

    .line 3169
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    check-cast v3, Ljava/lang/String;

    :cond_7
    move-object v7, v3

    iget-object v1, v0, Lo/PreferenceGroup;->extraCallback:Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget v1, v0, Lo/PreferenceGroup;->postMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static/range {v6 .. v12}, Lo/getMainThreadExecutor$onPostMessage;->onPostMessage(Lo/getMainThreadExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)Lo/clearScrap;

    move-result-object v1

    .line 3170
    new-instance v2, Lo/PreferenceGroup$asBinder;

    invoke-direct {v2, v0, v1}, Lo/PreferenceGroup$asBinder;-><init>(Lo/PreferenceGroup;Lo/clearScrap;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 3194
    iput-object v1, v0, Lo/PreferenceGroup;->mayLaunchUrl:Lo/clearScrap;

    goto :goto_4

    .line 3169
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_9
    :goto_4
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
