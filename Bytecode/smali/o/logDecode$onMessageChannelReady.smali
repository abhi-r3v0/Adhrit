.class final Lo/logDecode$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDecode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;

.field public final extraCallback:Lo/Account;

.field public final onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter;


# direct methods
.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter;Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/Account;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lo/logDecode$onMessageChannelReady;->onMessageChannelReady:Lo/InstrumentsCompleteJsonAdapter;

    .line 165
    iput-object p2, p0, Lo/logDecode$onMessageChannelReady;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;

    .line 166
    iput-object p3, p0, Lo/logDecode$onMessageChannelReady;->extraCallback:Lo/Account;

    return-void
.end method
