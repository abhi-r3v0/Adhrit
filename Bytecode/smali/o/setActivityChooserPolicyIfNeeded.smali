.class public final Lo/setActivityChooserPolicyIfNeeded;
.super Lo/onAudioInfoChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setActivityChooserPolicyIfNeeded$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\u000f\u001a\u00020\u0006H\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0002J\u001a\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/AppUpdateDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "appInfo",
        "Lcom/dreamplug/tools/AppUpdaterInfo;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onNegativeButton",
        "onPositiveButton",
        "onViewCreated",
        "view",
        "Companion",
        "forceupdater_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/HashMap;

.field private onMessageChannelReady:Lo/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lo/onAudioInfoChanged;-><init>()V

    return-void
.end method

.method private onNavigationEvent(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->ICustomTabsCallback:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->ICustomTabsCallback:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->ICustomTabsCallback:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/setActivityChooserPolicyIfNeeded;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static final synthetic onNavigationEvent(Lo/setActivityChooserPolicyIfNeeded;)V
    .locals 0

    .line 5066
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->onMessageChannelReady()V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setActivityChooserPolicyIfNeeded;)V
    .locals 5

    .line 3055
    iget-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->onMessageChannelReady:Lo/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4008
    iget-object v0, v0, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3055
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 3056
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3057
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lo/setActivityChooserPolicyIfNeeded;->onMessageChannelReady:Lo/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3

    .line 5008
    iget-object v1, v4, Lo/RecyclerView$ViewHolder;->ICustomTabsCallback:Ljava/lang/String;

    .line 3057
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3059
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3061
    :catch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/onEnteredHiddenState$onNavigationEvent;->play_service_not_found:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lo/onAudioInfoChanged;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget p1, Lo/onEnteredHiddenState$ICustomTabsCallback;->UpdateDialog:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    .line 29
    new-instance v0, Lo/writeStringNoTag;

    invoke-direct {v0}, Lo/writeStringNoTag;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const-string v2, "appInfo"

    .line 31
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v2, Lo/RecyclerView$ViewHolder;

    if-nez p3, :cond_0

    move-object p3, v1

    goto :goto_0

    .line 1845
    :cond_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v0, v3, v2}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p3

    .line 1818
    :goto_0
    invoke-static {v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 31
    check-cast p3, Lo/RecyclerView$ViewHolder;

    iput-object p3, p0, Lo/setActivityChooserPolicyIfNeeded;->onMessageChannelReady:Lo/RecyclerView$ViewHolder;

    .line 33
    :cond_1
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast p3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    :cond_4
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_5

    sget-object v1, Lo/setActivityChooserPolicyIfNeeded$ICustomTabsCallback;->onNavigationEvent:Lo/setActivityChooserPolicyIfNeeded$ICustomTabsCallback;

    check-cast v1, Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p3, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 40
    :cond_5
    invoke-virtual {p0, v0}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 41
    sget p3, Lo/onEnteredHiddenState$extraCallback;->updater_dlg:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/onAudioInfoChanged;->onDestroyView()V

    .line 6000
    iget-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->ICustomTabsCallback:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2}, Lo/onAudioInfoChanged;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    sget p1, Lo/onEnteredHiddenState$onMessageChannelReady;->tvMessage:I

    invoke-direct {p0, p1}, Lo/setActivityChooserPolicyIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo p2, "tvMessage"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/setActivityChooserPolicyIfNeeded;->onMessageChannelReady:Lo/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, v0, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 47
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget p1, Lo/onEnteredHiddenState$onMessageChannelReady;->btnClose:I

    invoke-direct {p0, p1}, Lo/setActivityChooserPolicyIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    const-string v0, "btnClose"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lo/onEnteredHiddenState$onNavigationEvent;->later:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    sget p1, Lo/onEnteredHiddenState$onMessageChannelReady;->tvMessage:I

    invoke-direct {p0, p1}, Lo/setActivityChooserPolicyIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/setActivityChooserPolicyIfNeeded;->onMessageChannelReady:Lo/RecyclerView$ViewHolder;

    if-eqz p2, :cond_1

    .line 3009
    iget-object v1, p2, Lo/RecyclerView$ViewHolder;->onPostMessage:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/16 p2, 0x8

    .line 49
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    sget p1, Lo/onEnteredHiddenState$onMessageChannelReady;->btnUpdate:I

    invoke-direct {p0, p1}, Lo/setActivityChooserPolicyIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    const-string p2, "btnUpdate"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setActivityChooserPolicyIfNeeded$onMessageChannelReady;

    invoke-direct {p2, p0}, Lo/setActivityChooserPolicyIfNeeded$onMessageChannelReady;-><init>(Lo/setActivityChooserPolicyIfNeeded;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 51
    sget p1, Lo/onEnteredHiddenState$onMessageChannelReady;->btnClose:I

    invoke-direct {p0, p1}, Lo/setActivityChooserPolicyIfNeeded;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/setActivityChooserPolicyIfNeeded$extraCallback;

    invoke-direct {p2, p0}, Lo/setActivityChooserPolicyIfNeeded$extraCallback;-><init>(Lo/setActivityChooserPolicyIfNeeded;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
