.class final Lo/normalizeValue$2;
.super Lo/childMovedChange;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Lo/normalizeValue;

.field private synthetic onPostMessage:Lo/getNodeFilter;


# direct methods
.method varargs constructor <init>(Lo/normalizeValue;Ljava/lang/String;[Ljava/lang/Object;ILo/getNodeFilter;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lo/normalizeValue$2;->onMessageChannelReady:Lo/normalizeValue;

    iput p4, p0, Lo/normalizeValue$2;->ICustomTabsCallback:I

    iput-object p5, p0, Lo/normalizeValue$2;->onPostMessage:Lo/getNodeFilter;

    invoke-direct {p0, p2, p3}, Lo/childMovedChange;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 329
    :try_start_0
    iget-object v0, p0, Lo/normalizeValue$2;->onMessageChannelReady:Lo/normalizeValue;

    iget v1, p0, Lo/normalizeValue$2;->ICustomTabsCallback:I

    iget-object v2, p0, Lo/normalizeValue$2;->onPostMessage:Lo/getNodeFilter;

    .line 1341
    iget-object v0, v0, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v0, v1, v2}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 331
    :catch_0
    iget-object v0, p0, Lo/normalizeValue$2;->onMessageChannelReady:Lo/normalizeValue;

    invoke-static {v0}, Lo/normalizeValue;->onNavigationEvent(Lo/normalizeValue;)V

    return-void
.end method
