.class final Lo/hasValue$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/Toolbar$ICustomTabsCallback;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lcom/dreamplug/androidapp/gating/DobPanViewModel$DopPanStateUiModel;",
        "kotlin.jvm.PlatformType",
        "onChanged"
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

    iput-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 41
    check-cast p1, Lo/Toolbar$ICustomTabsCallback;

    .line 2019
    iget-object p1, p1, Lo/Toolbar$ICustomTabsCallback;->extraCallback:Lo/getType;

    .line 1263
    sget-object v0, Lo/getType$onMessageChannelReady;->onPostMessage:Lo/getType$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "interpolator"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1264
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->warmup(Lo/hasValue;)V

    .line 1265
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->asInterface(Lo/hasValue;)Lo/recycleFromStart;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    const-string p1, "onboard_dob_load"

    .line 1266
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1267
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 3017
    iget-object p1, p1, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 1267
    :goto_0
    check-cast p1, Lo/Toolbar$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 4019
    iget-object p1, p1, Lo/Toolbar$ICustomTabsCallback;->extraCallback:Lo/getType;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 1267
    :goto_1
    sget-object v0, Lo/getType$onNavigationEvent;->onPostMessage:Lo/getType$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1268
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->getInterfaceDescriptor(Lo/hasValue;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v4}, Lo/hasValue;->ICustomTabsCallback$Stub$Proxy(Lo/hasValue;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onPostMessage(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-static {p1, v0}, Lo/hasValue;->ICustomTabsCallback(Lo/hasValue;Landroid/view/animation/Animation;)V

    .line 1269
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->newSession(Lo/hasValue;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v4}, Lo/hasValue;->ICustomTabsCallback$Stub$Proxy(Lo/hasValue;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-static {p1, v0}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;Landroid/view/animation/Animation;)V

    goto/16 :goto_a

    .line 1273
    :cond_4
    sget-object v0, Lo/getType$onNavigationEvent;->onPostMessage:Lo/getType$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1274
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onRelationshipValidationResult(Lo/hasValue;)Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    const-string p1, "onboard_pan_load"

    .line 1275
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1276
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->warmup(Lo/hasValue;)V

    .line 1277
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 5017
    iget-object p1, p1, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 5320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v2

    .line 1277
    :goto_4
    check-cast p1, Lo/Toolbar$ICustomTabsCallback;

    if-eqz p1, :cond_6

    .line 6019
    iget-object p1, p1, Lo/Toolbar$ICustomTabsCallback;->extraCallback:Lo/getType;

    goto :goto_5

    :cond_6
    move-object p1, v2

    .line 1277
    :goto_5
    sget-object v0, Lo/getType$onMessageChannelReady;->onPostMessage:Lo/getType$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1278
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->newSession(Lo/hasValue;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v4}, Lo/hasValue;->ICustomTabsCallback$Stub$Proxy(Lo/hasValue;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->extraCallback(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_6
    invoke-static {p1, v0}, Lo/hasValue;->ICustomTabsCallback(Lo/hasValue;Landroid/view/animation/Animation;)V

    .line 1279
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->getInterfaceDescriptor(Lo/hasValue;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v4}, Lo/hasValue;->ICustomTabsCallback$Stub$Proxy(Lo/hasValue;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lo/setInflatedId;->onMessageChannelReady(Landroid/content/Context;Landroid/view/View;Landroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v2

    :goto_7
    invoke-static {p1, v0}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 1280
    :cond_9
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 7017
    iget-object p1, p1, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 7320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_a

    goto :goto_8

    :cond_a
    move-object p1, v2

    .line 1280
    :goto_8
    check-cast p1, Lo/Toolbar$ICustomTabsCallback;

    if-eqz p1, :cond_b

    .line 8019
    iget-object p1, p1, Lo/Toolbar$ICustomTabsCallback;->extraCallback:Lo/getType;

    goto :goto_9

    :cond_b
    move-object p1, v2

    .line 1280
    :goto_9
    sget-object v0, Lo/getType$onNavigationEvent;->onPostMessage:Lo/getType$onNavigationEvent;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1281
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->newSession(Lo/hasValue;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->getInterfaceDescriptor(Lo/hasValue;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    :cond_c
    :goto_a
    iget-object p1, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {p1}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object p1

    .line 9015
    iget-object p1, p1, Lo/Toolbar;->onMessageChannelReady:Lo/setActive;

    .line 1287
    iget-object v0, p0, Lo/hasValue$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/hasValue;

    invoke-static {v0}, Lo/hasValue;->onMessageChannelReady(Lo/hasValue;)Lo/Toolbar;

    move-result-object v0

    .line 10011
    iget-object v0, v0, Lo/Toolbar;->extraCallback:Lo/setActive;

    .line 10320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_d

    move-object v2, v0

    .line 1287
    :cond_d
    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
