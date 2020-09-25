.class final Lo/buildPennant$5;
.super Lo/buildPennant$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/buildPennant;->ICustomTabsCallback([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:[B

.field private synthetic extraCallback:I

.field private onMessageChannelReady:I


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    .line 91
    iput p1, p0, Lo/buildPennant$5;->extraCallback:I

    iput-object p2, p0, Lo/buildPennant$5;->ICustomTabsCallback:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/buildPennant$extraCallback;-><init>(B)V

    .line 92
    iget p1, p0, Lo/buildPennant$5;->extraCallback:I

    iput p1, p0, Lo/buildPennant$5;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/onServerInfoUpdate;I)I
    .locals 2

    .line 95
    iget-object v0, p0, Lo/buildPennant$5;->ICustomTabsCallback:[B

    iget v1, p0, Lo/buildPennant$5;->onMessageChannelReady:I

    invoke-interface {p1, v0, v1, p2}, Lo/onServerInfoUpdate;->ICustomTabsCallback([BII)V

    .line 96
    iget p1, p0, Lo/buildPennant$5;->onMessageChannelReady:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/buildPennant$5;->onMessageChannelReady:I

    const/4 p1, 0x0

    return p1
.end method
