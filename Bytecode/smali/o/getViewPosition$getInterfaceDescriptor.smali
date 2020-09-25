.class final Lo/getViewPosition$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/requestExtraBinder$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onBackStackChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getViewPosition;


# direct methods
.method constructor <init>(Lo/getViewPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    .line 583
    iget-object v0, p0, Lo/getViewPosition$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-static {v0}, Lo/getViewPosition;->ICustomTabsCallback(Lo/getViewPosition;)V

    .line 584
    iget-object v0, p0, Lo/getViewPosition$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-static {v0}, Lo/getViewPosition;->onMessageChannelReady(Lo/getViewPosition;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lo/getViewPosition$getInterfaceDescriptor;->ICustomTabsCallback:Lo/getViewPosition;

    invoke-static {v2}, Lo/getViewPosition;->onMessageChannelReady(Lo/getViewPosition;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/getViewPosition;->onPostMessage(Lo/getViewPosition;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
