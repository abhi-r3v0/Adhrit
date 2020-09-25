.class final Lo/Settings$extraCallback$5;
.super Lo/Settings$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Settings$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/Settings$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Settings$extraCallback;Ljava/lang/String;)V
    .locals 0

    .line 2418
    iput-object p2, p0, Lo/Settings$extraCallback$5;->onMessageChannelReady:Ljava/lang/String;

    iget-object p1, p1, Lo/Settings$extraCallback;->ICustomTabsCallback:Lo/Settings;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lo/Settings$extraCallback;-><init>(Lo/Settings;B)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    .line 2426
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This MixpanelPeople object has a fixed, constant distinctId"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 2421
    iget-object v0, p0, Lo/Settings$extraCallback$5;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
