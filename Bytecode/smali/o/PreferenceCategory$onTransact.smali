.class final Lo/PreferenceCategory$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PreferenceCategory;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field private synthetic extraCallback:Lo/PreferenceCategory;


# direct methods
.method constructor <init>(Lo/PreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$onTransact;->extraCallback:Lo/PreferenceCategory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1220
    iget-object v0, p0, Lo/PreferenceCategory$onTransact;->extraCallback:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    .line 2063
    iget-object v0, v0, Lo/PreferenceGroup;->warmup:Lo/onDetach$newSession;

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, v0, Lo/onDetach$newSession;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v1, p0, Lo/PreferenceCategory$onTransact;->extraCallback:Lo/PreferenceCategory;

    invoke-static {v1}, Lo/PreferenceCategory;->onPostMessage(Lo/PreferenceCategory;)Lo/onDetach$newSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3085
    iget-object v1, v1, Lo/onDetach$newSession;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1220
    iget-object v2, p0, Lo/PreferenceCategory$onTransact;->extraCallback:Lo/PreferenceCategory;

    invoke-static {v2}, Lo/PreferenceCategory;->extraCallback(Lo/PreferenceCategory;)Lo/getMoveDuration;

    move-result-object v2

    const-string v3, "bank_offer"

    invoke-static {v2, v3, v0, v1}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
