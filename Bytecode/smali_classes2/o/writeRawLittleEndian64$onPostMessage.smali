.class final Lo/writeRawLittleEndian64$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeRawLittleEndian64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/writeSessionEventDevice;

.field public extraCallback:J

.field public onNavigationEvent:Ljava/lang/Object;

.field public onPostMessage:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    iput-object v0, p0, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    return-void
.end method

.method constructor <init>(Lo/writeSessionEventDevice;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 70
    iput-object p1, p0, Lo/writeRawLittleEndian64$onPostMessage;->ICustomTabsCallback:Lo/writeSessionEventDevice;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 68
    throw p1
.end method
