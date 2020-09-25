.class final Lo/normalizeValue$4;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/normalizeValue;->ICustomTabsCallback(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:J

.field private synthetic extraCallback:I

.field private synthetic onPostMessage:Lo/normalizeValue;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 347
    iput-object p1, p0, Lo/normalizeValue$4;->onPostMessage:Lo/normalizeValue;

    iput p4, p0, Lo/normalizeValue$4;->extraCallback:I

    iput-wide p5, p0, Lo/normalizeValue$4;->ICustomTabsCallback:J

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 4

    .line 350
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$4;->onPostMessage:Lo/normalizeValue;

    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    iget v1, p0, Lo/normalizeValue$4;->extraCallback:I

    iget-wide v2, p0, Lo/normalizeValue$4;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2, v3}, Lo/updateServerSnap;->onMessageChannelReady(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 352
    :catch_0
    iget-object v0, p0, Lo/normalizeValue$4;->onPostMessage:Lo/normalizeValue;

    invoke-static {v0}, Lo/normalizeValue;->onNavigationEvent(Lo/normalizeValue;)V

    return-void
.end method
