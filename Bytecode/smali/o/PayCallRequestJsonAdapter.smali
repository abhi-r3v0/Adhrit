.class public final Lo/PayCallRequestJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Lo/SessionCallResponseJsonAdapter;

.field public final onPostMessage:Lo/ShortCircuitInfo;


# direct methods
.method public constructor <init>(Lo/ShortCircuitInfo;Lo/SessionCallResponseJsonAdapter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/PayCallRequestJsonAdapter;->onPostMessage:Lo/ShortCircuitInfo;

    .line 41
    iput-object p2, p0, Lo/PayCallRequestJsonAdapter;->extraCallback:Lo/SessionCallResponseJsonAdapter;

    return-void
.end method
