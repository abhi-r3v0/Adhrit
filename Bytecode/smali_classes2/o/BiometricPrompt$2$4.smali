.class final Lo/BiometricPrompt$2$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/BiometricPrompt$2;-><init>(Landroid/content/Context;Lo/BiometricPrompt$2$onNavigationEvent;)V
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
.field private synthetic extraCallback:Lo/BiometricPrompt$2;

.field private synthetic onMessageChannelReady:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/BiometricPrompt$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    iput-object p2, p0, Lo/BiometricPrompt$2$4;->onMessageChannelReady:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 18
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    iget-object p1, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    .line 2024
    iget-object p1, p1, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_1

    .line 1051
    iget-object p1, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1052
    iget-object p1, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    .line 3018
    iget-object p1, p1, Lo/BiometricPrompt$2;->onRelationshipValidationResult:Lo/BiometricPrompt$2$onNavigationEvent;

    if-eqz p1, :cond_0

    .line 1052
    iget-object v1, p0, Lo/BiometricPrompt$2$4;->onMessageChannelReady:Landroid/content/Context;

    const v2, 0x7f130515

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    .line 3025
    iget v4, v4, Lo/BiometricPrompt$2;->onMessageChannelReady:I

    .line 1052
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    .line 3026
    iget v0, v0, Lo/BiometricPrompt$2;->ICustomTabsCallback:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 1052
    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    .line 3027
    iget v4, v4, Lo/BiometricPrompt$2;->onPostMessage:I

    .line 1052
    invoke-static {v4}, Lo/extraCallback;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026it, selectedDay.twoDigit)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/BiometricPrompt$2$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)V

    .line 1053
    :cond_0
    iget-object p1, p0, Lo/BiometricPrompt$2$4;->extraCallback:Lo/BiometricPrompt$2;

    invoke-static {p1}, Lo/BiometricPrompt$2;->onNavigationEvent(Lo/BiometricPrompt$2;)V

    .line 18
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
