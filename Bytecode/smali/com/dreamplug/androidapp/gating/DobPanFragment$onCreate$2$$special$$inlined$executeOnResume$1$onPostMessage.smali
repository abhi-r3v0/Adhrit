.class final Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage(Lo/toLegacyStreamType;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$1$4"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 140
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    move-result-object v0

    .line 1022
    iget-object v0, v0, Lo/getTitleMarginStart;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v0

    iget-object v1, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v1, v1, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    const v2, 0x7f13038d

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v0

    sget-object v1, Lo/getMaxStart;->extraCallback:Lo/getMaxStart;

    invoke-virtual {v0, v1}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 143
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object v0

    .line 2011
    iget-object v0, v0, Lo/Toolbar;->extraCallback:Lo/setActive;

    .line 143
    new-instance v1, Lo/Toolbar$ICustomTabsCallback;

    sget-object v2, Lo/getType$onNavigationEvent;->onPostMessage:Lo/getType$onNavigationEvent;

    check-cast v2, Lo/getType;

    invoke-direct {v1, v2}, Lo/Toolbar$ICustomTabsCallback;-><init>(Lo/getType;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v0, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->extraCallback(Lo/hasValue;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 145
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    const-string v3, "REPORT_NOT_FOUND_FRAGMENT"

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
