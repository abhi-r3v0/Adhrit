.class final Lo/PreferenceCategory$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onDetach$onRelationshipValidationResult;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$BankIntrumentInfo;",
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
.field final synthetic onNavigationEvent:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 47
    check-cast p1, Lo/onDetach$onRelationshipValidationResult;

    .line 1287
    iget-object v0, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    const-string v1, "bank_offer_screen_load"

    invoke-static {v0, v1}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 2081
    iget-object v0, p1, Lo/onDetach$onRelationshipValidationResult;->extraCallback:Ljava/lang/String;

    .line 1288
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "cardBankLogo"

    const-string v4, "accountNumber"

    if-eqz v0, :cond_1

    .line 1289
    iget-object p1, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->accountNumber:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v0, 0x7f130082

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object p1, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 3017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1292
    :cond_1
    iget-object v0, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->accountNumber:I

    invoke-virtual {v0, v5}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 3081
    iget-object v6, p1, Lo/onDetach$onRelationshipValidationResult;->onPostMessage:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 4081
    iget-object v6, p1, Lo/onDetach$onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/String;

    .line 5081
    iget-object v7, p1, Lo/onDetach$onRelationshipValidationResult;->onNavigationEvent:Ljava/lang/String;

    .line 1292
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    if-eqz v6, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f130081

    aput-object v6, v5, v1

    invoke-virtual {v4, v7, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6081
    iget-object p1, p1, Lo/onDetach$onRelationshipValidationResult;->ICustomTabsCallback:Ljava/lang/String;

    .line 1294
    sget-object v0, Lo/ShareActionProvider$OnShareTargetSelectedListener;->onNavigationEvent:Lo/ShareActionProvider$OnShareTargetSelectedListener;

    invoke-virtual {v0, p1}, Lo/ShareActionProvider$OnShareTargetSelectedListener;->extraCallback(Ljava/lang/String;)Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lo/toLegacyStreamType;

    move-result-object v1

    new-instance v4, Lo/PreferenceCategory$warmup$extraCallback;

    invoke-direct {v4, p1, p0}, Lo/PreferenceCategory$warmup$extraCallback;-><init>(Ljava/lang/String;Lo/PreferenceCategory$warmup;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 1299
    iget-object p1, p0, Lo/PreferenceCategory$warmup;->onNavigationEvent:Lo/PreferenceCategory;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBankLogo:I

    invoke-virtual {p1, v0}, Lo/PreferenceCategory;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$visible"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1292
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
