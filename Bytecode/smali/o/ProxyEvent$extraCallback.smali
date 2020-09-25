.class final Lo/ProxyEvent$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ProxyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:J

.field public final onPostMessage:Lo/t;


# direct methods
.method public constructor <init>(Lo/t;IJ)V
    .locals 0

    .line 1847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1848
    iput-object p1, p0, Lo/ProxyEvent$extraCallback;->onPostMessage:Lo/t;

    .line 1849
    iput p2, p0, Lo/ProxyEvent$extraCallback;->ICustomTabsCallback:I

    .line 1850
    iput-wide p3, p0, Lo/ProxyEvent$extraCallback;->onMessageChannelReady:J

    return-void
.end method
