.class final Lo/setDropDownGravity$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setDropDownGravity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lcom/cred/pay/repository/models/UpiAppsInstrument;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/cred/pay/repository/models/UpiAppsInstrument;",
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
.field private synthetic onPostMessage:Lo/setDropDownGravity;


# direct methods
.method constructor <init>(Lo/setDropDownGravity;)V
    .locals 0

    iput-object p1, p0, Lo/setDropDownGravity$onRelationshipValidationResult;->onPostMessage:Lo/setDropDownGravity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 22
    check-cast p1, Lcom/cred/pay/repository/models/UpiAppsInstrument;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lo/setDropDownGravity$onRelationshipValidationResult;->onPostMessage:Lo/setDropDownGravity;

    .line 2022
    iget-object v0, v0, Lo/setDropDownGravity;->onNavigationEvent:Ljava/util/ArrayList;

    .line 1145
    check-cast v0, Ljava/lang/Iterable;

    .line 2202
    iget-object p1, p1, Lcom/cred/pay/repository/models/UpiAppsInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 1145
    invoke-static {v0, p1}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
