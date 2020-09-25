.class public final Lo/BiometricPrompt$2;
.super Lo/createAbtInstance;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/BiometricPrompt$2$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001+B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010(\u001a\u00020)H\u0002J\u0008\u0010*\u001a\u00020)H\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\r0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u0016\u0010&\u001a\n \u000b*\u0004\u0018\u00010\'0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "context",
        "Landroid/content/Context;",
        "ctaClickListener",
        "Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet$OnBottomSheetCtaClicked;",
        "(Landroid/content/Context;Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet$OnBottomSheetCtaClicked;)V",
        "getCtaClickListener",
        "()Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet$OnBottomSheetCtaClicked;",
        "dob",
        "Landroid/widget/TextView;",
        "kotlin.jvm.PlatformType",
        "newCalendar",
        "Ljava/util/Calendar;",
        "getNewCalendar",
        "()Ljava/util/Calendar;",
        "setNewCalendar",
        "(Ljava/util/Calendar;)V",
        "selectedDay",
        "",
        "getSelectedDay",
        "()I",
        "setSelectedDay",
        "(I)V",
        "selectedMonth",
        "getSelectedMonth",
        "setSelectedMonth",
        "selectedYear",
        "getSelectedYear",
        "setSelectedYear",
        "sheetView",
        "Landroid/view/View;",
        "startTime",
        "Landroid/app/DatePickerDialog;",
        "getStartTime",
        "()Landroid/app/DatePickerDialog;",
        "setStartTime",
        "(Landroid/app/DatePickerDialog;)V",
        "submitButton",
        "Lcom/dreamplug/widget/ProgressButton;",
        "setLoading",
        "",
        "show",
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
.field ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

.field extraCallback:Landroid/app/DatePickerDialog;

.field private final getInterfaceDescriptor:Landroid/view/View;

.field private final newSession:Lo/recycleFromEnd;

.field onMessageChannelReady:I

.field onNavigationEvent:Ljava/util/Calendar;

.field onPostMessage:I

.field final onRelationshipValidationResult:Lo/BiometricPrompt$2$onNavigationEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/BiometricPrompt$2$onNavigationEvent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lo/createAbtInstance;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lo/BiometricPrompt$2;->onRelationshipValidationResult:Lo/BiometricPrompt$2$onNavigationEvent;

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0207

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "LayoutInflater.from(cont\u2026t.layout_enter_dob, null)"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lo/BiometricPrompt$2;->getInterfaceDescriptor:Landroid/view/View;

    .line 21
    sget v0, Lo/getSwitchMinWidth$onPostMessage;->continueBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lo/recycleFromEnd;

    iput-object p2, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    .line 22
    iget-object p2, p0, Lo/BiometricPrompt$2;->getInterfaceDescriptor:Landroid/view/View;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->dob:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lo/BiometricPrompt$2;->onNavigationEvent:Ljava/util/Calendar;

    .line 30
    iget-object p2, p0, Lo/BiometricPrompt$2;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 31
    iget-object p2, p0, Lo/BiometricPrompt$2;->getInterfaceDescriptor:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/View;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060033

    invoke-static {p1, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object p2, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const-string v0, "dob"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/BiometricPrompt$2$5;

    invoke-direct {v0, p0, p1}, Lo/BiometricPrompt$2$5;-><init>(Lo/BiometricPrompt$2;Landroid/content/Context;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    .line 49
    iget-object p2, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    const-string v0, "submitButton"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/view/View;

    new-instance v0, Lo/BiometricPrompt$2$4;

    invoke-direct {v0, p0, p1}, Lo/BiometricPrompt$2$4;-><init>(Lo/BiometricPrompt$2;Landroid/content/Context;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p2, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void

    .line 31
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic onMessageChannelReady(Lo/BiometricPrompt$2;)Lo/recycleFromEnd;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Lo/BiometricPrompt$2;)V
    .locals 2

    .line 1059
    iget-object v0, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const-string v1, "dob"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1060
    iget-object v0, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->extraCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1061
    iget-object p0, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    const-string v0, "Processing"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/BiometricPrompt$2;)Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final show()V
    .locals 3

    .line 69
    iget-object v0, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    const-string v1, "dob"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lo/BiometricPrompt$2;->onMessageChannelReady:I

    .line 71
    iput v0, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback:I

    .line 72
    iput v0, p0, Lo/BiometricPrompt$2;->onPostMessage:I

    .line 73
    iget-object v0, p0, Lo/BiometricPrompt$2;->ICustomTabsCallback$Stub$Proxy:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    sget-object v2, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 75
    iget-object v0, p0, Lo/BiometricPrompt$2;->newSession:Lo/recycleFromEnd;

    const-string v2, "Proceed"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lo/recycleFromEnd;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    .line 78
    invoke-super {p0}, Lo/createAbtInstance;->show()V

    return-void
.end method
