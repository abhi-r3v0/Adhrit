.class public final Lo/PinAccountRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/TabConfigResponseJsonAdapter;

.field public final ICustomTabsCallback$Stub:J

.field public final extraCallback:I

.field public final onMessageChannelReady:Lo/Info;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lo/TabConfigResponse;

.field public final onTransact:Lo/InfoJsonAdapter;


# direct methods
.method public constructor <init>(I)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lo/PinAccountRequest;-><init>(Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;ILo/InfoJsonAdapter;J)V

    return-void
.end method

.method public constructor <init>(Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;ILo/InfoJsonAdapter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PinAccountRequest;->onPostMessage:Lo/TabConfigResponse;

    iput-object p2, p0, Lo/PinAccountRequest;->onMessageChannelReady:Lo/Info;

    iput-object p3, p0, Lo/PinAccountRequest;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/PinAccountRequest;->ICustomTabsCallback:Lo/TabConfigResponseJsonAdapter;

    iput p5, p0, Lo/PinAccountRequest;->extraCallback:I

    iput-object p6, p0, Lo/PinAccountRequest;->onTransact:Lo/InfoJsonAdapter;

    iput-wide p7, p0, Lo/PinAccountRequest;->ICustomTabsCallback$Stub:J

    return-void
.end method
