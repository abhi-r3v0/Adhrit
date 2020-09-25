.class public final Lo/getUsername;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:Z

.field public final extraCallback:F

.field public final onMessageChannelReady:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lo/toStringMap$extraCallback;->elevationOverlayEnabled:I

    const/4 v1, 0x0

    .line 44
    invoke-static {p1, v0, v1}, Lo/sendSignInLinkToEmail;->ICustomTabsCallback(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lo/getUsername;->ICustomTabsCallback:Z

    .line 45
    sget v0, Lo/toStringMap$extraCallback;->elevationOverlayColor:I

    .line 46
    invoke-static {p1, v0, v1}, Lo/preferLastSpan$onTransact;->ICustomTabsCallback(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lo/getUsername;->onMessageChannelReady:I

    .line 47
    sget v0, Lo/toStringMap$extraCallback;->colorSurface:I

    invoke-static {p1, v0, v1}, Lo/preferLastSpan$onTransact;->ICustomTabsCallback(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lo/getUsername;->onPostMessage:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lo/getUsername;->extraCallback:F

    return-void
.end method
