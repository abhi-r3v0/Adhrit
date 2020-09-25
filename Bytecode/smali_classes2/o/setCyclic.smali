.class public final Lo/setCyclic;
.super Lo/SpinTheWheelResponse$Meta;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/setPayments;


# direct methods
.method public constructor <init>(Lo/setPayments;)V
    .locals 0

    invoke-direct {p0}, Lo/SpinTheWheelResponse$Meta;-><init>()V

    iput-object p1, p0, Lo/setCyclic;->onNavigationEvent:Lo/setPayments;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/setCyclic;->onNavigationEvent:Lo/setPayments;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/setPayments;->extraCallback()V

    :cond_0
    return-void
.end method
