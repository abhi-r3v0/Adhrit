.class final Lo/getEarnedPoints;
.super Ljava/lang/Object;

# interfaces
.implements Lo/BadgeJsonAdapter;


# instance fields
.field private final synthetic extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub()V

    return-void
.end method

.method public final asInterface()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onNavigationEvent()V

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage()V

    return-void
.end method

.method public final extraCallback(Lo/FooterActions;)V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0, p1}, Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;->onPostMessage(Lo/FooterActions;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/DeviceAttrResponse;->u_()V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/clone;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    iget-object v0, p0, Lo/getEarnedPoints;->extraCallback:Lo/CredProtectFragment$onCreate$1$$special$$inlined$let$lambda$1;

    invoke-virtual {v0}, Lo/clone;->z_()V

    return-void
.end method
