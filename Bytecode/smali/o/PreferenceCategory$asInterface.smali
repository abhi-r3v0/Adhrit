.class final Lo/PreferenceCategory$asInterface;
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
.field final synthetic onPostMessage:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1229
    iget-object p1, p0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {p1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object p1

    .line 2032
    iget-object p1, p1, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1229
    :goto_0
    check-cast p1, Lo/onDetach$onRelationshipValidationResult;

    if-eqz p1, :cond_1

    .line 3081
    iget-object p1, p1, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1230
    sget-object v0, Lo/TwoStatePreference;->ICustomTabsCallback:Lo/TwoStatePreference$onMessageChannelReady;

    new-instance v0, Lo/onDetach$postMessage;

    invoke-direct {v0, p1}, Lo/onDetach$postMessage;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3196
    new-instance p1, Lo/TwoStatePreference;

    invoke-direct {p1}, Lo/TwoStatePreference;-><init>()V

    .line 3197
    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast v0, Landroid/os/Parcelable;

    const-string v2, "extra"

    .line 4016
    invoke-static {v1, v0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 1231
    new-instance v0, Lo/PreferenceCategory$asInterface$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/PreferenceCategory$asInterface$onNavigationEvent;-><init>(Lo/PreferenceCategory$asInterface;)V

    check-cast v0, Lo/TwoStatePreference$extraCallback;

    .line 4188
    iput-object v0, p1, Lo/TwoStatePreference;->onPostMessage:Lo/TwoStatePreference$extraCallback;

    .line 1248
    iget-object v0, p0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "CardList"

    .line 1249
    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 1250
    iget-object p1, p0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    const-string v0, "bank_offer_bank_change_screen_load"

    invoke-static {p1, v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 47
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
