.class public final Lo/ImageCustomJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getInterest_rate;


# static fields
.field private static final extraCallback:[B


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final asInterface:Lo/ExitIntentJsonAdapter;

.field private final onMessageChannelReady:Lo/LendingTriggerResponse;

.field private final onNavigationEvent:Lo/LendingAutoDebitResponseJsonAdapter;

.field private final onPostMessage:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lo/ImageCustomJsonAdapter;->extraCallback:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lo/LendingTriggerResponse;Lo/ExitIntentJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lo/LendingAutoDebitResponse;->onNavigationEvent(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lo/LendingAutoDebitResponseJsonAdapter;

    invoke-direct {v0, p1}, Lo/LendingAutoDebitResponseJsonAdapter;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lo/ImageCustomJsonAdapter;->onNavigationEvent:Lo/LendingAutoDebitResponseJsonAdapter;

    iput-object p2, p0, Lo/ImageCustomJsonAdapter;->onPostMessage:[B

    iput-object p3, p0, Lo/ImageCustomJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/ImageCustomJsonAdapter;->onMessageChannelReady:Lo/LendingTriggerResponse;

    iput-object p5, p0, Lo/ImageCustomJsonAdapter;->asInterface:Lo/ExitIntentJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lo/ImageCustomJsonAdapter;->onNavigationEvent:Lo/LendingAutoDebitResponseJsonAdapter;

    iget-object v1, p0, Lo/ImageCustomJsonAdapter;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/ImageCustomJsonAdapter;->onPostMessage:[B

    iget-object v3, p0, Lo/ImageCustomJsonAdapter;->asInterface:Lo/ExitIntentJsonAdapter;

    invoke-interface {v3}, Lo/ExitIntentJsonAdapter;->extraCallback()I

    move-result v4

    iget-object v5, p0, Lo/ImageCustomJsonAdapter;->onMessageChannelReady:Lo/LendingTriggerResponse;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lo/LendingAutoDebitResponseJsonAdapter;->onNavigationEvent(Ljava/lang/String;[B[BILo/LendingTriggerResponse;)Lo/ExtraDetails_ExtraCtaJsonAdapter;

    move-result-object p2

    iget-object v0, p0, Lo/ImageCustomJsonAdapter;->asInterface:Lo/ExitIntentJsonAdapter;

    invoke-virtual {p2}, Lo/ExtraDetails_ExtraCtaJsonAdapter;->extraCallback()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ExitIntentJsonAdapter;->onPostMessage([B)Lo/getNo_of_breaks_in_amount;

    move-result-object v0

    sget-object v1, Lo/ImageCustomJsonAdapter;->extraCallback:[B

    invoke-interface {v0, p1, v1}, Lo/getNo_of_breaks_in_amount;->onPostMessage([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lo/ExtraDetails_ExtraCtaJsonAdapter;->onMessageChannelReady()[B

    move-result-object p2

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
