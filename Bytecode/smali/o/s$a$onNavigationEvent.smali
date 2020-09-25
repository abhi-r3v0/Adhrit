.class final Lo/s$a$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field public final extraCallback:Lo/t;

.field public final onMessageChannelReady:I


# direct methods
.method public constructor <init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/t;I)V
    .locals 0

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    iput-object p1, p0, Lo/s$a$onNavigationEvent;->ICustomTabsCallback:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 877
    iput-object p2, p0, Lo/s$a$onNavigationEvent;->extraCallback:Lo/t;

    .line 878
    iput p3, p0, Lo/s$a$onNavigationEvent;->onMessageChannelReady:I

    return-void
.end method
