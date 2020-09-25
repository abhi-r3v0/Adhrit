.class final Lo/ProxyEvent$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ProxyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/Object;

.field public final extraCallback:Lo/t;

.field public final onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;


# direct methods
.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter;Lo/t;Ljava/lang/Object;)V
    .locals 0

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1898
    iput-object p1, p0, Lo/ProxyEvent$onMessageChannelReady;->onNavigationEvent:Lo/InstrumentsCompleteJsonAdapter;

    .line 1899
    iput-object p2, p0, Lo/ProxyEvent$onMessageChannelReady;->extraCallback:Lo/t;

    .line 1900
    iput-object p3, p0, Lo/ProxyEvent$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method
