.class final Lo/hasValue$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValue;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/hasValue;


# direct methods
.method constructor <init>(Lo/hasValue;)V
    .locals 0

    iput-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 41
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1241
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object p1

    .line 2225
    iget-object p1, p1, Lo/getMaxEnd;->ICustomTabsCallback:Lo/getMaxStart;

    .line 1241
    sget-object v0, Lo/getMaxStart;->onMessageChannelReady:Lo/getMaxStart;

    if-ne p1, v0, :cond_5

    .line 1242
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object p1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object p1

    sget-object v0, Lo/getMaxStart;->onPostMessage:Lo/getMaxStart;

    invoke-virtual {p1, v0}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1244
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 3013
    iget-object p1, p1, Lo/Toolbar;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1244
    :goto_0
    check-cast p1, Lo/Toolbar$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 4019
    iget-object p1, p1, Lo/Toolbar$ICustomTabsCallback;->extraCallback:Lo/getType;

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 1245
    :goto_1
    sget-object v0, Lo/getType$onMessageChannelReady;->onPostMessage:Lo/getType$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "onboard_dob_submit"

    .line 1246
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1247
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    move-result-object p1

    iget-object v0, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onTransact(Lo/hasValue;)Ljava/lang/String;

    move-result-object v0

    .line 4021
    iput-object v0, p1, Lo/getTitleMarginStart;->onNavigationEvent:Ljava/lang/String;

    .line 1248
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    const-string v0, "dob"

    invoke-static {p1, v0}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;Ljava/lang/String;)V

    goto :goto_2

    .line 1250
    :cond_2
    sget-object v0, Lo/getType$onNavigationEvent;->onPostMessage:Lo/getType$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1251
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onRelationshipValidationResult(Lo/hasValue;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    const-string p1, "onboard_pan_submit"

    .line 1252
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1253
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    move-result-object p1

    iget-object v0, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onRelationshipValidationResult(Lo/hasValue;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4022
    iput-object v0, p1, Lo/getTitleMarginStart;->ICustomTabsCallback:Ljava/lang/String;

    .line 1254
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    const-string v0, "pan"

    invoke-static {p1, v0}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;Ljava/lang/String;)V

    .line 1257
    :cond_3
    :goto_2
    iget-object p1, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 5015
    iget-object p1, p1, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    .line 1257
    iget-object v0, p0, Lo/hasValue$asBinder;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object v0

    .line 6011
    iget-object v0, v0, Lo/Toolbar;->extraCallback:Lo/setActive;

    .line 6320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_4

    move-object v1, v0

    .line 1257
    :cond_4
    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 41
    :cond_5
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
