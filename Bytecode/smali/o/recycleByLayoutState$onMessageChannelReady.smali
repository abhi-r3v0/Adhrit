.class public final Lo/recycleByLayoutState$onMessageChannelReady;
.super Lo/setActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleByLayoutState;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setActive<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
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
        "\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0014\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/certificate/CertificateViewModel$certificateData$1",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
        "onActive",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback$Stub:Lo/recycleByLayoutState;


# direct methods
.method constructor <init>(Lo/recycleByLayoutState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lo/recycleByLayoutState$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/recycleByLayoutState;

    invoke-direct {p0}, Lo/setActive;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 2

    .line 49
    invoke-super {p0}, Lo/setActive;->onPostMessage()V

    .line 1320
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lo/recycleByLayoutState$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/recycleByLayoutState;

    invoke-static {v0}, Lo/recycleByLayoutState;->extraCallback(Lo/recycleByLayoutState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lo/recycleByLayoutState$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/recycleByLayoutState;

    invoke-static {v0}, Lo/recycleByLayoutState;->onPostMessage(Lo/recycleByLayoutState;)V

    :cond_1
    return-void
.end method
