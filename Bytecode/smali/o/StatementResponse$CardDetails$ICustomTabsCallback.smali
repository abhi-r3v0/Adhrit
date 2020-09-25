.class final Lo/StatementResponse$CardDetails$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/StatementResponse$CardDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/hardware/display/DisplayManager;

.field final synthetic onPostMessage:Lo/StatementResponse$CardDetails;


# direct methods
.method public constructor <init>(Lo/StatementResponse$CardDetails;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/StatementResponse$CardDetails$ICustomTabsCallback;->onPostMessage:Lo/StatementResponse$CardDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lo/StatementResponse$CardDetails$ICustomTabsCallback;->onNavigationEvent:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 239
    iget-object v0, p0, Lo/StatementResponse$CardDetails$ICustomTabsCallback;->onNavigationEvent:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 259
    iget-object p1, p0, Lo/StatementResponse$CardDetails$ICustomTabsCallback;->onPostMessage:Lo/StatementResponse$CardDetails;

    invoke-static {p1}, Lo/StatementResponse$CardDetails;->onMessageChannelReady(Lo/StatementResponse$CardDetails;)V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 243
    iget-object v0, p0, Lo/StatementResponse$CardDetails$ICustomTabsCallback;->onNavigationEvent:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method
