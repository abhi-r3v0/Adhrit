.class final Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/performPrimaryNavigationFragmentChanged;->extraCallback(Lcom/dreamplug/fabrik/ui/cm/models/Cta;Landroid/widget/TextView;Lcom/dreamplug/fabrik/ui/control/CardDetails;)V
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

.field private synthetic onPostMessage:Lo/performPrimaryNavigationFragmentChanged;


# direct methods
.method constructor <init>(Lo/performPrimaryNavigationFragmentChanged;Lcom/dreamplug/fabrik/ui/control/CardDetails;Lcom/dreamplug/fabrik/ui/cm/models/Cta;)V
    .locals 0

    iput-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onPostMessage:Lo/performPrimaryNavigationFragmentChanged;

    iput-object p2, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    iput-object p3, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_0

    const-string v0, "control farm"

    invoke-virtual {p1, v0}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->setSwipedDirection(Ljava/lang/String;)V

    .line 1164
    :cond_0
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 2015
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->extraCallback:Ljava/lang/String;

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 1164
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0x30012e

    if-eq v0, v1, :cond_3

    const v1, 0x258156e6

    if-eq v0, v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v0, "deeplink"

    .line 1165
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1166
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 2017
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Deeplink;

    if-eqz p1, :cond_6

    .line 1167
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    .line 2035
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Deeplink;->onNavigationEvent:Ljava/lang/String;

    .line 1167
    invoke-virtual {v0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "flow"

    .line 1170
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1171
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/cm/models/Cta;

    .line 3018
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta;->asBinder:Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;

    if-eqz p1, :cond_4

    .line 3031
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/cm/models/Cta$Flow;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    goto/16 :goto_1

    .line 1172
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const-string v1, "data"

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "hide_card"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onPostMessage:Lo/performPrimaryNavigationFragmentChanged;

    invoke-static {p1}, Lo/performPrimaryNavigationFragmentChanged;->onNavigationEvent(Lo/performPrimaryNavigationFragmentChanged;)Lo/performPrimaryNavigationFragmentChanged$extraCallback;

    move-result-object p1

    .line 4196
    iget-object p1, p1, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    const-string v0, "payment"

    .line 1173
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onPostMessage:Lo/performPrimaryNavigationFragmentChanged;

    invoke-static {p1}, Lo/performPrimaryNavigationFragmentChanged;->onNavigationEvent(Lo/performPrimaryNavigationFragmentChanged;)Lo/performPrimaryNavigationFragmentChanged$extraCallback;

    move-result-object p1

    .line 3198
    iget-object p1, p1, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    const-string v0, "pay_now"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "verify_now"

    .line 1175
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1176
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onPostMessage:Lo/performPrimaryNavigationFragmentChanged;

    invoke-static {p1}, Lo/performPrimaryNavigationFragmentChanged;->onNavigationEvent(Lo/performPrimaryNavigationFragmentChanged;)Lo/performPrimaryNavigationFragmentChanged$extraCallback;

    move-result-object p1

    iget-object v0, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4200
    iget-object p1, p1, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    const-string/jumbo v0, "verify_card"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    const-string v0, "manage"

    .line 1178
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1179
    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->onPostMessage:Lo/performPrimaryNavigationFragmentChanged;

    invoke-static {p1}, Lo/performPrimaryNavigationFragmentChanged;->onNavigationEvent(Lo/performPrimaryNavigationFragmentChanged;)Lo/performPrimaryNavigationFragmentChanged$extraCallback;

    move-result-object p1

    iget-object v0, p0, Lo/performPrimaryNavigationFragmentChanged$onNavigationEvent;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/control/CardDetails;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4206
    iget-object p1, p1, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    const-string v0, "manage_card"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    .line 36
    :cond_6
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4075629b -> :sswitch_3
        -0x3d8d81f0 -> :sswitch_2
        -0x2ee3cdfa -> :sswitch_1
        0x32da4fed -> :sswitch_0
    .end sparse-switch
.end method
