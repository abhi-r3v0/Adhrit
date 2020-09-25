.class final Lo/PreferenceCategory$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic ICustomTabsCallback:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    iget-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 2052
    iget-object p1, p1, Lo/PreferenceGroup;->ICustomTabsCallback$Stub:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1257
    :goto_0
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const-string v2, "list"

    .line 1259
    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 1423
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/StaggeredGridLayoutManager;

    .line 1260
    instance-of v3, v2, Lo/Preference;

    if-eqz v3, :cond_1

    .line 1261
    new-instance v3, Lo/Preference;

    check-cast v2, Lo/Preference;

    .line 3013
    iget-object v4, v2, Lo/Preference;->onMessageChannelReady:Ljava/lang/Integer;

    .line 3014
    iget-object v5, v2, Lo/Preference;->ICustomTabsCallback:Ljava/lang/String;

    .line 1261
    iget-object v6, p0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-static {v6}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v6

    .line 3034
    iget-object v6, v6, Lo/PreferenceGroup;->onNavigationEvent:Ljava/lang/String;

    .line 4014
    iget-object v2, v2, Lo/Preference;->ICustomTabsCallback:Ljava/lang/String;

    .line 1261
    invoke-static {v6, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lo/Preference;-><init>(Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1264
    :cond_2
    sget-object p1, Lo/rollbackContentChanged;->onMessageChannelReady:Lo/rollbackContentChanged$onMessageChannelReady;

    new-instance p1, Lo/onDetach$onTransact;

    invoke-direct {p1, v0}, Lo/onDetach$onTransact;-><init>(Ljava/util/List;)V

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4177
    new-instance v0, Lo/rollbackContentChanged;

    invoke-direct {v0}, Lo/rollbackContentChanged;-><init>()V

    .line 4178
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    const-string v3, "extra"

    .line 5016
    invoke-static {v2, p1, v3}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1265
    new-instance p1, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/PreferenceCategory$onRelationshipValidationResult$onMessageChannelReady;-><init>(Lo/PreferenceCategory$onRelationshipValidationResult;)V

    check-cast p1, Lo/rollbackContentChanged$onPostMessage;

    .line 5169
    iput-object p1, v0, Lo/rollbackContentChanged;->extraCallback:Lo/rollbackContentChanged$onPostMessage;

    .line 1281
    iget-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    const-string p1, "CategoryList"

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 1282
    iget-object p1, p0, Lo/PreferenceCategory$onRelationshipValidationResult;->ICustomTabsCallback:Lo/PreferenceCategory;

    const-string v0, "bank_offer_category_selection_load"

    invoke-static {p1, v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 47
    :cond_5
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
