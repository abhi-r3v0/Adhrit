.class public final Lo/setMinimumWidth;
.super Lo/getAllExperimentsInAnalytics;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMinimumWidth$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020\"2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010&\u001a\u00020\'2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010(\u001a\u00020\"H\u0016J\u0008\u0010)\u001a\u00020\"H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/PanCardBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "()V",
        "bottomSheetView",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "getBottomSheetView",
        "()Landroidx/constraintlayout/widget/ConstraintLayout;",
        "setBottomSheetView",
        "(Landroidx/constraintlayout/widget/ConstraintLayout;)V",
        "ctaClickListener",
        "Lcom/dreamplug/androidapp/ui/widget/PanCardBottomSheet$OnBottomSheetCtaClicked;",
        "getCtaClickListener",
        "()Lcom/dreamplug/androidapp/ui/widget/PanCardBottomSheet$OnBottomSheetCtaClicked;",
        "setCtaClickListener",
        "(Lcom/dreamplug/androidapp/ui/widget/PanCardBottomSheet$OnBottomSheetCtaClicked;)V",
        "error",
        "Landroid/widget/TextView;",
        "getError",
        "()Landroid/widget/TextView;",
        "setError",
        "(Landroid/widget/TextView;)V",
        "panCard",
        "Landroid/widget/EditText;",
        "getPanCard",
        "()Landroid/widget/EditText;",
        "setPanCard",
        "(Landroid/widget/EditText;)V",
        "submitButton",
        "Lcom/dreamplug/widget/ProgressButton;",
        "getSubmitButton",
        "()Lcom/dreamplug/widget/ProgressButton;",
        "setSubmitButton",
        "(Lcom/dreamplug/widget/ProgressButton;)V",
        "dismiss",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onDestroyView",
        "setLoading",
        "OnBottomSheetCtaClicked",
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
.field public ICustomTabsCallback:Lo/onChildrenLoaded;

.field public extraCallback:Landroid/widget/TextView;

.field public onMessageChannelReady:Lo/setMinimumWidth$onPostMessage;

.field public onNavigationEvent:Landroid/widget/EditText;

.field public onPostMessage:Lo/recycleFromEnd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/getAllExperimentsInAnalytics;-><init>()V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/setMinimumWidth;)V
    .locals 3

    .line 2116
    sget-object v0, Lo/setCollapseIcon;->extraCallback:Lo/setCollapseIcon;

    iget-object v0, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    const-string v1, "panCard"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pan"

    invoke-static {v2, v0}, Lo/setCollapseIcon;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2117
    iget-object v0, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2118
    iget-object v0, p0, Lo/setMinimumWidth;->onMessageChannelReady:Lo/setMinimumWidth$onPostMessage;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v2, :cond_2

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/setMinimumWidth$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 2119
    :cond_3
    iget-object v0, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    const-string v1, "submitButton"

    if-nez v0, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 2120
    iget-object p0, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    if-nez p0, :cond_5

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    const-string v0, "Processing"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 42
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_8

    check-cast p1, Lo/createAbtInstance;

    .line 43
    sget-object v0, Lo/setMinimumWidth$extraCallback;->onPostMessage:Lo/setMinimumWidth$extraCallback;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {p1, v0}, Lo/createAbtInstance;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0209

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v1, "view"

    .line 51
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const v4, 0x7f060033

    invoke-static {v3, v4}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0b0831

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.submitButton)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lo/recycleFromEnd;

    iput-object v1, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    const v1, 0x7f0b061b

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.panCard)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    const v1, 0x7f0b02df

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.error)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lo/setMinimumWidth;->extraCallback:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    const-string v2, "panCard"

    if-nez v1, :cond_1

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lo/setMinimumWidth$onNavigationEvent;

    invoke-direct {v3, p0}, Lo/setMinimumWidth$onNavigationEvent;-><init>(Lo/setMinimumWidth;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    iget-object v1, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v1, :cond_2

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    new-instance v3, Lo/setMinimumWidth$ICustomTabsCallback;

    invoke-direct {v3, p0}, Lo/setMinimumWidth$ICustomTabsCallback;-><init>(Lo/setMinimumWidth;)V

    check-cast v3, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 86
    iget-object v1, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    const-string v3, "submitButton"

    if-nez v1, :cond_3

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    sget-object v4, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v1, v4}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 87
    iget-object v1, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    if-nez v1, :cond_4

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    const-string v4, "Proceed"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v1, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 89
    iget-object v1, p0, Lo/setMinimumWidth;->onPostMessage:Lo/recycleFromEnd;

    if-nez v1, :cond_6

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    check-cast v1, Landroid/view/View;

    new-instance v2, Lo/setMinimumWidth$onMessageChannelReady;

    invoke-direct {v2, p0}, Lo/setMinimumWidth$onMessageChannelReady;-><init>(Lo/setMinimumWidth;)V

    check-cast v2, Lo/onDisconnectSetValue;

    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    const v1, 0x7f0b0106

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.bottomSheetView)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/onChildrenLoaded;

    iput-object v0, p0, Lo/setMinimumWidth;->ICustomTabsCallback:Lo/onChildrenLoaded;

    .line 93
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance v0, Lo/setMinimumWidth$ICustomTabsCallback$Stub;

    invoke-direct {v0, p0}, Lo/setMinimumWidth$ICustomTabsCallback$Stub;-><init>(Lo/setMinimumWidth;)V

    check-cast v0, Lo/getServerTime;

    const-string v1, "command"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x190

    .line 1018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v0}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v1, v2, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    .line 98
    check-cast p1, Landroid/app/Dialog;

    return-object p1

    .line 51
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m_()V
    .locals 2

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lo/setMinimumWidth;->onMessageChannelReady:Lo/setMinimumWidth$onPostMessage;

    .line 104
    iget-object v0, p0, Lo/setMinimumWidth;->onNavigationEvent:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "panCard"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 105
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->m_()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lo/getAllExperimentsInAnalytics;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1400f9

    .line 38
    invoke-virtual {p0, p1, v0}, Lo/onAudioInfoChanged;->onMessageChannelReady(II)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    .line 109
    invoke-super {p0}, Lo/getAllExperimentsInAnalytics;->onDestroyView()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lo/setMinimumWidth;->onMessageChannelReady:Lo/setMinimumWidth$onPostMessage;

    return-void
.end method
