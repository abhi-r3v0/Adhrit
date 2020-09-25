.class final synthetic Lo/BankSmsResponseModelJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;


# static fields
.field static final extraCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/BankSmsResponseModelJsonAdapter;

    invoke-direct {v0}, Lo/BankSmsResponseModelJsonAdapter;-><init>()V

    sput-object v0, Lo/BankSmsResponseModelJsonAdapter;->extraCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/BankSmsAckRequest;->ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
