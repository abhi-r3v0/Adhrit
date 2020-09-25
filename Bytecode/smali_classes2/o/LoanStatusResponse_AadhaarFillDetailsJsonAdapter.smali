.class public final Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile extraCallback:Z = false

.field static final onNavigationEvent:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;


# instance fields
.field private final onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/LoanStatusResponse_AadhaarCaptchaJsonAdapter;",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->extraCallback()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->ICustomTabsCallback:Ljava/lang/Class;

    new-instance v0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;-><init>(Z)V

    sput-object v0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onNavigationEvent:Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage:Ljava/util/Map;

    return-void
.end method

.method private static extraCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.Extension"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static onPostMessage()Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;
    .locals 1

    invoke-static {}, Lo/LoanStatusResponseJsonAdapter;->onPostMessage()Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/LoanSummary$Details;I)Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/LoanSummary$Details;",
            ">(TContainingType;I)",
            "Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady<",
            "TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse_AadhaarFillDetailsJsonAdapter;->onPostMessage:Ljava/util/Map;

    new-instance v1, Lo/LoanStatusResponse_AadhaarCaptchaJsonAdapter;

    invoke-direct {v1, p1, p2}, Lo/LoanStatusResponse_AadhaarCaptchaJsonAdapter;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LoanStatusResponse_EmiScheduleJsonAdapter$onMessageChannelReady;

    return-object p1
.end method
