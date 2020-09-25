.class public final Lo/getDragToOpenListener;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDragToOpenListener$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J&\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u001a\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00182\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0003H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\nR\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cred/pay/ui/checkout/error/GatedOutUsersBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "userState",
        "",
        "isIntentFlow",
        "",
        "onDismissCallBack",
        "Lkotlin/Function0;",
        "",
        "(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V",
        "()Z",
        "getOnDismissCallBack",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnDismissCallBack",
        "(Lkotlin/jvm/functions/Function0;)V",
        "getUserState",
        "()Ljava/lang/String;",
        "onCancel",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onViewCreated",
        "view",
        "postEvent",
        "eventName",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field public extraCallback:Lo/getServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Z

.field private onNavigationEvent:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLo/getServerTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "userState"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    iput-object p1, p0, Lo/getDragToOpenListener;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p2, p0, Lo/getDragToOpenListener;->onMessageChannelReady:Z

    iput-object p3, p0, Lo/getDragToOpenListener;->extraCallback:Lo/getServerTime;

    return-void
.end method

.method private ICustomTabsCallback(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getDragToOpenListener;->onNavigationEvent:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getDragToOpenListener;->onNavigationEvent:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getDragToOpenListener;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/getDragToOpenListener;->onNavigationEvent:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic ICustomTabsCallback(Lo/getDragToOpenListener;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lo/getDragToOpenListener;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "gated in"

    const-string v3, "card_verification"

    const-string/jumbo v4, "waitlisted"

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "processing"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "pending"

    goto :goto_1

    .line 101
    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v4, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "report_not_found"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "rnf"

    goto :goto_1

    .line 95
    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 109
    :goto_1
    iget-object v0, p0, Lo/getDragToOpenListener;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "gated out"

    .line 110
    :goto_2
    iget-boolean v0, p0, Lo/getDragToOpenListener;->onMessageChannelReady:Z

    if-eqz v0, :cond_2

    const-string v0, "Intent"

    goto :goto_3

    :cond_2
    const-string v0, "Collect"

    :goto_3
    const/4 v1, 0x3

    new-array v3, v1, [Lo/addWrite;

    const/4 v5, 0x0

    .line 2043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "user_state"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v5

    const/4 v4, 0x1

    .line 3043
    new-instance v5, Lo/addWrite;

    const-string/jumbo v6, "user_gating_status"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v4

    const/4 v2, 0x2

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v2

    const-string v0, "pairs"

    .line 111
    invoke-static {v3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 111
    invoke-static {p1, v0}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xe08f372 -> :sswitch_3
        0xea659cb -> :sswitch_2
        0x12733eea -> :sswitch_1
        0x192a2f13 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCancel(Landroid/content/DialogInterface;)V

    .line 33
    iget-object p1, p0, Lo/getDragToOpenListener;->extraCallback:Lo/getServerTime;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    const-string p1, "checkout_gated_out_bottom_sheet_dismiss"

    .line 34
    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lo/onItemHoverEnter$onRelationshipValidationResult;->FabrikBottomSheetDialogTheme:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget p3, Lo/onItemHoverEnter$onTransact;->fragment_gated_out_users_bottom_sheet:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    .line 5000
    iget-object v0, p0, Lo/getDragToOpenListener;->onNavigationEvent:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1, p2}, Lo/getAllExperimentsInAnalytics;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 40
    :goto_0
    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->ivIllustration:I

    invoke-direct {p0, v0}, Lo/getDragToOpenListener;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "checkout_gated_out_bottom sheet_loaded"

    .line 41
    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->onPostMessage(Ljava/lang/String;)V

    .line 42
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->submit:I

    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v0, "submit"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance v0, Lo/getDragToOpenListener$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/getDragToOpenListener$ICustomTabsCallback;-><init>(Lo/getDragToOpenListener;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 47
    iget-object p1, p0, Lo/getDragToOpenListener;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "processing"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :sswitch_1
    const-string v0, "card_verification"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 79
    new-instance p2, Lo/fromPathMerge;

    .line 80
    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_card_verification_user_collect_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 81
    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_card_verification_user_collect_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 82
    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_card_verification_user_collect_cta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 79
    invoke-direct {p2, p1, v0, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "report_not_found"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 64
    :goto_1
    iget-boolean p1, p0, Lo/getDragToOpenListener;->onMessageChannelReady:Z

    if-eqz p1, :cond_1

    .line 65
    new-instance p2, Lo/fromPathMerge;

    .line 66
    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_intent_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 67
    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_intent_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_intent_cta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    invoke-direct {p2, p1, v0, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 71
    :cond_1
    new-instance p2, Lo/fromPathMerge;

    .line 72
    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_collect_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 73
    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_collect_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_report_not_found_user_collect_cta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 71
    invoke-direct {p2, p1, v0, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v0, "waitlisted"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    iget-boolean p1, p0, Lo/getDragToOpenListener;->onMessageChannelReady:Z

    if-eqz p1, :cond_2

    .line 50
    new-instance p2, Lo/fromPathMerge;

    .line 51
    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_intent_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 52
    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_intent_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_intent_cta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 50
    invoke-direct {p2, p1, v0, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_2
    new-instance p2, Lo/fromPathMerge;

    .line 57
    sget p1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_collect_title:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 58
    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_collect_subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 59
    sget v1, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->checkout_waitlisted_user_collect_cta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 56
    invoke-direct {p2, p1, v0, v1}, Lo/fromPathMerge;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 87
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->title:I

    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 1067
    iget-object v0, p2, Lo/fromPathMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 87
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 88
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->desc:I

    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 1068
    iget-object v0, p2, Lo/fromPathMerge;->onNavigationEvent:Ljava/lang/Object;

    .line 88
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    .line 89
    sget p1, Lo/onItemHoverEnter$onNavigationEvent;->submit:I

    invoke-direct {p0, p1}, Lo/getDragToOpenListener;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    .line 1069
    iget-object p2, p2, Lo/fromPathMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 89
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/createFullSpanItemFromEnd;->setTextV2(I)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0xe08f372 -> :sswitch_3
        0xea659cb -> :sswitch_2
        0x12733eea -> :sswitch_1
        0x192a2f13 -> :sswitch_0
    .end sparse-switch
.end method
