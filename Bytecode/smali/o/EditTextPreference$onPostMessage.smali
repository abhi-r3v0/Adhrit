.class public final Lo/EditTextPreference$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/EditTextPreference;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
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
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002,\u0012(\u0012&\u0012\u0004\u0012\u00020\u0003\u0012\u0008\u0012\u00060\u0004R\u00020\u00050\u0002j\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0008\u0012\u00060\u0004R\u00020\u0005`\u00060\u0001J8\u0010\u0007\u001a\u00020\u00082.\u0010\t\u001a*\u0012\u0004\u0012\u00020\u0003\u0012\u0008\u0012\u00060\u0004R\u00020\u0005\u0018\u00010\u0002j\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0008\u0012\u00060\u0004R\u00020\u0005\u0018\u0001`\u0006H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOfferDetailsHeaderHolder$bind$1",
        "Landroidx/lifecycle/Observer;",
        "Ljava/util/HashMap;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "Lkotlin/collections/HashMap;",
        "onChanged",
        "",
        "t",
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
.field private synthetic ICustomTabsCallback:Lo/EditTextPreference;

.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/EditTextPreference;Lo/StaggeredGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StaggeredGridLayoutManager;",
            ")V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lo/EditTextPreference$onPostMessage;->ICustomTabsCallback:Lo/EditTextPreference;

    iput-object p2, p0, Lo/EditTextPreference$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 23
    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    .line 1025
    iget-object v0, p0, Lo/EditTextPreference$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/AdapterListUpdateCallback;

    .line 1048
    iget-object v0, v0, Lo/AdapterListUpdateCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1025
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->logo_url:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/EditTextPreference$onPostMessage;->ICustomTabsCallback:Lo/EditTextPreference;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "itemView.cardBankLogo"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lo/remove;->onNavigationEvent(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 1026
    :cond_0
    sget-object p1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v0, p0, Lo/EditTextPreference$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v0, Lo/AdapterListUpdateCallback;

    .line 2048
    iget-object v0, v0, Lo/AdapterListUpdateCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1026
    invoke-virtual {p1, v0}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback(Ljava/lang/String;)Lo/setActive;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lo/setPlaybackToRemote;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    return-void
.end method
