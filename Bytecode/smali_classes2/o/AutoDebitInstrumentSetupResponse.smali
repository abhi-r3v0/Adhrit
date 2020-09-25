.class final synthetic Lo/AutoDebitInstrumentSetupResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Footer$$Parcelable;


# static fields
.field static final onMessageChannelReady:Lo/Footer$$Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoDebitInstrumentSetupResponse;

    invoke-direct {v0}, Lo/AutoDebitInstrumentSetupResponse;-><init>()V

    sput-object v0, Lo/AutoDebitInstrumentSetupResponse;->onMessageChannelReady:Lo/Footer$$Parcelable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lorg/json/JSONObject;)Lo/PaymentModeListResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
