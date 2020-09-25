.class final Lo/getInstallReferrer$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInstallReferrer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getInstallReferrer;

.field private synthetic onNavigationEvent:Lo/getCardBackgroundColor;


# direct methods
.method constructor <init>(Lo/getInstallReferrer;Lo/getCardBackgroundColor;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lo/getInstallReferrer$4;->extraCallback:Lo/getInstallReferrer;

    iput-object p2, p0, Lo/getInstallReferrer$4;->onNavigationEvent:Lo/getCardBackgroundColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lo/getInstallReferrer$4;->extraCallback:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->ICustomTabsCallback(Lo/getInstallReferrer;)Lo/setTitleMarginTop$ICustomTabsCallback;

    move-result-object v0

    iget-object v1, p0, Lo/getInstallReferrer$4;->onNavigationEvent:Lo/getCardBackgroundColor;

    invoke-virtual {v1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lo/setTitleMarginTop$ICustomTabsCallback;->ICustomTabsCallback(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
