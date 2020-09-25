.class public abstract Lo/setAdditionalData;
.super Lo/setAndroidIdData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setAndroidIdData<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final onNavigationEvent:Lo/waitForCustomerUserId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/waitForCustomerUserId<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "TO;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lo/setAndroidIdData;-><init>()V

    .line 16
    iput-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    return-void
.end method


# virtual methods
.method protected onMessageChannelReady(F)V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->extraCallback(F)V

    return-void
.end method

.method protected onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onNavigationEvent()V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    invoke-interface {v0}, Lo/waitForCustomerUserId;->ICustomTabsCallback()V

    return-void
.end method
