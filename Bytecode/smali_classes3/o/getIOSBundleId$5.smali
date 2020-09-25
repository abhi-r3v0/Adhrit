.class final Lo/getIOSBundleId$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setHandleCodeInApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getIOSBundleId;->asInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setHandleCodeInApp<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getIOSBundleId;


# direct methods
.method constructor <init>(Lo/getIOSBundleId;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lo/getIOSBundleId$5;->onNavigationEvent:Lo/getIOSBundleId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 329
    iget-object p1, p0, Lo/getIOSBundleId$5;->onNavigationEvent:Lo/getIOSBundleId;

    .line 1056
    invoke-virtual {p1}, Lo/getIOSBundleId;->onPostMessage()V

    .line 330
    iget-object p1, p0, Lo/getIOSBundleId$5;->onNavigationEvent:Lo/getIOSBundleId;

    .line 2056
    iget-object p1, p1, Lo/getIOSBundleId;->onMessageChannelReady:Lo/AnalyticsConnectorRegistrar;

    .line 330
    invoke-interface {p1}, Lo/AnalyticsConnectorRegistrar;->onPostMessage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 331
    iget-object p1, p0, Lo/getIOSBundleId$5;->onNavigationEvent:Lo/getIOSBundleId;

    .line 3056
    iget-object p1, p1, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 333
    :cond_0
    iget-object p1, p0, Lo/getIOSBundleId$5;->onNavigationEvent:Lo/getIOSBundleId;

    .line 4056
    iget-object p1, p1, Lo/getIOSBundleId;->extraCallback:Landroid/widget/Button;

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
