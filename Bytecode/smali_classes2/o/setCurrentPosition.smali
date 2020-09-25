.class public final Lo/setCurrentPosition;
.super Lo/setNumberOfPie;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Lo/getTransactions;


# direct methods
.method public constructor <init>(Lo/getTransactions;)V
    .locals 0

    invoke-direct {p0}, Lo/setNumberOfPie;-><init>()V

    iput-object p1, p0, Lo/setCurrentPosition;->extraCallback:Lo/getTransactions;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/setPieAngle;)V
    .locals 2

    iget-object v0, p0, Lo/setCurrentPosition;->extraCallback:Lo/getTransactions;

    new-instance v1, Lo/setMinNumberRotation;

    invoke-direct {v1, p1}, Lo/setMinNumberRotation;-><init>(Lo/setPieAngle;)V

    invoke-interface {v0, v1}, Lo/getTransactions;->ICustomTabsCallback(Lo/MediaSessionCompat$1$onMessageChannelReady;)V

    return-void
.end method
