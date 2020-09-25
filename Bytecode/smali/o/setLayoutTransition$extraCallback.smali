.class final Lo/setLayoutTransition$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setLayoutTransition;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Lo/setLayoutTransition;


# direct methods
.method constructor <init>(Lo/setLayoutTransition;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/setLayoutTransition$extraCallback;->extraCallback:Lo/setLayoutTransition;

    iput-object p2, p0, Lo/setLayoutTransition$extraCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 29
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array v0, p1, [Lo/addWrite;

    .line 1051
    iget-object v1, p0, Lo/setLayoutTransition$extraCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/onActivityPrePaused;

    .line 2037
    iget-object v1, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 3015
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onMessageChannelReady:Ljava/lang/String;

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1052
    iget-object v1, p0, Lo/setLayoutTransition$extraCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/onActivityPrePaused;

    .line 4037
    iget-object v1, v1, Lo/onActivityPrePaused;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;

    .line 5018
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/contacts/helper/Contact;->onRelationshipValidationResult:Ljava/lang/Boolean;

    .line 5043
    new-instance v2, Lo/addWrite;

    const-string v3, "is_contact_suggested"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1053
    iget-object v1, p0, Lo/setLayoutTransition$extraCallback;->extraCallback:Lo/setLayoutTransition;

    invoke-static {v1}, Lo/setLayoutTransition;->onPostMessage(Lo/setLayoutTransition;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string v3, "is_gifting"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 1054
    iget-object v1, p0, Lo/setLayoutTransition$extraCallback;->extraCallback:Lo/setLayoutTransition;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7043
    new-instance v2, Lo/addWrite;

    const-string v3, "contact_position"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1050
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "invite_now_click"

    .line 1050
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1055
    iget-object p1, p0, Lo/setLayoutTransition$extraCallback;->extraCallback:Lo/setLayoutTransition;

    invoke-static {p1}, Lo/setLayoutTransition;->extraCallback(Lo/setLayoutTransition;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/setLayoutTransition$extraCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "invite"

    .line 8066
    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 29
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
