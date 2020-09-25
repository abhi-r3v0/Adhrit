.class final Lo/BiometricPrompt$2$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BiometricPrompt$2$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Landroid/widget/DatePicker;",
        "kotlin.jvm.PlatformType",
        "year",
        "",
        "monthOfYear",
        "dayOfMonth",
        "onDateSet"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/BiometricPrompt$2$5;


# direct methods
.method constructor <init>(Lo/BiometricPrompt$2$5;)V
    .locals 0

    iput-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 35
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 36
    iget-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object p1, p1, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 1025
    iput p2, p1, Lo/BiometricPrompt$2;->onMessageChannelReady:I

    .line 37
    iget-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object p1, p1, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 1026
    iput p3, p1, Lo/BiometricPrompt$2;->ICustomTabsCallback:I

    .line 38
    iget-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object p1, p1, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 1027
    iput p4, p1, Lo/BiometricPrompt$2;->onPostMessage:I

    .line 39
    iget-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object p1, p1, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    invoke-static {p1}, Lo/BiometricPrompt$2;->onPostMessage(Lo/BiometricPrompt$2;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "dob"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object v0, v0, Lo/BiometricPrompt$2$5;->onMessageChannelReady:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Lo/extraCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    add-int/2addr p3, p4

    invoke-static {p3}, Lo/extraCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const p2, 0x7f130150

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object p1, p0, Lo/BiometricPrompt$2$5$1;->ICustomTabsCallback:Lo/BiometricPrompt$2$5;

    iget-object p1, p1, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    invoke-static {p1}, Lo/BiometricPrompt$2;->onMessageChannelReady(Lo/BiometricPrompt$2;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object p2, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, p2}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
