.class final Lo/setSwitchMinWidth$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSwitchMinWidth;-><init>(Lo/onSessionEvent;Lo/reauthenticate;)V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setSwitchMinWidth;

.field private synthetic extraCallback:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setSwitchMinWidth;Lo/toDebugString$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    iput-object p2, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "it"

    .line 1039
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1040
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1041
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1042
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    invoke-virtual {p1}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    return-void

    .line 1043
    :cond_0
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    .line 1044
    invoke-static {}, Lo/setSwitchMinWidth;->onNavigationEvent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1045
    sget-object p1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->ICustomTabsCallback$Stub()V

    .line 1046
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    invoke-virtual {p1}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    :cond_1
    return-void

    .line 1050
    :cond_2
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object p1, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    .line 1051
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->extraCallback:Lo/toDebugString$ICustomTabsCallback;

    iget-object v0, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 1059
    iget-object v0, v0, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz v0, :cond_3

    .line 1051
    invoke-virtual {v0}, Lo/onAudioInfoChanged;->l_()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1052
    :cond_4
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 2029
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->ICustomTabsCallback()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1052
    iget-object p1, p0, Lo/setSwitchMinWidth$4;->ICustomTabsCallback:Lo/setSwitchMinWidth;

    .line 2059
    iget-object p1, p1, Lo/setSwitchMinWidth;->onNavigationEvent:Lo/updateAllRemainingSpans;

    if-eqz p1, :cond_5

    .line 1052
    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    :cond_5
    return-void
.end method
