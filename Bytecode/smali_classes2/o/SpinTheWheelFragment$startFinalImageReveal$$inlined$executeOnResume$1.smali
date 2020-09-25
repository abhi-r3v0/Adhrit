.class public final Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field private final onPostMessage:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onPostMessage:J

    iput-object p3, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p4, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    iget-wide v0, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onPostMessage:J

    return-wide v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onNavigationEvent:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    return-object v0
.end method
