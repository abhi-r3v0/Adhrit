.class public final Lo/BankSmsAckRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/then;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/then<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final onNavigationEvent:Ljava/nio/charset/Charset;

.field private static final onPostMessage:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lo/BankSmsAckRequest;->onNavigationEvent:Ljava/nio/charset/Charset;

    new-instance v0, Lo/BankSmsResponseModel;

    invoke-direct {v0}, Lo/BankSmsResponseModel;-><init>()V

    sput-object v0, Lo/BankSmsAckRequest;->onMessageChannelReady:Lo/then;

    sget-object v0, Lo/BankSmsResponseModelJsonAdapter;->extraCallback:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    sput-object v0, Lo/BankSmsAckRequest;->onPostMessage:Lo/RentPaymentFragment$fetchRentOrderDetails$1$$special$$inlined$let$lambda$1$1;

    return-void
.end method

.method static final synthetic ICustomTabsCallback(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lo/BankSmsAckRequest;->onNavigationEvent:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
