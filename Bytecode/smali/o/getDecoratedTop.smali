.class public final Lo/getDecoratedTop;
.super Lo/zzc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDecoratedTop$extraCallback;,
        Lo/getDecoratedTop$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0006\u0010\u0016\u001a\u00020\u000bJ\u0006\u0010\u0017\u001a\u00020\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardAddCardHolderNameDialog;",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenDialogFragment;",
        "()V",
        "actionListener",
        "Lcom/dreamplug/fabrik/ui/onboardAddCard/OnboardAddCardHolderNameDialog$DialogInterface;",
        "isEnabled",
        "",
        "()Z",
        "setEnabled",
        "(Z)V",
        "onActivityCreated",
        "",
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
        "setComplete",
        "setLoading",
        "Companion",
        "DialogInterface",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getDecoratedTop$onMessageChannelReady;


# instance fields
.field public extraCallback:Z

.field private onNavigationEvent:Lo/getDecoratedTop$extraCallback;

.field private onPostMessage:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getDecoratedTop$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getDecoratedTop$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lo/getDecoratedTop;->ICustomTabsCallback:Lo/getDecoratedTop$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lo/zzc;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lo/getDecoratedTop;->extraCallback:Z

    return-void
.end method

.method public static final synthetic extraCallback(Lo/getDecoratedTop;Lo/getDecoratedTop$extraCallback;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lo/getDecoratedTop;->onNavigationEvent:Lo/getDecoratedTop$extraCallback;

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/getDecoratedTop;)Lo/getDecoratedTop$extraCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lo/getDecoratedTop;->onNavigationEvent:Lo/getDecoratedTop$extraCallback;

    return-object p0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lo/zzc;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1400f8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0e00c0

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 1

    invoke-super {p0}, Lo/zzc;->onDestroyView()V

    .line 1000
    iget-object v0, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onPostMessage(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

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

    iget-object v1, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onTransact()V
    .locals 1

    iget-object v0, p0, Lo/getDecoratedTop;->onPostMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1, p2}, Lo/zzc;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameCta:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getMaxEnd;

    sget-object p2, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {p1, p2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 34
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameSubTitle:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/createFullSpanItemFromEnd;

    const-string p2, "nameSubTitle"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f130040

    invoke-static {p2, v0}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameOnCard:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lo/getDecoratedTop$onPostMessage;

    invoke-direct {p2, p0}, Lo/getDecoratedTop$onPostMessage;-><init>(Lo/getDecoratedTop;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameCta:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getMaxEnd;

    const-string p2, "nameCta"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/getDecoratedTop$onNavigationEvent;

    invoke-direct {p2, p0}, Lo/getDecoratedTop$onNavigationEvent;-><init>(Lo/getDecoratedTop;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 57
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameOnCard:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 58
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameOnCard:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    new-instance p2, Lo/getDecoratedTop$ICustomTabsCallback;

    invoke-direct {p2, p0}, Lo/getDecoratedTop$ICustomTabsCallback;-><init>(Lo/getDecoratedTop;)V

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->nameOnCard:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    new-instance p2, Lo/getDecoratedTop$asBinder;

    invoke-direct {p2, p0}, Lo/getDecoratedTop$asBinder;-><init>(Lo/getDecoratedTop;)V

    check-cast p2, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 67
    :cond_0
    sget p1, Lo/getSwitchMinWidth$onPostMessage;->back:I

    invoke-virtual {p0, p1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/offsetPosition;

    const-string p2, "back"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    new-instance p2, Lo/getDecoratedTop$ICustomTabsCallback$Stub;

    invoke-direct {p2, p0}, Lo/getDecoratedTop$ICustomTabsCallback$Stub;-><init>(Lo/getDecoratedTop;)V

    check-cast p2, Lo/onDisconnectSetValue;

    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
