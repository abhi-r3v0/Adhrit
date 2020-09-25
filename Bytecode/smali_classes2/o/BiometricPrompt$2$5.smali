.class final Lo/BiometricPrompt$2$5;
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
.field final synthetic ICustomTabsCallback:Lo/BiometricPrompt$2;

.field final synthetic onMessageChannelReady:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/BiometricPrompt$2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    iput-object p2, p0, Lo/BiometricPrompt$2$5;->onMessageChannelReady:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 18
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    new-instance v6, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lo/BiometricPrompt$2$5;->onMessageChannelReady:Landroid/content/Context;

    new-instance v0, Lo/BiometricPrompt$2$5$1;

    invoke-direct {v0, p0}, Lo/BiometricPrompt$2$5$1;-><init>(Lo/BiometricPrompt$2$5;)V

    move-object v2, v0

    check-cast v2, Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 1042
    iget-object v0, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 2023
    iget-object v0, v0, Lo/BiometricPrompt$2;->onNavigationEvent:Ljava/util/Calendar;

    const/4 v3, 0x1

    .line 1042
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 3023
    iget-object v0, v0, Lo/BiometricPrompt$2;->onNavigationEvent:Ljava/util/Calendar;

    const/4 v4, 0x2

    .line 1042
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 4023
    iget-object v0, v0, Lo/BiometricPrompt$2;->onNavigationEvent:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 1042
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, v6

    .line 1033
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 4024
    iput-object v6, p1, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    .line 1043
    iget-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 5024
    iget-object p1, p1, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_0

    .line 1043
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 1044
    :cond_0
    iget-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 5025
    iget p1, p1, Lo/BiometricPrompt$2;->onMessageChannelReady:I

    if-lez p1, :cond_1

    .line 1045
    iget-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 6024
    iget-object p1, p1, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_1

    .line 1045
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 6025
    iget v0, v0, Lo/BiometricPrompt$2;->onMessageChannelReady:I

    .line 1045
    iget-object v1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 6026
    iget v1, v1, Lo/BiometricPrompt$2;->ICustomTabsCallback:I

    .line 1045
    iget-object v2, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 6027
    iget v2, v2, Lo/BiometricPrompt$2;->onPostMessage:I

    .line 1045
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 1047
    :cond_1
    iget-object p1, p0, Lo/BiometricPrompt$2$5;->ICustomTabsCallback:Lo/BiometricPrompt$2;

    .line 7024
    iget-object p1, p1, Lo/BiometricPrompt$2;->extraCallback:Landroid/app/DatePickerDialog;

    if-eqz p1, :cond_2

    .line 1047
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 18
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
