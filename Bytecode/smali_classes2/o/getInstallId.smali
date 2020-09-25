.class final synthetic Lo/getInstallId;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# instance fields
.field private final onNavigationEvent:Lo/getVersionNumber;


# direct methods
.method constructor <init>(Lo/getVersionNumber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getInstallId;->onNavigationEvent:Lo/getVersionNumber;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/getInstallId;->onNavigationEvent:Lo/getVersionNumber;

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/getVersionNumber;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
