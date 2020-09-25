.class final Lo/getDiagnosticsReport$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDiagnosticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getDiagnosticsReport;


# direct methods
.method private constructor <init>(Lo/getDiagnosticsReport;Landroid/media/MediaCodec;)V
    .locals 0

    .line 1596
    iput-object p1, p0, Lo/getDiagnosticsReport$onPostMessage;->extraCallback:Lo/getDiagnosticsReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1597
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p2, p0, p1}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/getDiagnosticsReport;Landroid/media/MediaCodec;Lo/getDiagnosticsReport$5;)V
    .locals 0

    .line 1594
    invoke-direct {p0, p1, p2}, Lo/getDiagnosticsReport$onPostMessage;-><init>(Lo/getDiagnosticsReport;Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1602
    iget-object p1, p0, Lo/getDiagnosticsReport$onPostMessage;->extraCallback:Lo/getDiagnosticsReport;

    iget-object p1, p1, Lo/getDiagnosticsReport;->ICustomTabsCallback:Lo/getDiagnosticsReport$onPostMessage;

    if-eq p0, p1, :cond_0

    return-void

    .line 1606
    :cond_0
    iget-object p1, p0, Lo/getDiagnosticsReport$onPostMessage;->extraCallback:Lo/getDiagnosticsReport;

    invoke-virtual {p1, p2, p3}, Lo/getDiagnosticsReport;->onNavigationEvent(J)V

    return-void
.end method
