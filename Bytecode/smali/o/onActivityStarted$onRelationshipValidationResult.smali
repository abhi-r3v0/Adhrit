.class public final Lo/onActivityStarted$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityStarted;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/contacts/festives/FestiveCampaignManageFragment$onItemClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onPostMessage:Lo/onActivityStarted;


# direct methods
.method constructor <init>(Lo/onActivityStarted;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lo/onActivityStarted$onRelationshipValidationResult;->onPostMessage:Lo/onActivityStarted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 5

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;

    if-eqz p1, :cond_3

    .line 176
    sget-object p1, Lo/onActivitySaveInstanceState$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/onActivitySaveInstanceState$ICustomTabsCallback;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object p3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 176
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCampaignResponse;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    new-array p3, p1, [Lo/addWrite;

    .line 178
    check-cast p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;

    .line 2050
    iget-object v1, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->asInterface:Ljava/lang/String;

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "external_id"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, p3, v1

    const/4 v2, 0x1

    .line 179
    iget-object v3, p0, Lo/onActivityStarted$onRelationshipValidationResult;->onPostMessage:Lo/onActivityStarted;

    invoke-static {v3}, Lo/onActivityStarted;->ICustomTabsCallback(Lo/onActivityStarted;)Lo/onActivityStarted$extraCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3194
    iget-object v0, v3, Lo/onActivityStarted$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 4043
    :cond_1
    new-instance v3, Lo/addWrite;

    const-string v4, "referral_campaign_id"

    invoke-direct {v3, v4, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p3, v2

    const/4 v0, 0x2

    .line 5043
    iget-object v2, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->onMessageChannelReady:Ljava/lang/String;

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "status"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p3, v0

    const-string v0, "pairs"

    .line 177
    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "invite_manage_resend_clicked"

    .line 177
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 183
    iget-object p1, p0, Lo/onActivityStarted$onRelationshipValidationResult;->onPostMessage:Lo/onActivityStarted;

    invoke-static {p1}, Lo/onActivityStarted;->extraCallback(Lo/onActivityStarted;)Lo/onActivitySaveInstanceState;

    move-result-object p1

    iget-object p3, p0, Lo/onActivityStarted$onRelationshipValidationResult;->onPostMessage:Lo/onActivityStarted;

    invoke-static {p3}, Lo/onActivityStarted;->ICustomTabsCallback(Lo/onActivityStarted;)Lo/onActivityStarted$extraCallback;

    move-result-object p3

    if-nez p3, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 6194
    :cond_2
    iget-object p3, p3, Lo/onActivityStarted$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 7046
    iget-object v0, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->ICustomTabsCallback:Ljava/lang/String;

    .line 8042
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/contacts/festives/ReferredContacts;->extraCallback:Ljava/lang/String;

    .line 183
    invoke-virtual {p1, p3, v0, p2}, Lo/onActivitySaveInstanceState;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lo/onActivityStarted$onRelationshipValidationResult;->onPostMessage:Lo/onActivityStarted;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p1, p2}, Lo/onActivityStarted;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1, v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    :cond_3
    return-void
.end method
