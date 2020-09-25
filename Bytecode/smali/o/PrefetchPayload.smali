.class final Lo/PrefetchPayload;
.super Ljava/lang/Object;

# interfaces
.implements Lo/InstrumentAttributeUpdateRequest;


# static fields
.field public static final onPostMessage:Lo/PrefetchPayload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/PrefetchPayload;

    invoke-direct {v0}, Lo/PrefetchPayload;-><init>()V

    sput-object v0, Lo/PrefetchPayload;->onPostMessage:Lo/PrefetchPayload;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/PaymentRequestJsonAdapter;)Ljava/lang/String;
    .locals 0

    .line 1000
    invoke-static {p1}, Lo/ViesPayPayload;->onPostMessage(Lo/PaymentRequestJsonAdapter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
