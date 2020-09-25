.class final Lo/updateHomeAccessibility$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateHomeAccessibility;-><init>(Lo/asBinder;Lo/updateNavigationIcon;)V
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
.field private synthetic onNavigationEvent:Lo/updateHomeAccessibility;


# direct methods
.method constructor <init>(Lo/updateHomeAccessibility;)V
    .locals 0

    iput-object p1, p0, Lo/updateHomeAccessibility$extraCallback;->onNavigationEvent:Lo/updateHomeAccessibility;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1176
    iget-object v0, p0, Lo/updateHomeAccessibility$extraCallback;->onNavigationEvent:Lo/updateHomeAccessibility;

    .line 2181
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2182
    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    iget-object v0, v0, Lo/updateHomeAccessibility;->extraCallback:Lo/setActive;

    new-instance v9, Lo/ensureContentInsets$onPostMessage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v8, 0xf

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lo/ensureContentInsets$onPostMessage;-><init>(Ljava/lang/Class;Landroid/os/Bundle;ZJLandroid/content/Intent;I)V

    invoke-virtual {v0, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
