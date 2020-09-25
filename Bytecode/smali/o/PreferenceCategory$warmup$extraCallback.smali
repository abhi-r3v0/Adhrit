.class final Lo/PreferenceCategory$warmup$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceCategory$warmup;
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
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012X\u0010\u0002\u001aT\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006 \u0008**\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u00010\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u0001`\u00070\u0003j\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006`\u0007H\n\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "map",
        "Ljava/util/HashMap;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "Lkotlin/collections/HashMap;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$onViewCreated$6$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/PreferenceCategory$warmup;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/PreferenceCategory$warmup;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$warmup$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/PreferenceCategory$warmup$extraCallback;->onMessageChannelReady:Lo/PreferenceCategory$warmup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 47
    check-cast p1, Ljava/util/HashMap;

    .line 1295
    iget-object v0, p0, Lo/PreferenceCategory$warmup$extraCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;->logo_url:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lo/PreferenceCategory$warmup$extraCallback;->onMessageChannelReady:Lo/PreferenceCategory$warmup;

    iget-object p1, p1, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lo/setSpeed;

    const-string p1, "cardBankLogo"

    invoke-static {v0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    invoke-static/range {v0 .. v7}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    .line 1296
    :cond_0
    sget-object p1, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v0, p0, Lo/PreferenceCategory$warmup$extraCallback;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback(Ljava/lang/String;)Lo/setActive;

    move-result-object p1

    iget-object v0, p0, Lo/PreferenceCategory$warmup$extraCallback;->onMessageChannelReady:Lo/PreferenceCategory$warmup;

    iget-object v0, v0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onPostMessage(Lo/toLegacyStreamType;)V

    return-void
.end method
